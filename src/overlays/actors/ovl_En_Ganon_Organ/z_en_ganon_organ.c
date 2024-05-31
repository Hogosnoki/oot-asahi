/*
 * File: z_en_ganon_organ.c
 * Overlay: ovl_En_Ganon_Organ
 * Description: The organ that Ganondorf plays in the cutscene before the fight. Includes carpet and scenery as well.
 */

#include "z_en_ganon_organ.h"
#include "overlays/actors/ovl_Boss_Ganon/z_boss_ganon.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EnGanonOrgan_Init(Actor* thisx, PlayState* play);
void EnGanonOrgan_Destroy(Actor* thisx, PlayState* play);
void EnGanonOrgan_Update(Actor* thisx, PlayState* play);
void EnGanonOrgan_Draw(Actor* thisx, PlayState* play);

ActorInit En_Ganon_Organ_InitVars = {
    /**/ ACTOR_EN_GANON_ORGAN,
    /**/ ACTORCAT_BOSS,
    /**/ FLAGS,
    /**/ OBJECT_GANON,
    /**/ sizeof(EnGanonOrgan),
    /**/ EnGanonOrgan_Init,
    /**/ EnGanonOrgan_Destroy,
    /**/ EnGanonOrgan_Update,
    /**/ EnGanonOrgan_Draw,
};

static u64 sForceAlignment = 0;

#include "assets/overlays/ovl_En_Ganon_Organ/ovl_En_Ganon_Organ.c"

void EnGanonOrgan_Init(Actor* thisx, PlayState* play) {
    thisx->flags &= ~ACTOR_FLAG_0;
}

void EnGanonOrgan_Destroy(Actor* thisx, PlayState* play) {
}

void EnGanonOrgan_Update(Actor* thisx, PlayState* play) {
    BossGanon* dorf;

    PRINTF2("ORGAN MOVE 1\n");
    if (thisx->params == 1) {
        dorf = (BossGanon*)thisx->parent;
        if (dorf->organAlpha == 0) {
            Actor_Kill(thisx);
        }
    }
    PRINTF2("ORGAN MOVE 2\n");
}

Gfx* EnGanonOrgan_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* displayList;

    displayList = GRAPH_ALLOC(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(displayList);
    return displayList;
}

Gfx* func_80A280BC(GraphicsContext* gfxCtx, BossGanon* dorf) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = GRAPH_ALLOC(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;
    gDPPipeSync(displayListHead++);
    if (1) {}
    if (1) {}
    gDPSetEnvColor(displayListHead++, 25, 20, 0, dorf->organAlpha);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead);
    return displayList;
}

Gfx* func_80A28148(GraphicsContext* gfxCtx, BossGanon* dorf) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = GRAPH_ALLOC(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;

    gDPPipeSync(displayListHead++);
    if (1) {}
    if (1) {}
    gDPSetEnvColor(displayListHead++, 0, 0, 0, dorf->organAlpha);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead);
    return displayList;
}

void EnGanonOrgan_Draw(Actor* thisx, PlayState* play) {
    BossGanon* dorf = (BossGanon*)thisx->parent;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ganon_organ.c", 205);

    PRINTF2("ORGAN DRAW  1\n");
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if ((thisx->params == 1) && (dorf->organAlpha != 255)) {
        gSPSegment(POLY_OPA_DISP++, 0x08, func_80A280BC(play->state.gfxCtx, dorf));
        gSPSegment(POLY_OPA_DISP++, 0x09, func_80A28148(play->state.gfxCtx, dorf));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnGanonOrgan_EmptyDList(play->state.gfxCtx));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnGanonOrgan_EmptyDList(play->state.gfxCtx));
    }
    Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_NEW);
    gSPMatrix(POLY_OPA_DISP++, MATRIX_NEW(play->state.gfxCtx, "../z_en_ganon_organ.c", 221),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, sRoomOrganAndFloorDL);
    gSPDisplayList(POLY_OPA_DISP++, sRoomStatuesDL);

    PRINTF2("ORGAN DRAW  2\n");

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ganon_organ.c", 230);
}
