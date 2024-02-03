/**
 * @file audio_thread_manager.c
 *
 * This file implements basic thread features for the audio driver. It manages updating the driver on vertical retrace
 * and sending the audio rsp tasks generated by the driver to the task scheduler.
 */

#include "global.h"

void AudioMgr_NotifyTaskDone(AudioMgr* audioMgr) {
    AudioTask* task = audioMgr->rspTask;

    // If the audio rsp task has a message queue to receive task done notifications, post a message to it.
    if (audioMgr->rspTask->msgQueue != NULL) {
        osSendMesg(task->msgQueue, NULL, OS_MESG_BLOCK);
    }
}

/**
 * Handle retrace event.
 * Update the audio driver and schedule audio rsp tasks.
 */
void AudioMgr_HandleRetrace(AudioMgr* audioMgr) {
    AudioTask* rspTask;

    if (R_AUDIOMGR_DEBUG_LEVEL > AUDIOMGR_DEBUG_LEVEL_NONE) {
        // Inhibit audio rsp task processing
        audioMgr->rspTask = NULL;
    }

    if (audioMgr->rspTask != NULL) {
        // Got an rsp task to process, build the OSScTask and forward it to the scheduler to run

        audioMgr->audioTask.next = NULL;
        audioMgr->audioTask.flags = OS_SC_NEEDS_RSP;
        audioMgr->audioTask.framebuffer = NULL;

        audioMgr->audioTask.list = audioMgr->rspTask->task;
        audioMgr->audioTask.msgQueue = &audioMgr->taskDoneQueue;

        audioMgr->audioTask.msg = NULL;
        osSendMesg(&audioMgr->sched->cmdQueue, (OSMesg)&audioMgr->audioTask, OS_MESG_BLOCK);
        Sched_Notify(audioMgr->sched);
    }

    // Update the audio driver

    if (IS_DEBUG && ENABLE_SPEEDMETER) {
        gAudioThreadUpdateTimeStart = osGetTime();
    }

    if (R_AUDIOMGR_DEBUG_LEVEL >= AUDIOMGR_DEBUG_LEVEL_NO_UPDATE) {
        // Skip update, no rsp task produced
        rspTask = NULL;
    } else {
        rspTask = AudioThread_Update();
    }

    if (IS_DEBUG && ENABLE_SPEEDMETER) {
        gAudioThreadUpdateTimeAcc += osGetTime() - gAudioThreadUpdateTimeStart;
        gAudioThreadUpdateTimeStart = 0;
    }

    if (audioMgr->rspTask != NULL) {
        // Wait for the audio rsp task scheduled on the previous retrace to complete. This looks like it should wait
        // for the task scheduled on the current retrace, earlier in this function, but since the queue is initially
        // filled in AudioMgr_Init this osRecvMesg call doesn't wait for the task scheduler to post a message for the
        // most recent task as there is already a message waiting.
        osRecvMesg(&audioMgr->taskDoneQueue, NULL, OS_MESG_BLOCK);
        // Report task done
        //! @bug As the above osRecvMesg is waiting for the previous task to complete rather than the current task,
        //! the task done notification is sent to the task done queue for the current task as soon as the previous task
        //! is completed, without waiting for the current task.
        //! In practice, task done notifications are not used by the audio driver so this is inconsequential.
        AudioMgr_NotifyTaskDone(audioMgr);
    }
    // Update rsp task to be scheduled on next retrace
    audioMgr->rspTask = rspTask;
}

/**
 * Handle Pre-NMI event.
 * Implemented by the audio driver.
 *
 * @see Audio_PreNMI
 */
void AudioMgr_HandlePreNMI(AudioMgr* audioMgr) {
    // "Audio manager received OS_SC_PRE_NMI_MSG"
    PRINTF("オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました\n");
    Audio_PreNMI();
}

void AudioMgr_ThreadEntry(void* arg) {
    AudioMgr* audioMgr = (AudioMgr*)arg;
    IrqMgrClient irqClient;
    s16* msg = NULL;

    // "Start running audio manager thread"
    PRINTF("オーディオマネージャスレッド実行開始\n");

    // Initialize audio driver
    Audio_Init();
    AudioLoad_SetDmaHandler(DmaMgr_AudioDmaHandler);
    Audio_InitSound();

    // Fill init queue to signal that the audio driver is initialized
    osSendMesg(&audioMgr->initQueue, NULL, OS_MESG_BLOCK);

    IrqMgr_AddClient(audioMgr->irqMgr, &irqClient, &audioMgr->interruptQueue);

    // Spin waiting for events
    while (true) {
        osRecvMesg(&audioMgr->interruptQueue, (OSMesg*)&msg, OS_MESG_BLOCK);

        switch (*msg) {
            case OS_SC_RETRACE_MSG:
                AudioMgr_HandleRetrace(audioMgr);

                // Empty the interrupt queue
                while (!MQ_IS_EMPTY(&audioMgr->interruptQueue)) {
                    osRecvMesg(&audioMgr->interruptQueue, (OSMesg*)&msg, OS_MESG_BLOCK);

                    switch (*msg) {
                        case OS_SC_RETRACE_MSG:
                            // Don't process a retrace more than once in quick succession
                            break;

                        case OS_SC_PRE_NMI_MSG:
                            // Always handle Pre-NMI
                            AudioMgr_HandlePreNMI(audioMgr);
                            break;
                    }
                }
                break;

            case OS_SC_PRE_NMI_MSG:
                AudioMgr_HandlePreNMI(audioMgr);
                break;
        }
    }
}

/**
 * Stalls the current thread until the audio thread is sufficiently initialized.
 *
 * Note this function only works once. After the first call the message that the audio thread posted to the init queue
 * will have been removed, subsequent calls to this function will block indefinitely as the audio thread does not refill
 * the queue.
 */
void AudioMgr_WaitForInit(AudioMgr* audioMgr) {
    osRecvMesg(&audioMgr->initQueue, NULL, OS_MESG_BLOCK);
}

void AudioMgr_Init(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, Scheduler* sched, IrqMgr* irqMgr) {
    bzero(audioMgr, sizeof(AudioMgr));

    audioMgr->sched = sched;
    audioMgr->irqMgr = irqMgr;
    audioMgr->rspTask = NULL;

    osCreateMesgQueue(&audioMgr->taskDoneQueue, &audioMgr->taskDoneMsg, 1);
    osCreateMesgQueue(&audioMgr->interruptQueue, audioMgr->interruptMsgBuf, ARRAY_COUNT(audioMgr->interruptMsgBuf));
    osCreateMesgQueue(&audioMgr->initQueue, &audioMgr->initMsg, 1);

    // Send a message to the task done queue so it is initially full
    osSendMesg(&audioMgr->taskDoneQueue, NULL, OS_MESG_BLOCK);

    osCreateThread(&audioMgr->thread, id, AudioMgr_ThreadEntry, audioMgr, stack, pri);
    osStartThread(&audioMgr->thread);
}
