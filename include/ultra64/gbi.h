#include "mbi.h"

#ifndef ULTRA64_GBI_H
#define ULTRA64_GBI_H

#include "config.h"

#if ENABLE_F3DEX3
    #define REQUIRE_SEMICOLONS_AFTER_GBI_COMMANDS
    #if ENABLE_F3DEX3_NOSYNCS
        #define NO_SYNCS_IN_TEXTURE_LOADS
    #endif
    #include "gbi.f3dex3.h"
#else

#ifdef GBI_DOWHILE
/* Private macro to wrap other macros in do {...} while (0) */
#define _DW(macro) do { macro } while (0)
#else
#define _DW(macro) { macro } (void)0
#endif

/* To enable Fast3DEX grucode support, define F3DEX_GBI. */

/* Types */

#ifdef    F3DEX_GBI_2
# ifndef  F3DEX_GBI
#  define F3DEX_GBI
# endif
#define G_NOOP              0x00
#define G_RDPHALF_2         0xF1
#define G_SETOTHERMODE_H    0xE3
#define G_SETOTHERMODE_L    0xE2
#define G_RDPHALF_1         0xE1
#define G_SPNOOP            0xE0
#define G_ENDDL             0xDF
#define G_DL                0xDE
#define G_LOAD_UCODE        0xDD
#define G_MOVEMEM           0xDC
#define G_MOVEWORD          0xDB
#define G_MTX               0xDA
#define G_GEOMETRYMODE      0xD9
#define G_POPMTX            0xD8
#define G_TEXTURE           0xD7
#define G_DMA_IO            0xD6
#define G_SPECIAL_1         0xD5
#define G_SPECIAL_2         0xD4
#define G_SPECIAL_3         0xD3

#define G_VTX               0x01
#define G_MODIFYVTX         0x02
#define G_CULLDL            0x03
#define G_BRANCH_Z          0x04
#define G_TRI1              0x05
#define G_TRI2              0x06
#define G_QUAD              0x07
#define G_LINE3D            0x08
#else   /* F3DEX_GBI_2 */

/* DMA commands: */
#define G_SPNOOP            0   /* handle 0 gracefully */
#define G_MTX               1
#define G_RESERVED0         2   /* not implemeted */
#define G_MOVEMEM           3   /* move a block of memory (up to 4 words) to dmem */
#define G_VTX               4
#define G_RESERVED1         5   /* not implemeted */
#define G_DL                6
#define G_RESERVED2         7   /* not implemeted */
#define G_RESERVED3         8   /* not implemeted */
#define G_SPRITE2D_BASE     9   /* sprite command */

/* IMMEDIATE commands: */
#define G_IMMFIRST              -0x41
#define G_TRI1                  (G_IMMFIRST-0)
#define G_CULLDL                (G_IMMFIRST-1)
#define G_POPMTX                (G_IMMFIRST-2)
#define G_MOVEWORD              (G_IMMFIRST-3)
#define G_TEXTURE               (G_IMMFIRST-4)
#define G_SETOTHERMODE_H        (G_IMMFIRST-5)
#define G_SETOTHERMODE_L        (G_IMMFIRST-6)
#define G_ENDDL                 (G_IMMFIRST-7)
#define G_SETGEOMETRYMODE       (G_IMMFIRST-8)
#define G_CLEARGEOMETRYMODE     (G_IMMFIRST-9)
#define G_LINE3D                (G_IMMFIRST-10)
#define G_RDPHALF_1             (G_IMMFIRST-11)
#define G_RDPHALF_2             (G_IMMFIRST-12)
#if (defined(F3DEX_GBI) || defined(F3DLP_GBI))
# define G_MODIFYVTX            (G_IMMFIRST-13)
# define G_TRI2                 (G_IMMFIRST-14)
# define G_BRANCH_Z             (G_IMMFIRST-15)
# define G_LOAD_UCODE           (G_IMMFIRST-16)
#else
# define G_RDPHALF_CONT         (G_IMMFIRST-13)
#endif

/* We are overloading 2 of the immediate commands
   to keep the byte alignment of dmem the same */

#define G_SPRITE2D_SCALEFLIP    (G_IMMFIRST-1)
#define G_SPRITE2D_DRAW         (G_IMMFIRST-2)

/* RDP commands: */
#define G_NOOP              0xC0    /*   0 */

#endif  /* F3DEX_GBI_2 */

/* RDP commands: */
#define G_SETCIMG           0xFF    /*  -1 */
#define G_SETZIMG           0xFE    /*  -2 */
#define G_SETTIMG           0xFD    /*  -3 */
#define G_SETCOMBINE        0xFC    /*  -4 */
#define G_SETENVCOLOR       0xFB    /*  -5 */
#define G_SETPRIMCOLOR      0xFA    /*  -6 */
#define G_SETBLENDCOLOR     0xF9    /*  -7 */
#define G_SETFOGCOLOR       0xF8    /*  -8 */
#define G_SETFILLCOLOR      0xF7    /*  -9 */
#define G_FILLRECT          0xF6    /* -10 */
#define G_SETTILE           0xF5    /* -11 */
#define G_LOADTILE          0xF4    /* -12 */
#define G_LOADBLOCK         0xF3    /* -13 */
#define G_SETTILESIZE       0xF2    /* -14 */
#define G_LOADTLUT          0xF0    /* -16 */
#define G_RDPSETOTHERMODE   0xEF    /* -17 */
#define G_SETPRIMDEPTH      0xEE    /* -18 */
#define G_SETSCISSOR        0xED    /* -19 */
#define G_SETCONVERT        0xEC    /* -20 */
#define G_SETKEYR           0xEB    /* -21 */
#define G_SETKEYGB          0xEA    /* -22 */
#define G_RDPFULLSYNC       0xE9    /* -23 */
#define G_RDPTILESYNC       0xE8    /* -24 */
#define G_RDPPIPESYNC       0xE7    /* -25 */
#define G_RDPLOADSYNC       0xE6    /* -26 */
#define G_TEXRECTFLIP       0xE5    /* -27 */
#define G_TEXRECT           0xE4    /* -28 */


/*
 * The following commands are the "generated" RDP commands; the user
 * never sees them, the RSP microcode generates them.
 *
 * The layout of the bits is magical, to save work in the ucode.
 * These id's are -56, -52, -54, -50, -55, -51, -53, -49, ...
 *                                      edge, shade, texture, zbuff bits:  estz
 */
#define G_TRI_FILL              0xC8    /* fill triangle:            11001000 */
#define G_TRI_SHADE             0xCC    /* shade triangle:           11001100 */
#define G_TRI_TXTR              0xCA    /* texture triangle:         11001010 */
#define G_TRI_SHADE_TXTR        0xCE    /* shade, texture triangle:  11001110 */
#define G_TRI_FILL_ZBUFF        0xC9    /* fill, zbuff triangle:     11001001 */
#define G_TRI_SHADE_ZBUFF       0xCD    /* shade, zbuff triangle:    11001101 */
#define G_TRI_TXTR_ZBUFF        0xCB    /* texture, zbuff triangle:  11001011 */
#define G_TRI_SHADE_TXTR_ZBUFF  0xCF    /* shade, txtr, zbuff trngl: 11001111 */

/*
 * A TRI_FILL triangle is just the edges. You need to set the DP
 * to use primcolor, in order to see anything. (it is NOT a triangle
 * that gets rendered in 'fill mode'. Triangles can't be rendered
 * in 'fill mode')
 *
 * A TRI_SHADE is a gouraud triangle that has colors interpolated.
 * Flat-shaded triangles (from the software) are still gouraud shaded,
 * it's just the colors are all the same and the deltas are 0.
 *
 * Other triangle types, and combinations are more obvious.
 */

/* masks to build RDP triangle commands: */
#define G_RDP_TRI_FILL_MASK     0x08
#define G_RDP_TRI_SHADE_MASK    0x04
#define G_RDP_TRI_TXTR_MASK     0x02
#define G_RDP_TRI_ZBUFF_MASK    0x01

/*
 * HACK:
 * This is a dreadful hack. For version 1.0 hardware, there are still
 * some 'bowtie' hangs. This parameter can be increased to avoid
 * the hangs. Every increase of 4 chops one scanline off of every
 * triangle. Values of 4,8,12 should be sufficient to avoid any
 * bowtie hang.
 *
 * Change this value, then recompile ALL of your program (including static
 * display lists!)
 *
 * THIS WILL BE REMOVED FOR HARDWARE VERSION 2.0!
 */
#define BOWTIE_VAL  0


/* gets added to RDP command, in order to test for addres fixup: */
#define G_RDP_ADDR_FIXUP    3   /* |RDP cmds| <= this, do addr fixup */
#ifdef _LANGUAGE_ASSEMBLY
#define G_RDP_TEXRECT_CHECK ((-1 * G_TEXRECTFLIP) & 0xFF)
#endif

/* macros for command parsing: */
#define GDMACMD(x)      (x)
#define GIMMCMD(x)      (G_IMMFIRST - (x))
#define GRDPCMD(x)      (0xFF - (x))

#define G_DMACMDSIZ     128
#define G_IMMCMDSIZ     64
#define G_RDPCMDSIZ     64

/*
 * Coordinate shift values, number of bits of fraction
 */
#define G_TEXTURE_IMAGE_FRAC    2
#define G_TEXTURE_SCALE_FRAC    16
#define G_SCALE_FRAC            8
#define G_ROTATE_FRAC           16

/*
 * Parameters to graphics commands
 */

/*
 * Data packing macros
 */

/*
 * Maximum z-buffer value, used to initialize the z-buffer.
 * Note : this number is NOT the viewport z-scale constant.
 * See the comment next to G_MAXZ for more info.
 */
#define G_MAXFBZ    0x3FFF  /* 3b exp, 11b mantissa */

#define GPACK_RGBA5551(r, g, b, a) \
        ((((r) << 8) & 0xF800) |   \
         (((g) << 3) & 0x07C0) |   \
         (((b) >> 2) & 0x003E) |   \
          ((a) & 1))

#define GPACK_IA16(i, a)    (((i) << 8) | (a))

#define GPACK_ZDZ(z, dz)    (((z) << 2) | (dz))

/*
 * G_MTX: parameter flags
 */
#ifdef  F3DEX_GBI_2
# define G_MTX_MODELVIEW    0x00    /* matrix types */
# define G_MTX_PROJECTION   0x04
# define G_MTX_MUL          0x00    /* concat or load */
# define G_MTX_LOAD         0x02
# define G_MTX_NOPUSH       0x00    /* push or not */
# define G_MTX_PUSH         0x01
#else   /* F3DEX_GBI_2 */
# define G_MTX_MODELVIEW    0x00    /* matrix types */
# define G_MTX_PROJECTION   0x01
# define G_MTX_MUL          0x00    /* concat or load */
# define G_MTX_LOAD         0x02
# define G_MTX_NOPUSH       0x00    /* push or not */
# define G_MTX_PUSH         0x04
#endif  /* F3DEX_GBI_2 */

/*
 * flags for G_SETGEOMETRYMODE
 * (this rendering state is maintained in RSP)
 *
 * DO NOT USE THE LOW 8 BITS OF GEOMETRYMODE:
 * The weird bit-ordering is for the micro-code: the lower byte
 * can be OR'd in with G_TRI_SHADE (11001100) to construct
 * the triangle command directly. Don't break it...
 *
 * DO NOT USE THE HIGH 8 BITS OF GEOMETRYMODE:
 * The high byte is OR'd with 0x703 to form the clip code mask.
 * If it is set to 0x04, this will cause near clipping to occur.
 * If it is zero, near clipping will not occur.
 *
 * Further explanation:
 * G_SHADE is necessary in order to see the color that you passed
 * down with the vertex. If G_SHADE isn't set, you need to set the DP
 * appropriately and use primcolor to see anything.
 *
 * G_SHADING_SMOOTH enabled means use all 3 colors of the triangle.
 * If it is not set, then do 'flat shading', where only one vertex color
 * is used (and all 3 vertices are set to that same color by the ucode)
 * See the man page for gSP1Triangle().
 *
 */
#define G_ZBUFFER               0x00000001
#define G_SHADE                 0x00000004  /* enable Gouraud interp */
/* rest of low byte reserved for setup ucode */
#ifdef  F3DEX_GBI_2
# define G_TEXTURE_ENABLE       0x00000000  /* Ignored               */
# define G_SHADING_SMOOTH       0x00200000  /* flat or smooth shaded */
# define G_CULL_FRONT           0x00000200
# define G_CULL_BACK            0x00000400
# define G_CULL_BOTH            0x00000600  /* To make code cleaner */
#else
# define G_TEXTURE_ENABLE       0x00000002  /* Microcode use only */
# define G_SHADING_SMOOTH       0x00000200  /* flat or smooth shaded */
# define G_CULL_FRONT           0x00001000
# define G_CULL_BACK            0x00002000
# define G_CULL_BOTH            0x00003000  /* To make code cleaner */
#endif
#define G_FOG                   0x00010000
#define G_LIGHTING              0x00020000
#define G_TEXTURE_GEN           0x00040000
#define G_TEXTURE_GEN_LINEAR    0x00080000
#define G_LOD                   0x00100000  /* NOT IMPLEMENTED */
#ifdef F3DEX_GBI_PL
# define G_LIGHTING_POSITIONAL  0x00400000
#endif
#if (defined(F3DEX_GBI) || defined(F3DLP_GBI))
# define G_CLIPPING             0x00800000
#else
# define G_CLIPPING             0x00000000
#endif

#ifdef _LANGUAGE_ASSEMBLY
# define G_FOG_H                    (G_FOG/0x10000)
# define G_LIGHTING_H               (G_LIGHTING/0x10000)
# define G_TEXTURE_GEN_H            (G_TEXTURE_GEN/0x10000)
# define G_TEXTURE_GEN_LINEAR_H     (G_TEXTURE_GEN_LINEAR/0x10000)
# define G_LOD_H                    (G_LOD/0x10000) /* NOT IMPLEMENTED */
# ifdef F3DEX_GBI_PL
#  define G_LIGHTING_POSITIONAL_H   (G_LIGHTING_POSITIONAL/0x10000)
# endif
# if (defined(F3DEX_GBI) || defined(F3DLP_GBI))
#  define G_CLIPPING_H              (G_CLIPPING/0x10000)
# endif
#endif

/* Need these defined for Sprite Microcode */
#ifdef _LANGUAGE_ASSEMBLY
#define G_TX_LOADTILE   7
#define G_TX_RENDERTILE 0

#define G_TX_NOMIRROR   (0 << 0)
#define G_TX_WRAP       (0 << 1)
#define G_TX_MIRROR     (1 << 0)
#define G_TX_CLAMP      (1 << 1)
#define G_TX_NOMASK     0
#define G_TX_NOLOD      0
#endif

/*
 * G_SETIMG fmt: set image formats
 */
#define G_IM_FMT_RGBA   0
#define G_IM_FMT_YUV    1
#define G_IM_FMT_CI     2
#define G_IM_FMT_IA     3
#define G_IM_FMT_I      4

/*
 * G_SETIMG siz: set image pixel size
 */
#define G_IM_SIZ_4b     0
#define G_IM_SIZ_8b     1
#define G_IM_SIZ_16b    2
#define G_IM_SIZ_32b    3
#define G_IM_SIZ_DD     5

#define G_IM_SIZ_4b_BYTES       0
#define G_IM_SIZ_4b_TILE_BYTES  G_IM_SIZ_4b_BYTES
#define G_IM_SIZ_4b_LINE_BYTES  G_IM_SIZ_4b_BYTES

#define G_IM_SIZ_8b_BYTES       1
#define G_IM_SIZ_8b_TILE_BYTES  G_IM_SIZ_8b_BYTES
#define G_IM_SIZ_8b_LINE_BYTES  G_IM_SIZ_8b_BYTES

#define G_IM_SIZ_16b_BYTES      2
#define G_IM_SIZ_16b_TILE_BYTES G_IM_SIZ_16b_BYTES
#define G_IM_SIZ_16b_LINE_BYTES G_IM_SIZ_16b_BYTES

#define G_IM_SIZ_32b_BYTES      4
#define G_IM_SIZ_32b_TILE_BYTES 2
#define G_IM_SIZ_32b_LINE_BYTES 2

#define G_IM_SIZ_4b_LOAD_BLOCK  G_IM_SIZ_16b
#define G_IM_SIZ_8b_LOAD_BLOCK  G_IM_SIZ_16b
#define G_IM_SIZ_16b_LOAD_BLOCK G_IM_SIZ_16b
#define G_IM_SIZ_32b_LOAD_BLOCK G_IM_SIZ_32b

#define G_IM_SIZ_4b_SHIFT  2
#define G_IM_SIZ_8b_SHIFT  1
#define G_IM_SIZ_16b_SHIFT 0
#define G_IM_SIZ_32b_SHIFT 0

#define G_IM_SIZ_4b_INCR  3
#define G_IM_SIZ_8b_INCR  1
#define G_IM_SIZ_16b_INCR 0
#define G_IM_SIZ_32b_INCR 0

/*
 * G_SETCOMBINE: color combine modes
 */
/* Color combiner constants: */
#define G_CCMUX_COMBINED        0
#define G_CCMUX_TEXEL0          1
#define G_CCMUX_TEXEL1          2
#define G_CCMUX_PRIMITIVE       3
#define G_CCMUX_SHADE           4
#define G_CCMUX_ENVIRONMENT     5
#define G_CCMUX_CENTER          6
#define G_CCMUX_SCALE           6
#define G_CCMUX_COMBINED_ALPHA  7
#define G_CCMUX_TEXEL0_ALPHA    8
#define G_CCMUX_TEXEL1_ALPHA    9
#define G_CCMUX_PRIMITIVE_ALPHA 10
#define G_CCMUX_SHADE_ALPHA     11
#define G_CCMUX_ENV_ALPHA       12
#define G_CCMUX_LOD_FRACTION    13
#define G_CCMUX_PRIM_LOD_FRAC   14
#define G_CCMUX_NOISE           7
#define G_CCMUX_K4              7
#define G_CCMUX_K5              15
#define G_CCMUX_1               6
#define G_CCMUX_0               31

/* Alpha combiner constants: */
#define G_ACMUX_COMBINED        0
#define G_ACMUX_TEXEL0          1
#define G_ACMUX_TEXEL1          2
#define G_ACMUX_PRIMITIVE       3
#define G_ACMUX_SHADE           4
#define G_ACMUX_ENVIRONMENT     5
#define G_ACMUX_LOD_FRACTION    0
#define G_ACMUX_PRIM_LOD_FRAC   6
#define G_ACMUX_1               6
#define G_ACMUX_0               7

/* typical CC cycle 1 modes */
#define G_CC_PRIMITIVE              0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE
#define G_CC_SHADE                  0, 0, 0, SHADE, 0, 0, 0, SHADE
#define G_CC_MODULATEI              TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE
#define G_CC_MODULATEIA             TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0
#define G_CC_MODULATEIDECALA        TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0
#define G_CC_MODULATERGB            G_CC_MODULATEI
#define G_CC_MODULATERGBA           G_CC_MODULATEIA
#define G_CC_MODULATERGBDECALA      G_CC_MODULATEIDECALA
#define G_CC_MODULATEI_PRIM         TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE
#define G_CC_MODULATEIA_PRIM        TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0
#define G_CC_MODULATEIDECALA_PRIM   TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, TEXEL0
#define G_CC_MODULATERGB_PRIM       G_CC_MODULATEI_PRIM
#define G_CC_MODULATERGBA_PRIM      G_CC_MODULATEIA_PRIM
#define G_CC_MODULATERGBDECALA_PRIM G_CC_MODULATEIDECALA_PRIM
#define G_CC_DECALRGB               0, 0, 0, TEXEL0, 0, 0, 0, SHADE
#define G_CC_DECALRGBA              0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0
#define G_CC_BLENDI                 ENVIRONMENT, SHADE, TEXEL0, SHADE, 0, 0, 0, SHADE
#define G_CC_BLENDIA                ENVIRONMENT, SHADE, TEXEL0, SHADE, TEXEL0, 0, SHADE, 0
#define G_CC_BLENDIDECALA           ENVIRONMENT, SHADE, TEXEL0, SHADE, 0, 0, 0, TEXEL0
#define G_CC_BLENDRGBA              TEXEL0, SHADE, TEXEL0_ALPHA, SHADE, 0, 0, 0, SHADE
#define G_CC_BLENDRGBDECALA         TEXEL0, SHADE, TEXEL0_ALPHA, SHADE, 0, 0, 0, TEXEL0
#define G_CC_ADDRGB                 1, 0, TEXEL0, SHADE, 0, 0, 0, SHADE
#define G_CC_ADDRGBDECALA           1, 0, TEXEL0, SHADE, 0, 0, 0, TEXEL0
#define G_CC_REFLECTRGB             ENVIRONMENT, 0, TEXEL0, SHADE, 0, 0, 0, SHADE
#define G_CC_REFLECTRGBDECALA       ENVIRONMENT, 0, TEXEL0, SHADE, 0, 0, 0, TEXEL0
#define G_CC_HILITERGB              PRIMITIVE, SHADE, TEXEL0, SHADE, 0, 0, 0, SHADE
#define G_CC_HILITERGBA             PRIMITIVE, SHADE, TEXEL0, SHADE, PRIMITIVE, SHADE, TEXEL0, SHADE
#define G_CC_HILITERGBDECALA        PRIMITIVE, SHADE, TEXEL0, SHADE, 0, 0, 0, TEXEL0
#define G_CC_SHADEDECALA            0, 0, 0, SHADE, 0, 0, 0, TEXEL0
#define G_CC_BLENDPE                PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, SHADE, 0
#define G_CC_BLENDPEDECALA          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0

/* oddball modes */
#define _G_CC_BLENDPE               ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, SHADE, 0
#define _G_CC_BLENDPEDECALA         ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, 0, 0, 0, TEXEL0
#define _G_CC_TWOCOLORTEX           PRIMITIVE, SHADE, TEXEL0, SHADE, 0, 0, 0, SHADE
/* used for 1-cycle sparse mip-maps, primitive color has color of lowest LOD */
#define _G_CC_SPARSEST              PRIMITIVE, TEXEL0, LOD_FRACTION, TEXEL0, PRIMITIVE, TEXEL0, LOD_FRACTION, TEXEL0
#define G_CC_TEMPLERP               TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0

/* typical CC cycle 1 modes, usually followed by other cycle 2 modes */
#define G_CC_TRILERP                TEXEL1, TEXEL0, LOD_FRACTION, TEXEL0, TEXEL1, TEXEL0, LOD_FRACTION, TEXEL0
#define G_CC_INTERFERENCE           TEXEL0, 0, TEXEL1, 0, TEXEL0, 0, TEXEL1, 0

/*
 *  One-cycle color convert operation
 */
#define G_CC_1CYUV2RGB              TEXEL0, K4, K5, TEXEL0, 0, 0, 0, SHADE

/*
 *  NOTE: YUV2RGB expects TF step1 color conversion to occur in 2nd clock.
 * Therefore, CC looks for step1 results in TEXEL1
 */
#define G_CC_YUV2RGB                TEXEL1, K4, K5, TEXEL1, 0, 0, 0, 0

/* typical CC cycle 2 modes */
#define G_CC_PASS2                  0, 0, 0, COMBINED, 0, 0, 0, COMBINED
#define G_CC_MODULATEI2             COMBINED, 0, SHADE, 0, 0, 0, 0, SHADE
#define G_CC_MODULATEIA2            COMBINED, 0, SHADE, 0, COMBINED, 0, SHADE, 0
#define G_CC_MODULATERGB2           G_CC_MODULATEI2
#define G_CC_MODULATERGBA2          G_CC_MODULATEIA2
#define G_CC_MODULATEI_PRIM2        COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE
#define G_CC_MODULATEIA_PRIM2       COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0
#define G_CC_MODULATERGB_PRIM2      G_CC_MODULATEI_PRIM2
#define G_CC_MODULATERGBA_PRIM2     G_CC_MODULATEIA_PRIM2
#define G_CC_DECALRGB2              0, 0, 0, COMBINED, 0, 0, 0, SHADE
/*
 * ?
#define G_CC_DECALRGBA2             COMBINED, SHADE, COMBINED_ALPHA, SHADE, 0, 0, 0, SHADE
*/
#define G_CC_BLENDI2                ENVIRONMENT, SHADE, COMBINED, SHADE, 0, 0, 0, SHADE
#define G_CC_BLENDIA2               ENVIRONMENT, SHADE, COMBINED, SHADE, COMBINED, 0, SHADE, 0
#define G_CC_CHROMA_KEY2            TEXEL0, CENTER, SCALE, 0, 0, 0, 0, 0
#define G_CC_HILITERGB2             ENVIRONMENT, COMBINED, TEXEL0, COMBINED, 0, 0, 0, SHADE
#define G_CC_HILITERGBA2            ENVIRONMENT, COMBINED, TEXEL0, COMBINED, ENVIRONMENT, COMBINED, TEXEL0, COMBINED
#define G_CC_HILITERGBDECALA2       ENVIRONMENT, COMBINED, TEXEL0, COMBINED, 0, 0, 0, TEXEL0
#define G_CC_HILITERGBPASSA2        ENVIRONMENT, COMBINED, TEXEL0, COMBINED, 0, 0, 0, COMBINED

/*
 * G_SETOTHERMODE_L sft: shift count
 */
#define G_MDSFT_ALPHACOMPARE    0
#define G_MDSFT_ZSRCSEL         2
#define G_MDSFT_RENDERMODE      3
#define G_MDSFT_BLENDER         16

/*
 * G_SETOTHERMODE_H sft: shift count
 */
#define G_MDSFT_BLENDMASK       0   /* unsupported */
#define G_MDSFT_ALPHADITHER     4
#define G_MDSFT_RGBDITHER       6

#define G_MDSFT_COMBKEY         8
#define G_MDSFT_TEXTCONV        9
#define G_MDSFT_TEXTFILT        12
#define G_MDSFT_TEXTLUT         14
#define G_MDSFT_TEXTLOD         16
#define G_MDSFT_TEXTDETAIL      17
#define G_MDSFT_TEXTPERSP       19
#define G_MDSFT_CYCLETYPE       20
#define G_MDSFT_COLORDITHER     22  /* unsupported in HW 2.0 */
#define G_MDSFT_PIPELINE        23

/* G_SETOTHERMODE_H gPipelineMode */
#define G_PM_1PRIMITIVE     (1 << G_MDSFT_PIPELINE)
#define G_PM_NPRIMITIVE     (0 << G_MDSFT_PIPELINE)

/* G_SETOTHERMODE_H gSetCycleType */
#define G_CYC_1CYCLE        (0 << G_MDSFT_CYCLETYPE)
#define G_CYC_2CYCLE        (1 << G_MDSFT_CYCLETYPE)
#define G_CYC_COPY          (2 << G_MDSFT_CYCLETYPE)
#define G_CYC_FILL          (3 << G_MDSFT_CYCLETYPE)

/* G_SETOTHERMODE_H gSetTexturePersp */
#define G_TP_NONE           (0 << G_MDSFT_TEXTPERSP)
#define G_TP_PERSP          (1 << G_MDSFT_TEXTPERSP)

/* G_SETOTHERMODE_H gSetTextureDetail */
#define G_TD_CLAMP          (0 << G_MDSFT_TEXTDETAIL)
#define G_TD_SHARPEN        (1 << G_MDSFT_TEXTDETAIL)
#define G_TD_DETAIL         (2 << G_MDSFT_TEXTDETAIL)

/* G_SETOTHERMODE_H gSetTextureLOD */
#define G_TL_TILE           (0 << G_MDSFT_TEXTLOD)
#define G_TL_LOD            (1 << G_MDSFT_TEXTLOD)

/* G_SETOTHERMODE_H gSetTextureLUT */
#define G_TT_NONE           (0 << G_MDSFT_TEXTLUT)
#define G_TT_RGBA16         (2 << G_MDSFT_TEXTLUT)
#define G_TT_IA16           (3 << G_MDSFT_TEXTLUT)

/* G_SETOTHERMODE_H gSetTextureFilter */
#define G_TF_POINT          (0 << G_MDSFT_TEXTFILT)
#define G_TF_AVERAGE        (3 << G_MDSFT_TEXTFILT)
#define G_TF_BILERP         (2 << G_MDSFT_TEXTFILT)

/* G_SETOTHERMODE_H gSetTextureConvert */
#define G_TC_CONV           (0 << G_MDSFT_TEXTCONV)
#define G_TC_FILTCONV       (5 << G_MDSFT_TEXTCONV)
#define G_TC_FILT           (6 << G_MDSFT_TEXTCONV)

/* G_SETOTHERMODE_H gSetCombineKey */
#define G_CK_NONE           (0 << G_MDSFT_COMBKEY)
#define G_CK_KEY            (1 << G_MDSFT_COMBKEY)

/* G_SETOTHERMODE_H gSetColorDither */
#define G_CD_MAGICSQ        (0 << G_MDSFT_RGBDITHER)
#define G_CD_BAYER          (1 << G_MDSFT_RGBDITHER)
#define G_CD_NOISE          (2 << G_MDSFT_RGBDITHER)

#ifndef _HW_VERSION_1
#define G_CD_DISABLE        (3 << G_MDSFT_RGBDITHER)
#define G_CD_ENABLE         G_CD_NOISE  /* HW 1.0 compatibility mode */
#else
#define G_CD_ENABLE         (1 << G_MDSFT_COLORDITHER)
#define G_CD_DISABLE        (0 << G_MDSFT_COLORDITHER)
#endif

/* G_SETOTHERMODE_H gSetAlphaDither */
#define G_AD_PATTERN        (0 << G_MDSFT_ALPHADITHER)
#define G_AD_NOTPATTERN     (1 << G_MDSFT_ALPHADITHER)
#define G_AD_NOISE          (2 << G_MDSFT_ALPHADITHER)
#define G_AD_DISABLE        (3 << G_MDSFT_ALPHADITHER)

/* G_SETOTHERMODE_L gSetAlphaCompare */
#define G_AC_NONE           (0 << G_MDSFT_ALPHACOMPARE)
#define G_AC_THRESHOLD      (1 << G_MDSFT_ALPHACOMPARE)
#define G_AC_DITHER         (3 << G_MDSFT_ALPHACOMPARE)

/* G_SETOTHERMODE_L gSetDepthSource */
#define G_ZS_PIXEL          (0 << G_MDSFT_ZSRCSEL)
#define G_ZS_PRIM           (1 << G_MDSFT_ZSRCSEL)

/* G_SETOTHERMODE_L gSetRenderMode */
#define AA_EN           0x0008
#define Z_CMP           0x0010
#define Z_UPD           0x0020
#define IM_RD           0x0040
#define CLR_ON_CVG      0x0080
#define CVG_DST_CLAMP   0x0000
#define CVG_DST_WRAP    0x0100
#define CVG_DST_FULL    0x0200
#define CVG_DST_SAVE    0x0300
#define ZMODE_OPA       0x0000
#define ZMODE_INTER     0x0400
#define ZMODE_XLU       0x0800
#define ZMODE_DEC       0x0C00
#define CVG_X_ALPHA     0x1000
#define ALPHA_CVG_SEL   0x2000
#define FORCE_BL        0x4000
#define TEX_EDGE        0x0000  /* used to be 0x8000 */

#define G_BL_CLR_IN     0
#define G_BL_CLR_MEM    1
#define G_BL_CLR_BL     2
#define G_BL_CLR_FOG    3
#define G_BL_1MA        0
#define G_BL_A_MEM      1
#define G_BL_A_IN       0
#define G_BL_A_FOG      1
#define G_BL_A_SHADE    2
#define G_BL_1          2
#define G_BL_0          3

#define GBL_c1(m1a, m1b, m2a, m2b)  \
    (m1a) << 30 | (m1b) << 26 | (m2a) << 22 | (m2b) << 18
#define GBL_c2(m1a, m1b, m2a, m2b)  \
    (m1a) << 28 | (m1b) << 24 | (m2a) << 20 | (m2b) << 16

#define RM_AA_ZB_OPA_SURF(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_RA_ZB_OPA_SURF(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | CVG_DST_CLAMP |                     \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_ZB_XLU_SURF(clk)                                  \
    AA_EN | Z_CMP | IM_RD | CVG_DST_WRAP | CLR_ON_CVG |         \
    FORCE_BL | ZMODE_XLU |                                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_OPA_DECAL(clk)                                 \
    AA_EN | Z_CMP | IM_RD | CVG_DST_WRAP | ALPHA_CVG_SEL |      \
    ZMODE_DEC |                                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_RA_ZB_OPA_DECAL(clk)                                 \
    AA_EN | Z_CMP | CVG_DST_WRAP | ALPHA_CVG_SEL |              \
    ZMODE_DEC |                                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_ZB_XLU_DECAL(clk)                                 \
    AA_EN | Z_CMP | IM_RD | CVG_DST_WRAP | CLR_ON_CVG |         \
    FORCE_BL | ZMODE_DEC |                                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_OPA_INTER(clk)                                 \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    ALPHA_CVG_SEL | ZMODE_INTER |                               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_RA_ZB_OPA_INTER(clk)                                 \
    AA_EN | Z_CMP | Z_UPD | CVG_DST_CLAMP |                     \
    ALPHA_CVG_SEL | ZMODE_INTER |                               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_ZB_XLU_INTER(clk)                                 \
    AA_EN | Z_CMP | IM_RD | CVG_DST_WRAP | CLR_ON_CVG |         \
    FORCE_BL | ZMODE_INTER |                                    \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_XLU_LINE(clk)                                  \
    AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | CVG_X_ALPHA |       \
    ALPHA_CVG_SEL | FORCE_BL | ZMODE_XLU |                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_DEC_LINE(clk)                                  \
    AA_EN | Z_CMP | IM_RD | CVG_DST_SAVE | CVG_X_ALPHA |        \
    ALPHA_CVG_SEL | FORCE_BL | ZMODE_DEC |                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_TEX_EDGE(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    CVG_X_ALPHA | ALPHA_CVG_SEL | ZMODE_OPA | TEX_EDGE |        \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_ZB_TEX_INTER(clk)                                 \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    CVG_X_ALPHA | ALPHA_CVG_SEL | ZMODE_INTER | TEX_EDGE |      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_ZB_SUB_SURF(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL |              \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_ZB_PCL_SURF(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    ZMODE_OPA | G_AC_DITHER |                                   \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_OPA_TERR(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_TEX_TERR(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP |             \
    CVG_X_ALPHA | ALPHA_CVG_SEL | ZMODE_OPA | TEX_EDGE |        \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_ZB_SUB_TERR(clk)                                  \
    AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL |              \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)


#define RM_AA_OPA_SURF(clk)                                     \
    AA_EN | IM_RD | CVG_DST_CLAMP |                             \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_RA_OPA_SURF(clk)                                     \
    AA_EN | CVG_DST_CLAMP |                                     \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_XLU_SURF(clk)                                     \
    AA_EN | IM_RD | CVG_DST_WRAP | CLR_ON_CVG | FORCE_BL |      \
    ZMODE_OPA |                                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_XLU_LINE(clk)                                     \
    AA_EN | IM_RD | CVG_DST_CLAMP | CVG_X_ALPHA |               \
    ALPHA_CVG_SEL | FORCE_BL | ZMODE_OPA |                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_DEC_LINE(clk)                                     \
    AA_EN | IM_RD | CVG_DST_FULL | CVG_X_ALPHA |                \
    ALPHA_CVG_SEL | FORCE_BL | ZMODE_OPA |                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_TEX_EDGE(clk)                                     \
    AA_EN | IM_RD | CVG_DST_CLAMP |                             \
    CVG_X_ALPHA | ALPHA_CVG_SEL | ZMODE_OPA | TEX_EDGE |        \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_SUB_SURF(clk)                                     \
    AA_EN | IM_RD | CVG_DST_FULL |                              \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_AA_PCL_SURF(clk)                                     \
    AA_EN | IM_RD | CVG_DST_CLAMP |                             \
    ZMODE_OPA | G_AC_DITHER |                                   \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_OPA_TERR(clk)                                     \
    AA_EN | IM_RD | CVG_DST_CLAMP |                             \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_TEX_TERR(clk)                                     \
    AA_EN | IM_RD | CVG_DST_CLAMP |                             \
    CVG_X_ALPHA | ALPHA_CVG_SEL | ZMODE_OPA | TEX_EDGE |        \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_AA_SUB_TERR(clk)                                     \
    AA_EN | IM_RD | CVG_DST_FULL |                              \
    ZMODE_OPA | ALPHA_CVG_SEL |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)


#define RM_ZB_OPA_SURF(clk)                                     \
    Z_CMP | Z_UPD | CVG_DST_FULL | ALPHA_CVG_SEL |              \
    ZMODE_OPA |                                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_ZB_XLU_SURF(clk)                                     \
    Z_CMP | IM_RD | CVG_DST_FULL | FORCE_BL | ZMODE_XLU |       \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_ZB_OPA_DECAL(clk)                                    \
    Z_CMP | CVG_DST_FULL | ALPHA_CVG_SEL | ZMODE_DEC |          \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)

#define RM_ZB_XLU_DECAL(clk)                                    \
    Z_CMP | IM_RD | CVG_DST_FULL | FORCE_BL | ZMODE_DEC |       \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_ZB_CLD_SURF(clk)                                     \
    Z_CMP | IM_RD | CVG_DST_SAVE | FORCE_BL | ZMODE_XLU |       \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_ZB_OVL_SURF(clk)                                     \
    Z_CMP | IM_RD | CVG_DST_SAVE | FORCE_BL | ZMODE_DEC |       \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_ZB_PCL_SURF(clk)                                     \
    Z_CMP | Z_UPD | CVG_DST_FULL | ZMODE_OPA |                  \
    G_AC_DITHER |                                               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1)


#define RM_OPA_SURF(clk)                                        \
    CVG_DST_CLAMP | FORCE_BL | ZMODE_OPA |                      \
    GBL_c##clk(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1)

#define RM_XLU_SURF(clk)                                        \
    IM_RD | CVG_DST_FULL | FORCE_BL | ZMODE_OPA |               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_TEX_EDGE(clk)                                        \
    CVG_DST_CLAMP | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL |    \
    ZMODE_OPA | TEX_EDGE | AA_EN |                              \
    GBL_c##clk(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1)

#define RM_CLD_SURF(clk)                                        \
    IM_RD | CVG_DST_SAVE | FORCE_BL | ZMODE_OPA |               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

#define RM_PCL_SURF(clk)                                        \
    CVG_DST_FULL | FORCE_BL | ZMODE_OPA |                       \
    G_AC_DITHER |                                               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1)

#define RM_ADD(clk)                                             \
    IM_RD | CVG_DST_SAVE | FORCE_BL | ZMODE_OPA |               \
    GBL_c##clk(G_BL_CLR_IN, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_1)

#define RM_NOOP(clk)    \
    GBL_c##clk(0, 0, 0, 0)

#define RM_VISCVG(clk)                                          \
    IM_RD | FORCE_BL |                                          \
    GBL_c##clk(G_BL_CLR_IN, G_BL_0, G_BL_CLR_BL, G_BL_A_MEM)

/* for rendering to an 8-bit framebuffer */
#define RM_OPA_CI(clk)                                          \
    CVG_DST_CLAMP | ZMODE_OPA |                                 \
    GBL_c##clk(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1)



#define G_RM_AA_ZB_OPA_SURF     RM_AA_ZB_OPA_SURF(1)
#define G_RM_AA_ZB_OPA_SURF2    RM_AA_ZB_OPA_SURF(2)
#define G_RM_AA_ZB_XLU_SURF     RM_AA_ZB_XLU_SURF(1)
#define G_RM_AA_ZB_XLU_SURF2    RM_AA_ZB_XLU_SURF(2)
#define G_RM_AA_ZB_OPA_DECAL    RM_AA_ZB_OPA_DECAL(1)
#define G_RM_AA_ZB_OPA_DECAL2   RM_AA_ZB_OPA_DECAL(2)
#define G_RM_AA_ZB_XLU_DECAL    RM_AA_ZB_XLU_DECAL(1)
#define G_RM_AA_ZB_XLU_DECAL2   RM_AA_ZB_XLU_DECAL(2)
#define G_RM_AA_ZB_OPA_INTER    RM_AA_ZB_OPA_INTER(1)
#define G_RM_AA_ZB_OPA_INTER2   RM_AA_ZB_OPA_INTER(2)
#define G_RM_AA_ZB_XLU_INTER    RM_AA_ZB_XLU_INTER(1)
#define G_RM_AA_ZB_XLU_INTER2   RM_AA_ZB_XLU_INTER(2)
#define G_RM_AA_ZB_XLU_LINE     RM_AA_ZB_XLU_LINE(1)
#define G_RM_AA_ZB_XLU_LINE2    RM_AA_ZB_XLU_LINE(2)
#define G_RM_AA_ZB_DEC_LINE     RM_AA_ZB_DEC_LINE(1)
#define G_RM_AA_ZB_DEC_LINE2    RM_AA_ZB_DEC_LINE(2)
#define G_RM_AA_ZB_TEX_EDGE     RM_AA_ZB_TEX_EDGE(1)
#define G_RM_AA_ZB_TEX_EDGE2    RM_AA_ZB_TEX_EDGE(2)
#define G_RM_AA_ZB_TEX_INTER    RM_AA_ZB_TEX_INTER(1)
#define G_RM_AA_ZB_TEX_INTER2   RM_AA_ZB_TEX_INTER(2)
#define G_RM_AA_ZB_SUB_SURF     RM_AA_ZB_SUB_SURF(1)
#define G_RM_AA_ZB_SUB_SURF2    RM_AA_ZB_SUB_SURF(2)
#define G_RM_AA_ZB_PCL_SURF     RM_AA_ZB_PCL_SURF(1)
#define G_RM_AA_ZB_PCL_SURF2    RM_AA_ZB_PCL_SURF(2)
#define G_RM_AA_ZB_OPA_TERR     RM_AA_ZB_OPA_TERR(1)
#define G_RM_AA_ZB_OPA_TERR2    RM_AA_ZB_OPA_TERR(2)
#define G_RM_AA_ZB_TEX_TERR     RM_AA_ZB_TEX_TERR(1)
#define G_RM_AA_ZB_TEX_TERR2    RM_AA_ZB_TEX_TERR(2)
#define G_RM_AA_ZB_SUB_TERR     RM_AA_ZB_SUB_TERR(1)
#define G_RM_AA_ZB_SUB_TERR2    RM_AA_ZB_SUB_TERR(2)

#define G_RM_RA_ZB_OPA_SURF     RM_RA_ZB_OPA_SURF(1)
#define G_RM_RA_ZB_OPA_SURF2    RM_RA_ZB_OPA_SURF(2)
#define G_RM_RA_ZB_OPA_DECAL    RM_RA_ZB_OPA_DECAL(1)
#define G_RM_RA_ZB_OPA_DECAL2   RM_RA_ZB_OPA_DECAL(2)
#define G_RM_RA_ZB_OPA_INTER    RM_RA_ZB_OPA_INTER(1)
#define G_RM_RA_ZB_OPA_INTER2   RM_RA_ZB_OPA_INTER(2)

#define G_RM_AA_OPA_SURF    RM_AA_OPA_SURF(1)
#define G_RM_AA_OPA_SURF2   RM_AA_OPA_SURF(2)
#define G_RM_AA_XLU_SURF    RM_AA_XLU_SURF(1)
#define G_RM_AA_XLU_SURF2   RM_AA_XLU_SURF(2)
#define G_RM_AA_XLU_LINE    RM_AA_XLU_LINE(1)
#define G_RM_AA_XLU_LINE2   RM_AA_XLU_LINE(2)
#define G_RM_AA_DEC_LINE    RM_AA_DEC_LINE(1)
#define G_RM_AA_DEC_LINE2   RM_AA_DEC_LINE(2)
#define G_RM_AA_TEX_EDGE    RM_AA_TEX_EDGE(1)
#define G_RM_AA_TEX_EDGE2   RM_AA_TEX_EDGE(2)
#define G_RM_AA_SUB_SURF    RM_AA_SUB_SURF(1)
#define G_RM_AA_SUB_SURF2   RM_AA_SUB_SURF(2)
#define G_RM_AA_PCL_SURF    RM_AA_PCL_SURF(1)
#define G_RM_AA_PCL_SURF2   RM_AA_PCL_SURF(2)
#define G_RM_AA_OPA_TERR    RM_AA_OPA_TERR(1)
#define G_RM_AA_OPA_TERR2   RM_AA_OPA_TERR(2)
#define G_RM_AA_TEX_TERR    RM_AA_TEX_TERR(1)
#define G_RM_AA_TEX_TERR2   RM_AA_TEX_TERR(2)
#define G_RM_AA_SUB_TERR    RM_AA_SUB_TERR(1)
#define G_RM_AA_SUB_TERR2   RM_AA_SUB_TERR(2)

#define G_RM_RA_OPA_SURF    RM_RA_OPA_SURF(1)
#define G_RM_RA_OPA_SURF2   RM_RA_OPA_SURF(2)

#define G_RM_ZB_OPA_SURF    RM_ZB_OPA_SURF(1)
#define G_RM_ZB_OPA_SURF2   RM_ZB_OPA_SURF(2)
#define G_RM_ZB_XLU_SURF    RM_ZB_XLU_SURF(1)
#define G_RM_ZB_XLU_SURF2   RM_ZB_XLU_SURF(2)
#define G_RM_ZB_OPA_DECAL   RM_ZB_OPA_DECAL(1)
#define G_RM_ZB_OPA_DECAL2  RM_ZB_OPA_DECAL(2)
#define G_RM_ZB_XLU_DECAL   RM_ZB_XLU_DECAL(1)
#define G_RM_ZB_XLU_DECAL2  RM_ZB_XLU_DECAL(2)
#define G_RM_ZB_CLD_SURF    RM_ZB_CLD_SURF(1)
#define G_RM_ZB_CLD_SURF2   RM_ZB_CLD_SURF(2)
#define G_RM_ZB_OVL_SURF    RM_ZB_OVL_SURF(1)
#define G_RM_ZB_OVL_SURF2   RM_ZB_OVL_SURF(2)
#define G_RM_ZB_PCL_SURF    RM_ZB_PCL_SURF(1)
#define G_RM_ZB_PCL_SURF2   RM_ZB_PCL_SURF(2)

#define G_RM_OPA_SURF       RM_OPA_SURF(1)
#define G_RM_OPA_SURF2      RM_OPA_SURF(2)
#define G_RM_XLU_SURF       RM_XLU_SURF(1)
#define G_RM_XLU_SURF2      RM_XLU_SURF(2)
#define G_RM_CLD_SURF       RM_CLD_SURF(1)
#define G_RM_CLD_SURF2      RM_CLD_SURF(2)
#define G_RM_TEX_EDGE       RM_TEX_EDGE(1)
#define G_RM_TEX_EDGE2      RM_TEX_EDGE(2)
#define G_RM_PCL_SURF       RM_PCL_SURF(1)
#define G_RM_PCL_SURF2      RM_PCL_SURF(2)
#define G_RM_ADD            RM_ADD(1)
#define G_RM_ADD2           RM_ADD(2)
#define G_RM_NOOP           RM_NOOP(1)
#define G_RM_NOOP2          RM_NOOP(2)
#define G_RM_VISCVG         RM_VISCVG(1)
#define G_RM_VISCVG2        RM_VISCVG(2)
#define G_RM_OPA_CI         RM_OPA_CI(1)
#define G_RM_OPA_CI2        RM_OPA_CI(2)


#define G_RM_FOG_SHADE_A    GBL_c1(G_BL_CLR_FOG, G_BL_A_SHADE, G_BL_CLR_IN, G_BL_1MA)
#define G_RM_FOG_PRIM_A     GBL_c1(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_IN, G_BL_1MA)
#define G_RM_PASS           GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1)

/*
 * G_SETCONVERT: K0-5
 */
#define G_CV_K0     175
#define G_CV_K1     -43
#define G_CV_K2     -89
#define G_CV_K3     222
#define G_CV_K4     114
#define G_CV_K5     42

/*
 * G_SETSCISSOR: interlace mode
 */
#define G_SC_NON_INTERLACE  0
#define G_SC_ODD_INTERLACE  3
#define G_SC_EVEN_INTERLACE 2

/* flags to inhibit pushing of the display list (on branch) */
#define G_DL_PUSH       0
#define G_DL_NOPUSH     1

/*
 * BEGIN C-specific section: (typedef's)
 */
#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

/*
 * Data Structures
 *
 * NOTE:
 * The DMA transfer hardware requires 64-bit aligned, 64-bit multiple-
 * sized transfers. This important hardware optimization is unfortunately
 * reflected in the programming interface, with some structures
 * padded and alignment enforced.
 *
 * Since structures are aligned to the boundary of the "worst-case"
 * element, we can't depend on the C compiler to align things
 * properly.
 *
 * 64-bit structure alignment is enforced by wrapping structures with
 * unions that contain a dummy "long long int".  Why this works is
 * explained in the ANSI C Spec, or on page 186 of the second edition
 * of K&R, "The C Programming Language".
 *
 * The price we pay for this is a little awkwardness referencing the
 * structures through the union. There is no memory penalty, since
 * all the structures are at least 64-bits the dummy alignment field
 * does not increase the size of the union.
 *
 * Static initialization of these union structures works because
 * the ANSI C spec states that static initialization for unions
 * works by using the first union element. We put the dummy alignment
 * field last for this reason.
 *
 * (it's possible a newer 64-bit compiler from MIPS might make this
 * easier with a flag, but we can't wait for it...)
 *
 */

/*
 * Vertex (set up for use with colors)
 */
typedef struct Vtx_t {
    short          ob[3];   /* x, y, z */
    unsigned short flag;
    short          tc[2];   /* texture coord */
    unsigned char  cn[4];   /* color & alpha */
} Vtx_t;

/*
 * Vertex (set up for use with normals)
 */
typedef struct Vtx_tn {
    short          ob[3];   /* x, y, z */
    unsigned short flag;
    short          tc[2];   /* texture coord */
    signed char    n[3];    /* normal */
    unsigned char  a;       /* alpha  */
} Vtx_tn;

typedef union Vtx {
    Vtx_t  v;   /* Use this one for colors  */
    Vtx_tn n;   /* Use this one for normals */
    long long int force_structure_alignment;
} Vtx;

/*
 * Sprite structure
 */

typedef struct uSprite_t {
  void* SourceImagePointer;
  void* TlutPointer;
  short Stride;
  short SubImageWidth;
  short SubImageHeight;
  char  SourceImageType;
  char  SourceImageBitSize;
  short SourceImageOffsetS;
  short SourceImageOffsetT;
  /* 20 bytes for above */

  /* padding to bring structure size to 64 bit allignment */
  char  dummy[4];
} uSprite_t;

typedef union uSprite {
  uSprite_t s;

  /* Need to make sure this is 64 bit aligned */
  long long int force_structure_allignment[3];
} uSprite;

/*
 * Triangle face
 */
typedef struct Tri {
    unsigned char flag;
    unsigned char v[3];
} Tri;

/*
 * 4x4 matrix, fixed point s15.16 format.
 * First 8 words are integer portion of the 4x4 matrix
 * Last 8 words are the fraction portion of the 4x4 matrix
 */
typedef long int Mtx_t[4][4];
typedef union Mtx {
    Mtx_t   m;
    struct {
        u16 intPart[4][4];
        u16 fracPart[4][4];
    };
    long long int force_structure_alignment;
} Mtx;

#define IPART(x) (((s32)((x) * 0x10000) >> 16) & 0xFFFF)
#define FPART(x)  ((s32)((x) * 0x10000) & 0xFFFF)

#define gdSPDefMtx( \
        xx, xy, xz, xw, \
        yx, yy, yz, yw, \
        zx, zy, zz, zw, \
        wx, wy, wz, ww) \
    { { \
        (IPART(xx) << 16) | IPART(yx), \
        (IPART(zx) << 16) | IPART(wx), \
        (IPART(xy) << 16) | IPART(yy), \
        (IPART(zy) << 16) | IPART(wy), \
        (IPART(xz) << 16) | IPART(yz), \
        (IPART(zz) << 16) | IPART(wz), \
        (IPART(xw) << 16) | IPART(yw), \
        (IPART(zw) << 16) | IPART(ww), \
        (FPART(xx) << 16) | FPART(yx), \
        (FPART(zx) << 16) | FPART(wx), \
        (FPART(xy) << 16) | FPART(yy), \
        (FPART(zy) << 16) | FPART(wy), \
        (FPART(xz) << 16) | FPART(yz), \
        (FPART(zz) << 16) | FPART(wz), \
        (FPART(xw) << 16) | FPART(yw), \
        (FPART(zw) << 16) | FPART(ww), \
    } }

/*
 * Viewport
 */

/*
 *
 * This magic value is the maximum INTEGER z-range of the hardware
 * (there are also 16-bits of fraction, which are introduced during
 * any transformations). This is not just a good idea, it's the law.
 * Feeding the hardware eventual z-coordinates (after any transforms
 * or scaling) bigger than this, will not work.
 *
 * This number is DIFFERENT than G_MAXFBZ, which is the maximum value
 * you want to use to initialize the z-buffer.
 *
 * The reason these are different is mildly interesting, but too long
 * to explain here. It is basically the result of optimizations in the
 * hardware. A more generic API might hide this detail from the users,
 * but we don't have the ucode to do that...
 *
 */
#define G_MAXZ  0x03FF  /* 10 bits of integer screen-Z precision */

/*
 * The viewport structure elements have 2 bits of fraction, necessary
 * to accomodate the sub-pixel positioning scaling for the hardware.
 * This can also be exploited to handle odd-sized viewports.
 *
 * Accounting for these fractional bits, using the default projection
 * and viewing matrices, the viewport structure is initialized thusly:
 *
 *      (SCREEN_WD/2)*4, (SCREEN_HT/2)*4, G_MAXZ, 0,
 *      (SCREEN_WD/2)*4, (SCREEN_HT/2)*4, 0, 0,
 */
typedef struct Vp_t {
    short vscale[4];    /* scale, 2 bits fraction */
    short vtrans[4];    /* translate, 2 bits fraction */
    /* both the above arrays are padded to 64-bit boundary */
} Vp_t;

typedef union Vp {
    Vp_t vp;
    long long int force_structure_alignment;
} Vp;

/*
 * MOVEMEM indices
 *
 * Each of these indexes an entry in a dmem table
 * which points to a 1-4 word block of dmem in
 * which to store a 1-4 word DMA.
 *
 */
#ifdef  F3DEX_GBI_2
/* 0,4 are reserved by G_MTX */
# define G_MV_MMTX      2
# define G_MV_PMTX      6
# define G_MV_VIEWPORT  8
# define G_MV_LIGHT     10
# define G_MV_POINT     12
# define G_MV_MATRIX    14      /* NOTE: this is in moveword table */
# define G_MVO_LOOKATX  (0 * 24)
# define G_MVO_LOOKATY  (1 * 24)
# define G_MVO_L0       (2 * 24)
# define G_MVO_L1       (3 * 24)
# define G_MVO_L2       (4 * 24)
# define G_MVO_L3       (5 * 24)
# define G_MVO_L4       (6 * 24)
# define G_MVO_L5       (7 * 24)
# define G_MVO_L6       (8 * 24)
# define G_MVO_L7       (9 * 24)
#else   /* F3DEX_GBI_2 */
# define G_MV_VIEWPORT  0x80
# define G_MV_LOOKATY   0x82
# define G_MV_LOOKATX   0x84
# define G_MV_L0        0x86
# define G_MV_L1        0x88
# define G_MV_L2        0x8A
# define G_MV_L3        0x8C
# define G_MV_L4        0x8E
# define G_MV_L5        0x90
# define G_MV_L6        0x92
# define G_MV_L7        0x94
# define G_MV_TXTATT    0x96
# define G_MV_MATRIX_1  0x9E    /* NOTE: this is in moveword table */
# define G_MV_MATRIX_2  0x98
# define G_MV_MATRIX_3  0x9A
# define G_MV_MATRIX_4  0x9C
#endif  /* F3DEX_GBI_2 */

/*
 * MOVEWORD indices
 *
 * Each of these indexes an entry in a dmem table
 * which points to a word in dmem in dmem where
 * an immediate word will be stored.
 *
 */
#define G_MW_MATRIX         0x00    /* NOTE: also used by movemem */
#define G_MW_NUMLIGHT       0x02
#define G_MW_CLIP           0x04
#define G_MW_SEGMENT        0x06
#define G_MW_FOG            0x08
#define G_MW_LIGHTCOL       0x0A
#ifdef  F3DEX_GBI_2
# define G_MW_FORCEMTX      0x0C
#else   /* F3DEX_GBI_2 */
# define G_MW_POINTS        0x0C
#endif  /* F3DEX_GBI_2 */
#define G_MW_PERSPNORM      0x0E

/*
 * These are offsets from the address in the dmem table
 */
#define G_MWO_NUMLIGHT          0x00
#define G_MWO_CLIP_RNX          0x04
#define G_MWO_CLIP_RNY          0x0C
#define G_MWO_CLIP_RPX          0x14
#define G_MWO_CLIP_RPY          0x1C
#define G_MWO_SEGMENT_0         0x00
#define G_MWO_SEGMENT_1         0x01
#define G_MWO_SEGMENT_2         0x02
#define G_MWO_SEGMENT_3         0x03
#define G_MWO_SEGMENT_4         0x04
#define G_MWO_SEGMENT_5         0x05
#define G_MWO_SEGMENT_6         0x06
#define G_MWO_SEGMENT_7         0x07
#define G_MWO_SEGMENT_8         0x08
#define G_MWO_SEGMENT_9         0x09
#define G_MWO_SEGMENT_A         0x0A
#define G_MWO_SEGMENT_B         0x0B
#define G_MWO_SEGMENT_C         0x0C
#define G_MWO_SEGMENT_D         0x0D
#define G_MWO_SEGMENT_E         0x0E
#define G_MWO_SEGMENT_F         0x0F
#define G_MWO_FOG               0x00
#define G_MWO_aLIGHT_1          0x00
#define G_MWO_bLIGHT_1          0x04
#ifdef F3DEX_GBI_2
#define G_MWO_aLIGHT_2          0x18
#define G_MWO_bLIGHT_2          0x1C
#define G_MWO_aLIGHT_3          0x30
#define G_MWO_bLIGHT_3          0x34
#define G_MWO_aLIGHT_4          0x48
#define G_MWO_bLIGHT_4          0x4C
#define G_MWO_aLIGHT_5          0x60
#define G_MWO_bLIGHT_5          0x64
#define G_MWO_aLIGHT_6          0x78
#define G_MWO_bLIGHT_6          0x7C
#define G_MWO_aLIGHT_7          0x90
#define G_MWO_bLIGHT_7          0x94
#define G_MWO_aLIGHT_8          0xA8
#define G_MWO_bLIGHT_8          0xAC
#else
#define G_MWO_aLIGHT_2          0x20
#define G_MWO_bLIGHT_2          0x24
#define G_MWO_aLIGHT_3          0x40
#define G_MWO_bLIGHT_3          0x44
#define G_MWO_aLIGHT_4          0x60
#define G_MWO_bLIGHT_4          0x64
#define G_MWO_aLIGHT_5          0x80
#define G_MWO_bLIGHT_5          0x84
#define G_MWO_aLIGHT_6          0xA0
#define G_MWO_bLIGHT_6          0xA4
#define G_MWO_aLIGHT_7          0xC0
#define G_MWO_bLIGHT_7          0xC4
#define G_MWO_aLIGHT_8          0xE0
#define G_MWO_bLIGHT_8          0xE4
#endif
#define G_MWO_MATRIX_XX_XY_I    0x00
#define G_MWO_MATRIX_XZ_XW_I    0x04
#define G_MWO_MATRIX_YX_YY_I    0x08
#define G_MWO_MATRIX_YZ_YW_I    0x0C
#define G_MWO_MATRIX_ZX_ZY_I    0x10
#define G_MWO_MATRIX_ZZ_ZW_I    0x14
#define G_MWO_MATRIX_WX_WY_I    0x18
#define G_MWO_MATRIX_WZ_WW_I    0x1C
#define G_MWO_MATRIX_XX_XY_F    0x20
#define G_MWO_MATRIX_XZ_XW_F    0x24
#define G_MWO_MATRIX_YX_YY_F    0x28
#define G_MWO_MATRIX_YZ_YW_F    0x2C
#define G_MWO_MATRIX_ZX_ZY_F    0x30
#define G_MWO_MATRIX_ZZ_ZW_F    0x34
#define G_MWO_MATRIX_WX_WY_F    0x38
#define G_MWO_MATRIX_WZ_WW_F    0x3C
#define G_MWO_POINT_RGBA        0x10
#define G_MWO_POINT_ST          0x14
#define G_MWO_POINT_XYSCREEN    0x18
#define G_MWO_POINT_ZSCREEN     0x1C

/*
 * Light structure.
 *
 * Note: only directional (infinite) lights are currently supported.
 *
 * Note: the weird order is for the DMEM alignment benefit of
 * the microcode.
 *
 */

typedef struct Light_t {
    unsigned char col[3];   /* diffuse light value (rgba) */
    char          pad1;
    unsigned char colc[3];  /* copy of diffuse light value (rgba) */
    char          pad2;
    signed char   dir[3];   /* direction of light (normalized) */
    char          pad3;
} Light_t;

#ifdef F3DEX_GBI_PL
typedef struct PointLight_t {
    unsigned char col[3];   /* point light value (rgba) */
    unsigned char kc;       /* constant attenuation (> 0 indicates point light) */
    unsigned char colc[3];  /* copy of point light value (rgba) */
    unsigned char kl;       /* linear attenuation */
    short         pos[3];   /* world-space position of light */
    unsigned char kq;       /* quadratic attenuation */
} PointLight_t;
#endif

typedef struct Ambient_t {
    unsigned char col[3];   /* ambient light value (rgba) */
    char          pad1;
    unsigned char colc[3];  /* copy of ambient light value (rgba) */
    char          pad2;
} Ambient_t;

typedef struct Hilite_t {
    /* texture offsets for highlight 1/2 */
    int x1;
    int y1;
    int x2;
    int y2;
} Hilite_t;

typedef union Light {
    Light_t         l;
#ifdef F3DEX_GBI_PL
    PointLight_t    p;
#endif
    long long int force_structure_alignment[2];
} Light;

typedef union Ambient {
    Ambient_t l;
    long long int force_structure_alignment[1];
} Ambient;

typedef struct Lightsn {
    Ambient a;
    Light   l[7];
} Lightsn;

typedef struct Lights0 {
    Ambient a;
    Light   l[1];
} Lights0;

typedef struct Lights1 {
    Ambient a;
    Light   l[1];
} Lights1;

typedef struct Lights2 {
    Ambient a;
    Light   l[2];
} Lights2;

typedef struct Lights3 {
    Ambient a;
    Light   l[3];
} Lights3;

typedef struct Lights4 {
    Ambient a;
    Light   l[4];
} Lights4;

typedef struct Lights5 {
    Ambient a;
    Light   l[5];
} Lights5;

typedef struct Lights6 {
    Ambient a;
    Light   l[6];
} Lights6;

typedef struct Lights7 {
    Ambient a;
    Light   l[7];
} Lights7;

typedef struct LookAt {
    Light   l[2];
} LookAt;

typedef union Hilite {
    Hilite_t h;
    long int force_structure_alignment;
} Hilite;

#define gDefAmbient(r, g, b)    \
    {{                          \
        { (r), (g), (b) }, 0,   \
        { (r), (g), (b) }, 0,   \
    }}

#define gDefLight(r, g, b, x, y, z) \
    {{                              \
        { (r), (g), (b) }, 0,       \
        { (r), (g), (b) }, 0,       \
        { (x), (y), (z) }, 0,       \
    }}

#define gdSPDefLights0(ar, ag, ab)                  \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(0, 0, 0, 0, 0, 0),        \
            }                                       \
        }

#define gdSPDefLights1(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
            }                                       \
        }

#define gdSPDefLights2(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1,      \
                       r2, g2, b2, x2, y2, z2)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
                gDefLight(r2, g2, b2, x2, y2, z2),  \
            }                                       \
        }

#define gdSPDefLights3(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1,      \
                       r2, g2, b2, x2, y2, z2)      \
                       r3, g3, b3, x3, y3, z3)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
                gDefLight(r2, g2, b2, x2, y2, z2),  \
                gDefLight(r3, g3, b3, x3, y3, z3),  \
            }                                       \
        }

#define gdSPDefLights4(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1,      \
                       r2, g2, b2, x2, y2, z2,      \
                       r3, g3, b3, x3, y3, z3,      \
                       r4, g4, b4, x4, y4, z4)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
                gDefLight(r2, g2, b2, x2, y2, z2),  \
                gDefLight(r3, g3, b3, x3, y3, z3),  \
                gDefLight(r4, g4, b4, x4, y4, z4),  \
            }                                       \
        }

#define gdSPDefLights5(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1,      \
                       r2, g2, b2, x2, y2, z2,      \
                       r3, g3, b3, x3, y3, z3,      \
                       r4, g4, b4, x4, y4, z4)      \
                       r5, g5, b5, x5, y5, z5)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
                gDefLight(r2, g2, b2, x2, y2, z2),  \
                gDefLight(r3, g3, b3, x3, y3, z3),  \
                gDefLight(r4, g4, b4, x4, y4, z4),  \
                gDefLight(r5, g5, b5, x5, y5, z5),  \
            }                                       \
        }

#define gdSPDefLights6(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1,      \
                       r2, g2, b2, x2, y2, z2,      \
                       r3, g3, b3, x3, y3, z3,      \
                       r4, g4, b4, x4, y4, z4,      \
                       r5, g5, b5, x5, y5, z5,      \
                       r6, g6, b6, x6, y6, z6)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
                gDefLight(r2, g2, b2, x2, y2, z2),  \
                gDefLight(r3, g3, b3, x3, y3, z3),  \
                gDefLight(r4, g4, b4, x4, y4, z4),  \
                gDefLight(r5, g5, b5, x5, y5, z5),  \
                gDefLight(r6, g6, b6, x6, y6, z6),  \
            }                                       \
        }

#define gdSPDefLights7(ar, ag, ab,                  \
                       r1, g1, b1, x1, y1, z1,      \
                       r2, g2, b2, x2, y2, z2,      \
                       r3, g3, b3, x3, y3, z3,      \
                       r4, g4, b4, x4, y4, z4,      \
                       r5, g5, b5, x5, y5, z5,      \
                       r6, g6, b6, x6, y6, z6)      \
                       r7, g7, b7, x7, y7, z7)      \
        {                                           \
            gDefAmbient(ar, ag, ab),                \
            {                                       \
                gDefLight(r1, g1, b1, x1, y1, z1),  \
                gDefLight(r2, g2, b2, x2, y2, z2),  \
                gDefLight(r3, g3, b3, x3, y3, z3),  \
                gDefLight(r4, g4, b4, x4, y4, z4),  \
                gDefLight(r5, g5, b5, x5, y5, z5),  \
                gDefLight(r6, g6, b6, x6, y6, z6),  \
                gDefLight(r7, g7, b7, x7, y7, z7),  \
            }                                       \
        }

#ifdef F3DEX_GBI_PL

#define gDefPointLight(r, g, b, x, y, z, kc, kl, kq)    \
    {{                                                  \
        { (r1), (g1), (b1) }, (kc),                     \
        { (r1), (g1), (b1) }, (kl),                     \
        { (x1), (y1), (z1) }, (kq),                     \
    }}

#define gdSPDefPointLights0(ar, ag, ab)                     \
        {                                                   \
            gDefAmbient(ar, ag, ab),                        \
            {                                               \
                gDefPointLight(0, 0, 0, 0, 0, 0, 0, 0, 0),  \
            }                                               \
        }

#define gdSPDefPointLights1(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
            }                                                       \
        }

#define gdSPDefPointLights2(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1,     \
                            r2, g2, b2, x2, y2, z2, c2, l2, q2)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
                gDefPointLight(r2, g2, b2, x2, y2, z2, c2, l2, q2), \
            }                                                       \
        }

#define gdSPDefPointLights3(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1,     \
                            r2, g2, b2, x2, y2, z2, c2, l2, q2)     \
                            r3, g3, b3, x3, y3, z3, c3, l3, q3)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
                gDefPointLight(r2, g2, b2, x2, y2, z2, c2, l2, q2), \
                gDefPointLight(r3, g3, b3, x3, y3, z3, c3, l3, q3), \
            }                                                       \
        }

#define gdSPDefPointLights4(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1,     \
                            r2, g2, b2, x2, y2, z2, c2, l2, q2,     \
                            r3, g3, b3, x3, y3, z3, c3, l3, q3,     \
                            r4, g4, b4, x4, y4, z4, c4, l4, q4)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
                gDefPointLight(r2, g2, b2, x2, y2, z2, c2, l2, q2), \
                gDefPointLight(r3, g3, b3, x3, y3, z3, c3, l3, q3), \
                gDefPointLight(r4, g4, b4, x4, y4, z4, c4, l4, q4), \
            }                                                       \
        }

#define gdSPDefPointLights5(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1,     \
                            r2, g2, b2, x2, y2, z2, c2, l2, q2,     \
                            r3, g3, b3, x3, y3, z3, c3, l3, q3,     \
                            r4, g4, b4, x4, y4, z4, c4, l4, q4)     \
                            r5, g5, b5, x5, y5, z5, c5, l5, q5)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
                gDefPointLight(r2, g2, b2, x2, y2, z2, c2, l2, q2), \
                gDefPointLight(r3, g3, b3, x3, y3, z3, c3, l3, q3), \
                gDefPointLight(r4, g4, b4, x4, y4, z4, c4, l4, q4), \
                gDefPointLight(r5, g5, b5, x5, y5, z5, c5, l5, q5), \
            }                                                       \
        }

#define gdSPDefPointLights6(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1,     \
                            r2, g2, b2, x2, y2, z2, c2, l2, q2,     \
                            r3, g3, b3, x3, y3, z3, c3, l3, q3,     \
                            r4, g4, b4, x4, y4, z4, c4, l4, q4)     \
                            r5, g5, b5, x5, y5, z5, c5, l5, q5)     \
                            r6, g6, b6, x6, y6, z6, c6, l6, q6)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
                gDefPointLight(r2, g2, b2, x2, y2, z2, c2, l2, q2), \
                gDefPointLight(r3, g3, b3, x3, y3, z3, c3, l3, q3), \
                gDefPointLight(r4, g4, b4, x4, y4, z4, c4, l4, q4), \
                gDefPointLight(r5, g5, b5, x5, y5, z5, c5, l5, q5), \
                gDefPointLight(r6, g6, b6, x6, y6, z6, c6, l6, q6), \
            }                                                       \
        }

#define gdSPDefPointLights7(ar, ag, ab,                             \
                            r1, g1, b1, x1, y1, z1, c1, l1, q1,     \
                            r2, g2, b2, x2, y2, z2, c2, l2, q2,     \
                            r3, g3, b3, x3, y3, z3, c3, l3, q3,     \
                            r4, g4, b4, x4, y4, z4, c4, l4, q4,     \
                            r5, g5, b5, x5, y5, z5, c5, l5, q5,     \
                            r6, g6, b6, x6, y6, z6, c6, l6, q6)     \
                            r7, g7, b7, x7, y7, z7, c7, l7, q7)     \
        {                                                           \
            gDefAmbient(ar, ag, ab),                                \
            {                                                       \
                gDefPointLight(r1, g1, b1, x1, y1, z1, c1, l1, q1), \
                gDefPointLight(r2, g2, b2, x2, y2, z2, c2, l2, q2), \
                gDefPointLight(r3, g3, b3, x3, y3, z3, c3, l3, q3), \
                gDefPointLight(r4, g4, b4, x4, y4, z4, c4, l4, q4), \
                gDefPointLight(r5, g5, b5, x5, y5, z5, c5, l5, q5), \
                gDefPointLight(r6, g6, b6, x6, y6, z6, c6, l6, q6), \
                gDefPointLight(r7, g7, b7, x7, y7, z7, c7, l7, q7), \
            }                                                       \
        }

#endif

#define gdSPDefLookAt(rightx, righty, rightz, upx, upy, upz)    \
    {{                                                          \
        {{                                                      \
            {      0,      0,      0 }, 0,                      \
            {      0,      0,      0 }, 0,                      \
            { rightx, righty, rightz }, 0,                      \
        }},                                                     \
        {{                                                      \
            {   0, 128,   0 }, 0,                               \
            {   0, 128,   0 }, 0,                               \
            { upx, upy, upz }, 0,                               \
        }},                                                     \
    }}

typedef struct Gnoop {
    int          cmd  : 8;
    unsigned int type : 8;
    unsigned int len  : 16;
    union {
        // The exact form of this callback is intentionally left unspecified, a display list
        // parser may choose the return value and parameters so long as it is consistent.
        void       (*callback)();
        const char*  str;
        unsigned int u32;
        float        f32;
        void*        addr;
    } value;
} Gnoop;

/*
 *  Graphics DMA Packet
 */
typedef struct Gdma {
    int          cmd : 8;
    unsigned int par : 8;
    unsigned int len : 16;
    unsigned int addr;
} Gdma;

#ifdef F3DEX_GBI_2
typedef struct Gdma2 {
    int          cmd : 8;
    unsigned int len : 8;
    unsigned int ofs : 8;
    unsigned int par : 8;
    unsigned int addr;
} Gdma2;
#endif

/*
 *  Graphics Moveword Packet
 */
// Inaccurate for F3DEX2, offset and index are swapped
typedef struct Gmovewd {
    int          cmd    : 8;
    unsigned int offset : 16;
    unsigned int index  : 8;
    unsigned int data;
} Gmovewd;

/*
 *  Graphics Movemem Packet
 */
typedef struct Gmovemem {
    int          cmd    : 8;
    unsigned int size   : 8;
    unsigned int offset : 8;
    unsigned int index  : 8;
    unsigned int data;
} Gmovemem;

/*
 * Graphics Immediate Mode Packet types
 */
typedef struct Gtri {
    int cmd : 8;
    int pad : 24;
    Tri tri;
} Gtri;

#if (defined(F3DLP_GBI) || defined(F3DEX_GBI))
typedef struct Gtri2 {
    Tri tri1; /* flag is the command byte */
    Tri tri2;
} Gtri2;

typedef struct Gquad {
    Tri tri1; /* flag is the command byte */
    Tri tri2;
} Gquad;

typedef struct Gcull {
    int            cmd : 8;
    unsigned int   pad : 8;
    unsigned short vstart_x2;
    unsigned short pad2;
    unsigned short vend_x2;
} Gcull;
#endif

typedef struct Gsetprimdepth {
    int            cmd : 8;
    unsigned int   pad : 24;
    unsigned short z;
    unsigned short dz;
} Gsetprimdepth;

typedef struct Gpopmtx {
    int           cmd   : 8;
    int           pad1  : 24;
#ifdef F3DEX_GBI_2
    unsigned int  param;
#else
    int           pad2  : 24;
    unsigned char param : 8;
#endif
} Gpopmtx;

/*
 * typedef struct Gsegment {
 *      int     cmd:8;
 *      int     pad0:24;
 *      int     pad1:4;
 *      int     number:4;
 *      int     base:24;
 * } Gsegment;
 */
typedef struct Gsegment {
    int cmd      : 8;
    int pad0     : 8;
    int mw_index : 8;
    int number   : 8;
    int pad1     : 8;
    int base     : 24;
} Gsegment;

typedef struct GsetothermodeL {
    int          cmd  : 8;
    int          pad0 : 8;
    unsigned int sft  : 8;
    unsigned int len  : 8;
    unsigned int data : 32;
} GsetothermodeL;

typedef struct GsetothermodeH {
    int          cmd  : 8;
    int          pad0 : 8;
    unsigned int sft  : 8;
    unsigned int len  : 8;
    unsigned int data : 32;
} GsetothermodeH;

typedef struct Gtexture {
    unsigned char  cmd;
    unsigned char  lodscale;
#ifdef F3DEX_GBI_2
    unsigned char  pad   : 2;
    unsigned char  level : 3;
    unsigned char  tile  : 3;
#else
    unsigned char  tile;
#endif
    unsigned char  on;
    unsigned short s;
    unsigned short t;
} Gtexture;

typedef struct Gline3D {
    int           cmd : 8;
#ifdef F3DEX_GBI_2
    unsigned char v0;
    unsigned char v1;
    unsigned char wd;
    unsigned int  pad;
#else
    int pad : 24;
    Tri line;
#endif
} Gline3D;

typedef struct Gperspnorm {
    int       cmd  : 8;
    int       pad1 : 24;
    short int pad2;
    short int scale;
} Gperspnorm;


/*
 * RDP Packet types
 */
typedef struct Gsetimg {
    int          cmd : 8;
    unsigned int fmt : 3;
    unsigned int siz : 2;
    unsigned int pad : 7;
    unsigned int wd  : 12;  /* really only 10 bits, extra  */
    unsigned int dram;      /* to account for 1024  */
} Gsetimg;

typedef struct Gsetcombine {
    int          cmd : 8;
    // muxs0
    unsigned int a0  : 4;
    unsigned int c0  : 5;
    unsigned int Aa0 : 3;
    unsigned int Ac0 : 3;
    unsigned int a1  : 4;
    unsigned int c1  : 5;
    // muxs1
    unsigned int b0  : 4;
    unsigned int b1  : 4;
    unsigned int Aa1 : 3;
    unsigned int Ac1 : 3;
    unsigned int d0  : 3;
    unsigned int Ab0 : 3;
    unsigned int Ad0 : 3;
    unsigned int d1  : 3;
    unsigned int Ab1 : 3;
    unsigned int Ad1 : 3;
} Gsetcombine;

typedef struct Gsetcolor {
    int           cmd : 8;
    unsigned char pad;
    unsigned char prim_min_level;
    unsigned char prim_level;
    union {
        unsigned long color;
        struct {
            unsigned char r;
            unsigned char g;
            unsigned char b;
            unsigned char a;
        };
    };
} Gsetcolor;

typedef struct Gfillrect {
    int          cmd    : 8;
    int          x0     : 10;
    int          x0frac : 2;
    int          y0     : 10;
    int          y0frac : 2;
    unsigned int pad    : 8;
    int          x1     : 10;
    int          x1frac : 2;
    int          y1     : 10;
    int          y1frac : 2;
} Gfillrect;

typedef struct Gsettile {
    int          cmd     : 8;
    unsigned int fmt     : 3;
    unsigned int siz     : 2;
    unsigned int pad0    : 1;
    unsigned int line    : 9;
    unsigned int tmem    : 9;
    unsigned int pad1    : 5;
    unsigned int tile    : 3;
    unsigned int palette : 4;
    unsigned int ct      : 1;
    unsigned int mt      : 1;
    unsigned int maskt   : 4;
    unsigned int shiftt  : 4;
    unsigned int cs      : 1;
    unsigned int ms      : 1;
    unsigned int masks   : 4;
    unsigned int shifts  : 4;
} Gsettile;

typedef struct Gloadtile {
    int          cmd  : 8;
    unsigned int sl   : 12;
    unsigned int tl   : 12;
    int          pad  : 5;
    unsigned int tile : 3;
    unsigned int sh   : 12;
    unsigned int th   : 12;
} Gloadtile;

typedef Gloadtile Gloadblock;

typedef Gloadtile Gsettilesize;

typedef Gloadtile Gloadtlut;

typedef struct Gtexrect {
    unsigned int cmd  : 8;  /* command                      */
    unsigned int xl   : 12; /* X coordinate of upper left   */
    unsigned int yl   : 12; /* Y coordinate of upper left   */
    unsigned int pad1 : 5;  /* Padding                      */
    unsigned int tile : 3;  /* Tile descriptor index        */
    unsigned int xh   : 12; /* X coordinate of lower right  */
    unsigned int yh   : 12; /* Y coordinate of lower right  */
    unsigned int s    : 16; /* S texture coord at top left  */
    unsigned int t    : 16; /* T texture coord at top left  */
    unsigned int dsdx : 16; /* Change in S per change in X  */
    unsigned int dtdy : 16; /* Change in T per change in Y  */
} Gtexrect;

#define MakeTexRect(xh,yh,flip,tile,xl,yl,s,t,dsdx,dtdy)        \
    G_TEXRECT, xh, yh, 0, flip, 0, tile, xl, yl, s, t, dsdx, dtdy

/*
 * Textured rectangles are 128 bits not 64 bits
 */
typedef struct TexRect {
    unsigned long w0;
    unsigned long w1;
    unsigned long w2;
    unsigned long w3;
} TexRect;

#ifdef F3DEX_GBI_2
typedef struct Gvtx {
    int           cmd  : 8;
    unsigned int  pad  : 4;
    unsigned int  len  : 8; // n
    unsigned int  pad2 : 4;
    unsigned char par;      // v0
    unsigned int  addr;
} Gvtx;
#else
typedef Gdma Gvtx;
#endif

/*
 * Generic Gfx Packet
 */
typedef struct Gwords {
    unsigned int w0;
    unsigned int w1;
} Gwords;

/*
 * This union is the fundamental type of the display list.
 * It is, by law, exactly 64 bits in size.
 */
typedef union Gfx {
    Gwords          words;
    Gnoop           noop;
    Gdma            dma;
#ifdef F3DEX_GBI_2
    Gdma2           dma2;
#endif
    Gvtx            vtx;
    Gtri            tri;
#if (defined(F3DLP_GBI) || defined(F3DEX_GBI))
    Gtri2           tri2;
    Gquad           quad;
#endif
    Gline3D         line;
#if (defined(F3DLP_GBI) || defined(F3DEX_GBI))
    Gcull           cull;
#endif
    Gmovewd         movewd;
    Gmovemem        movemem;
    Gpopmtx         popmtx;
    Gsegment        segment;
    GsetothermodeH  setothermodeH;
    GsetothermodeL  setothermodeL;
    Gtexture        texture;
    Gperspnorm      perspnorm;
    Gsetimg         setimg;
    Gsetcombine     setcombine;
    Gsetcolor       setcolor;
    Gfillrect       fillrect;   /* use for setscissor also */
    Gsettile        settile;
    Gloadtile       loadtile;   /* use for loadblock also, th is dxt */
    Gsettilesize    settilesize;
    Gloadtlut       loadtlut;
    Gsetprimdepth   setprimdepth;
    long long int force_structure_alignment;
} Gfx;

/*
 * Macros to assemble the graphics display list
 */

/*
 * DMA macros
 */
#define gDma0p(pkt, c, s, l)                \
_DW({                                       \
    Gfx *_g = (Gfx *)(pkt);                 \
                                            \
    _g->words.w0 = (_SHIFTL((c), 24,  8) |  \
                    _SHIFTL((l),  0, 24));  \
    _g->words.w1 = (unsigned int)(s);       \
})

#define gsDma0p(c, s, l)    \
{                           \
   (_SHIFTL((c), 24,  8) |  \
    _SHIFTL((l),  0, 24)),  \
    (unsigned int)(s)       \
}

#define gDma1p(pkt, c, s, l, p)             \
_DW({                                       \
    Gfx *_g = (Gfx *)(pkt);                 \
                                            \
    _g->words.w0 = (_SHIFTL((c), 24,  8) |  \
                    _SHIFTL((p), 16,  8) |  \
                    _SHIFTL((l),  0, 16));  \
    _g->words.w1 = (unsigned int)(s);       \
})

#define gsDma1p(c, s, l, p) \
{                           \
   (_SHIFTL((c), 24,  8) |  \
    _SHIFTL((p), 16,  8) |  \
    _SHIFTL((l),  0, 16)),  \
    (unsigned int)(s)       \
}

#define gDma2p(pkt, c, adrs, len, idx, ofs)             \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL((c),             24, 8) |   \
                    _SHIFTL(((len) - 1) / 8, 19, 5) |   \
                    _SHIFTL((ofs) / 8,        8, 8) |   \
                    _SHIFTL((idx),            0, 8));   \
    _g->words.w1 = (unsigned int)(adrs);                \
})

#define gsDma2p(c, adrs, len, idx, ofs) \
{                                       \
   (_SHIFTL((c),             24, 8) |   \
    _SHIFTL(((len) - 1) / 8, 19, 5) |   \
    _SHIFTL((ofs) / 8,        8, 8) |   \
    _SHIFTL((idx),            0, 8)),   \
    (unsigned int)(adrs)                \
}

#define gSPNoOp(pkt)    gDma0p(pkt, G_SPNOOP, 0, 0)
#define gsSPNoOp()      gsDma0p(    G_SPNOOP, 0, 0)

#ifdef  F3DEX_GBI_2
# define    gSPMatrix(pkt, m, p)                                    \
        gDma2p((pkt),G_MTX, (m), sizeof(Mtx), (p) ^ G_MTX_PUSH, 0)
# define    gsSPMatrix(m, p)                                        \
        gsDma2p(     G_MTX, (m), sizeof(Mtx), (p) ^ G_MTX_PUSH, 0)
#else   /* F3DEX_GBI_2 */
# define    gSPMatrix(pkt, m, p)    gDma1p(pkt, G_MTX, m, sizeof(Mtx), p)
# define    gsSPMatrix(m, p)        gsDma1p(    G_MTX, m, sizeof(Mtx), p)
#endif  /* F3DEX_GBI_2 */

#if defined(F3DEX_GBI_2)
/*
 * F3DEX_GBI_2: G_VTX GBI format was changed.
 *
 *        +--------+----+---+---+----+------+-+
 *  G_VTX |  cmd:8 |0000|  n:8  |0000|v0+n:7|0|
 *        +-+---+--+----+---+---+----+------+-+
 *        | |seg|         address             |
 *        +-+---+-----------------------------+
 */
# define    gSPVertex(pkt, v, n, v0)                \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_VTX,      24, 8) |    \
                    _SHIFTL((n),        12, 8) |    \
                    _SHIFTL((v0) + (n),  1, 7));    \
    _g->words.w1 = (unsigned int)(v);               \
})

# define    gsSPVertex(v, n, v0)    \
{                                   \
   (_SHIFTL(G_VTX,      24, 8) |    \
    _SHIFTL((n),        12, 8) |    \
    _SHIFTL((v0) + (n),  1, 7)),    \
    (unsigned int)(v)               \
}
#elif   (defined(F3DEX_GBI) || defined(F3DLP_GBI))
/*
 * F3DEX_GBI: G_VTX GBI format was changed to support 64 vertice.
 *
 *        +--------+--------+------+----------+
 *  G_VTX |  cmd:8 |  v0:8  |  n:6 |length:10 |
 *        +-+---+--+--------+------+----------+
 *        | |seg|          address            |
 *        +-+---+-----------------------------+
 */
# define    gSPVertex(pkt, v, n, v0)                                                    \
                gDma1p((pkt), G_VTX, (v), ((n) << 10) | (sizeof(Vtx) * (n) - 1), (v0) * 2)
# define    gsSPVertex(v, n, v0)                                                        \
                gsDma1p(      G_VTX, (v), ((n) << 10) | (sizeof(Vtx) * (n) - 1), (v0) * 2)
#else
# define    gSPVertex(pkt, v, n, v0)                                                \
                gDma1p((pkt), G_VTX, (v), sizeof(Vtx) * (n), ((n) - 1) << 4 | (v0))
# define    gsSPVertex(v, n, v0)                                                    \
                gsDma1p(      G_VTX, (v), sizeof(Vtx) * (n), ((n) - 1) << 4 | (v0))
#endif


#ifdef  F3DEX_GBI_2
# define gSPViewport(pkt, v)                                        \
        gDma2p((pkt), G_MOVEMEM, (v), sizeof(Vp), G_MV_VIEWPORT, 0)
# define gsSPViewport(v)                                            \
        gsDma2p(      G_MOVEMEM, (v), sizeof(Vp), G_MV_VIEWPORT, 0)
#else   /* F3DEX_GBI_2 */
# define gSPViewport(pkt,v)                                         \
        gDma1p((pkt), G_MOVEMEM, (v), sizeof(Vp), G_MV_VIEWPORT)
# define gsSPViewport(v)                                            \
        gsDma1p(      G_MOVEMEM, (v), sizeof(Vp), G_MV_VIEWPORT)
#endif  /* F3DEX_GBI_2 */

#define gSPDisplayList(pkt,dl)  gDma1p(pkt, G_DL, dl, 0, G_DL_PUSH)
#define gsSPDisplayList(   dl)  gsDma1p(    G_DL, dl, 0, G_DL_PUSH)

#define gSPBranchList(pkt,dl)   gDma1p(pkt, G_DL, dl, 0, G_DL_NOPUSH)
#define gsSPBranchList(   dl)   gsDma1p(    G_DL, dl, 0, G_DL_NOPUSH)

#define gSPSprite2DBase(pkt, s) gDma1p(pkt, G_SPRITE2D_BASE, s, sizeof(uSprite), 0)
#define gsSPSprite2DBase(s)     gsDma1p(    G_SPRITE2D_BASE, s, sizeof(uSprite), 0)

/*
 * RSP short command (no DMA required) macros
 */
#define gImmp0(pkt, c)                  \
_DW({                                   \
    Gfx *_g = (Gfx *)(pkt);             \
                                        \
    _g->words.w0 = _SHIFTL((c), 24, 8); \
})

#define gsImmp0(c)      \
{                       \
    _SHIFTL((c), 24, 8) \
}

#define gImmp1(pkt, c, p0)              \
_DW({                                   \
    Gfx *_g = (Gfx *)(pkt);             \
                                        \
    _g->words.w0 = _SHIFTL((c), 24, 8); \
    _g->words.w1 = (unsigned int)(p0);  \
})

#define gsImmp1(c, p0)      \
{                           \
    _SHIFTL((c), 24, 8),    \
    (unsigned int)(p0)      \
}

#define gImmp2(pkt, c, p0, p1)              \
_DW({                                       \
    Gfx *_g = (Gfx *)(pkt);                 \
                                            \
    _g->words.w0 = _SHIFTL((c), 24, 8);     \
    _g->words.w1 = (_SHIFTL((p0), 16, 16) | \
                    _SHIFTL((p1),  8,  8)); \
})

#define gsImmp2(c, p0, p1)  \
{                           \
    _SHIFTL((c), 24, 8),    \
   (_SHIFTL((p0), 16, 16) | \
    _SHIFTL((p1),  8,  8))  \
}

#define gImmp3(pkt, c, p0, p1, p2)          \
_DW({                                       \
    Gfx *_g = (Gfx *)(pkt);                 \
                                            \
    _g->words.w0 = _SHIFTL((c), 24, 8);     \
    _g->words.w1 = (_SHIFTL((p0), 16, 16) | \
                    _SHIFTL((p1),  8,  8) | \
                    _SHIFTL((p2),  0,  8)); \
})

#define gsImmp3(c, p0, p1, p2)  \
{                               \
    _SHIFTL((c), 24, 8),        \
   (_SHIFTL((p0), 16, 16) |     \
    _SHIFTL((p1),  8,  8) |     \
    _SHIFTL((p2),  0,  8))      \
}

#define gImmp21(pkt, c, p0, p1, dat)        \
_DW({                                       \
    Gfx *_g = (Gfx *)(pkt);                 \
                                            \
    _g->words.w0 = (_SHIFTL((c),  24,  8) | \
                    _SHIFTL((p0),  8, 16) | \
                    _SHIFTL((p1),  0,  8)); \
    _g->words.w1 = (unsigned int) (dat);    \
})

#define gsImmp21(c, p0, p1, dat)    \
{                                   \
   (_SHIFTL((c),  24,  8) |         \
    _SHIFTL((p0),  8, 16) |         \
    _SHIFTL((p1),  0,  8)),         \
    (unsigned int) (dat)            \
}

#ifdef  F3DEX_GBI_2
#define gMoveWd(pkt, index, offset, data)           \
    gDma1p((pkt), G_MOVEWORD, data, offset, index)
#define gsMoveWd(    index, offset, data)           \
    gsDma1p(      G_MOVEWORD, data, offset, index)
#else   /* F3DEX_GBI_2 */
#define gMoveWd(pkt, index, offset, data)           \
    gImmp21((pkt), G_MOVEWORD, offset, index, data)
#define gsMoveWd(    index, offset, data)           \
    gsImmp21(      G_MOVEWORD, offset, index, data)
#endif  /* F3DEX_GBI_2 */

/* Sprite immediate macros, there is also a sprite dma macro above */

#define gSPSprite2DScaleFlip(pkt, sx, sy, fx, fy)                   \
_DW({                                                               \
    Gfx *_g = (Gfx *)(pkt);                                         \
                                                                    \
    _g->words.w0 = (_SHIFTL(G_SPRITE2D_SCALEFLIP, 24, 8) |          \
                    _SHIFTL((fx),                  8, 8) |          \
                    _SHIFTL((fy),                  0, 8));          \
    _g->words.w1 = (_SHIFTL((sx), 16, 16) |                         \
                    _SHIFTL((sy),  0, 16));                         \
})

#define gsSPSprite2DScaleFlip(sx, sy, fx, fy)   \
{                                               \
   (_SHIFTL(G_SPRITE2D_SCALEFLIP, 24, 8) |      \
    _SHIFTL((fx),                  8, 8) |      \
    _SHIFTL((fy),                  0, 8)),      \
   (_SHIFTL((sx), 16, 16) |                     \
    _SHIFTL((sy),  0, 16))                      \
}

#define gSPSprite2DDraw(pkt, px, py)                    \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_SPRITE2D_DRAW, 24, 8));   \
    _g->words.w1 = (_SHIFTL((px), 16, 16) |             \
                    _SHIFTL((py),  0, 16));             \
})

#define gsSPSprite2DDraw(px, py)        \
{                                       \
   (_SHIFTL(G_SPRITE2D_DRAW, 24, 8)),   \
   (_SHIFTL((px), 16, 16) |             \
    _SHIFTL((py),  0, 16))              \
}


/*
 * Note: the SP1Triangle() and line macros multiply the vertex indices
 * by 10, this is an optimization for the microcode.
 */
#if (defined(F3DLP_GBI) || defined(F3DEX_GBI))
#  define __gsSP1Triangle_w1(v0, v1, v2)    \
   (_SHIFTL((v0) * 2, 16, 8) |              \
    _SHIFTL((v1) * 2,  8, 8) |              \
    _SHIFTL((v2) * 2,  0, 8))

#  define __gsSP1Triangle_w1f(v0, v1, v2, flag)         \
   (((flag) == 0) ? __gsSP1Triangle_w1(v0, v1, v2) :    \
    ((flag) == 1) ? __gsSP1Triangle_w1(v1, v2, v0) :    \
                    __gsSP1Triangle_w1(v2, v0, v1))

#  define __gsSPLine3D_w1(v0, v1, wd)   \
   (_SHIFTL((v0) * 2, 16, 8) |          \
    _SHIFTL((v1) * 2,  8, 8) |          \
    _SHIFTL((wd),      0, 8))

#  define __gsSPLine3D_w1f(v0, v1, wd, flag)        \
   (((flag) == 0) ? __gsSPLine3D_w1(v0, v1, wd) :   \
                    __gsSPLine3D_w1(v1, v0, wd))

#  define __gsSP1Quadrangle_w1f(v0, v1, v2, v3, flag)   \
   (((flag) == 0) ? __gsSP1Triangle_w1(v0, v1, v2) :    \
    ((flag) == 1) ? __gsSP1Triangle_w1(v1, v2, v3) :    \
    ((flag) == 2) ? __gsSP1Triangle_w1(v2, v3, v0) :    \
                    __gsSP1Triangle_w1(v3, v0, v1))

#  define __gsSP1Quadrangle_w2f(v0, v1, v2, v3, flag)   \
   (((flag) == 0) ? __gsSP1Triangle_w1(v0, v2, v3) :    \
    ((flag) == 1) ? __gsSP1Triangle_w1(v1, v3, v0) :    \
    ((flag) == 2) ? __gsSP1Triangle_w1(v2, v0, v1) :    \
                    __gsSP1Triangle_w1(v3, v1, v2))
#else
#  define __gsSP1Triangle_w1f(v0, v1, v2, flag) \
   (_SHIFTL((flag),    24, 8) |                 \
    _SHIFTL((v0) * 10, 16, 8) |                 \
    _SHIFTL((v1) * 10,  8, 8) |                 \
    _SHIFTL((v2) * 10,  0, 8))

#  define __gsSPLine3D_w1f(v0, v1, wd, flag)    \
   (_SHIFTL((flag),    24, 8) |                 \
    _SHIFTL((v0) * 10, 16, 8) |                 \
    _SHIFTL((v1) * 10,  8, 8) |                 \
    _SHIFTL((wd),       0, 8))
#endif

#ifdef  F3DEX_GBI_2
/***
 ***  1 Triangle
 ***/
#define gSP1Triangle(pkt, v0, v1, v2, flag)                 \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = (_SHIFTL(G_TRI1, 24, 8) |                \
                    __gsSP1Triangle_w1f(v0, v1, v2, flag)); \
    _g->words.w1 = 0;                                       \
})
#define gsSP1Triangle(v0, v1, v2, flag)     \
{                                           \
   (_SHIFTL(G_TRI1, 24, 8) |                \
    __gsSP1Triangle_w1f(v0, v1, v2, flag)), \
    0                                       \
}

/***
 ***  Line
 ***/
#define gSPLine3D(pkt, v0, v1, flag)                    \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_LINE3D, 24, 8) |          \
                    __gsSPLine3D_w1f(v0, v1, 0, flag)); \
    _g->words.w1 = 0;                                   \
})
#define gsSPLine3D(v0, v1, flag)        \
{                                       \
   (_SHIFTL(G_LINE3D, 24, 8) |          \
    __gsSPLine3D_w1f(v0, v1, 0, flag)), \
    0                                   \
}

/***
 ***  LineW
 ***/
/* these macros are the same as SPLine3D, except they have an
 * additional parameter for width. The width is added to the "minimum"
 * thickness, which is 1.5 pixels. The units for width are in
 * half-pixel units, so a width of 1 translates to (.5 + 1.5) or
 * a 2.0 pixels wide line.
 */
#define gSPLineW3D(pkt, v0, v1, wd, flag)                   \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = (_SHIFTL(G_LINE3D, 24, 8) |              \
                    __gsSPLine3D_w1f(v0, v1, wd, flag));    \
    _g->words.w1 = 0;                                       \
})
#define gsSPLineW3D(v0, v1, wd, flag)       \
{                                           \
   (_SHIFTL(G_LINE3D, 24, 8) |              \
    __gsSPLine3D_w1f(v0, v1, wd, flag)),    \
    0                                       \
}

/***
 ***  1 Quadrangle
 ***/
#define gSP1Quadrangle(pkt, v0, v1, v2, v3, flag)                   \
_DW({                                                               \
    Gfx *_g = (Gfx *)(pkt);                                         \
                                                                    \
    _g->words.w0 = (_SHIFTL(G_QUAD, 24, 8) |                        \
                    __gsSP1Quadrangle_w1f(v0, v1, v2, v3, flag));   \
    _g->words.w1 = (__gsSP1Quadrangle_w2f(v0, v1, v2, v3, flag));   \
})

#define gsSP1Quadrangle(v0, v1, v2, v3, flag)       \
{                                                   \
   (_SHIFTL(G_QUAD, 24, 8) |                        \
    __gsSP1Quadrangle_w1f(v0, v1, v2, v3, flag)),   \
    __gsSP1Quadrangle_w2f(v0, v1, v2, v3, flag)     \
}
#else   /* F3DEX_GBI_2 */

/***
 ***  1 Triangle
 ***/
#define gSP1Triangle(pkt, v0, v1, v2, flag)                 \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = _SHIFTL(G_TRI1, 24, 8);                  \
    _g->words.w1 = __gsSP1Triangle_w1f(v0, v1, v2, flag);   \
})
#define gsSP1Triangle(v0, v1, v2, flag)     \
{                                           \
    _SHIFTL(G_TRI1, 24, 8),                 \
    __gsSP1Triangle_w1f(v0, v1, v2, flag)   \
}

/***
 ***  Line
 ***/
#define gSPLine3D(pkt, v0, v1, flag)                    \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = _SHIFTL(G_LINE3D, 24, 8);            \
    _g->words.w1 = __gsSPLine3D_w1f(v0, v1, 0, flag);   \
})
#define gsSPLine3D(v0, v1, flag)        \
{                                       \
    _SHIFTL(G_LINE3D, 24, 8),           \
    __gsSPLine3D_w1f(v0, v1, 0, flag)   \
}

/***
 ***  LineW
 ***/
/* these macros are the same as SPLine3D, except they have an
 * additional parameter for width. The width is added to the "minimum"
 * thickness, which is 1.5 pixels. The units for width are in
 * half-pixel units, so a width of 1 translates to (.5 + 1.5) or
 * a 2.0 pixels wide line.
 */
#define gSPLineW3D(pkt, v0, v1, wd, flag)               \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = _SHIFTL(G_LINE3D, 24, 8);            \
    _g->words.w1 = __gsSPLine3D_w1f(v0, v1, wd, flag);  \
})
#define gsSPLineW3D(v0, v1, wd, flag)   \
{                                       \
    _SHIFTL(G_LINE3D, 24, 8),           \
    __gsSPLine3D_w1f(v0, v1, wd, flag)  \
}

/***
 ***  1 Quadrangle
 ***/
#define gSP1Quadrangle(pkt, v0, v1, v2, v3, flag)                   \
_DW({                                                               \
    Gfx *_g = (Gfx *)(pkt);                                         \
                                                                    \
    _g->words.w0 = (_SHIFTL(G_TRI2, 24, 8) |                        \
                    __gsSP1Quadrangle_w1f(v0, v1, v2, v3, flag));   \
    _g->words.w1 =  __gsSP1Quadrangle_w2f(v0, v1, v2, v3, flag);    \
})

#define gsSP1Quadrangle(v0, v1, v2, v3, flag)       \
{                                                   \
   (_SHIFTL(G_TRI2, 24, 8) |                        \
    __gsSP1Quadrangle_w1f(v0, v1, v2, v3, flag)),   \
    __gsSP1Quadrangle_w2f(v0, v1, v2, v3, flag)     \
}
#endif  /* F3DEX_GBI_2 */

#if (defined(F3DLP_GBI) || defined(F3DEX_GBI))
/***
 ***  2 Triangles
 ***/
#define gSP2Triangles(pkt, v00, v01, v02, flag0, v10, v11, v12, flag1)  \
_DW({                                                                   \
    Gfx *_g = (Gfx *)(pkt);                                             \
                                                                        \
    _g->words.w0 = (_SHIFTL(G_TRI2, 24, 8) |                            \
                    __gsSP1Triangle_w1f(v00, v01, v02, flag0));         \
    _g->words.w1 =  __gsSP1Triangle_w1f(v10, v11, v12, flag1);          \
})

#define gsSP2Triangles(v00, v01, v02, flag0, v10, v11, v12, flag1)  \
{                                                                   \
   (_SHIFTL(G_TRI2, 24, 8) |                                        \
    __gsSP1Triangle_w1f(v00, v01, v02, flag0)),                     \
    __gsSP1Triangle_w1f(v10, v11, v12, flag1)                       \
}

#endif  /* F3DEX_GBI/F3DLP_GBI */

#if (defined(F3DEX_GBI) || defined(F3DLP_GBI))
#define gSPCullDisplayList(pkt,vstart,vend)             \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_CULLDL,     24, 8) |      \
                    _SHIFTL((vstart) * 2,  0, 16));     \
    _g->words.w1 = _SHIFTL((vend) * 2, 0, 16);          \
})

#define gsSPCullDisplayList(vstart,vend)    \
{                                           \
   (_SHIFTL(G_CULLDL,     24, 8) |          \
    _SHIFTL((vstart) * 2,  0, 16)),         \
    _SHIFTL((vend) * 2, 0, 16)              \
}

#else
#define gSPCullDisplayList(pkt,vstart,vend)                     \
_DW({                                                           \
    Gfx *_g = (Gfx *)(pkt);                                     \
                                                                \
    _g->words.w0 = (_SHIFTL(G_CULLDL, 24, 8) |                  \
                    ((0x0F & (vstart)) * 40));                  \
    _g->words.w1 = (unsigned int)((0x0F & ((vend) + 1)) * 40);  \
})

#define gsSPCullDisplayList(vstart,vend)    \
{                                           \
   (_SHIFTL(G_CULLDL, 24, 8) |              \
    ((0x0F & (vstart)) * 40)),              \
    ((0x0F & ((vend) + 1)) * 40)            \
}
#endif

#define gSPSegment(pkt, segment, base)              \
    gMoveWd(pkt, G_MW_SEGMENT, (segment) * 4, base)
#define gsSPSegment(segment, base)                  \
    gsMoveWd(    G_MW_SEGMENT, (segment) * 4, base)

/*
 * Clipping Macros
 */
#define FR_NEG_FRUSTRATIO_1 0x00000001
#define FR_POS_FRUSTRATIO_1 0x0000FFFF
#define FR_NEG_FRUSTRATIO_2 0x00000002
#define FR_POS_FRUSTRATIO_2 0x0000FFFE
#define FR_NEG_FRUSTRATIO_3 0x00000003
#define FR_POS_FRUSTRATIO_3 0x0000FFFD
#define FR_NEG_FRUSTRATIO_4 0x00000004
#define FR_POS_FRUSTRATIO_4 0x0000FFFC
#define FR_NEG_FRUSTRATIO_5 0x00000005
#define FR_POS_FRUSTRATIO_5 0x0000FFFB
#define FR_NEG_FRUSTRATIO_6 0x00000006
#define FR_POS_FRUSTRATIO_6 0x0000FFFA
/*
 * r should be one of: FRUSTRATIO_1, FRUSTRATIO_2, FRUSTRATIO_3, ... FRUSTRATIO_6
 */
#define gSPClipRatio(pkt, r)                                \
_DW({                                                       \
    gMoveWd(pkt, G_MW_CLIP, G_MWO_CLIP_RNX, FR_NEG_##r);    \
    gMoveWd(pkt, G_MW_CLIP, G_MWO_CLIP_RNY, FR_NEG_##r);    \
    gMoveWd(pkt, G_MW_CLIP, G_MWO_CLIP_RPX, FR_POS_##r);    \
    gMoveWd(pkt, G_MW_CLIP, G_MWO_CLIP_RPY, FR_POS_##r);    \
})

#define gsSPClipRatio(r)                                \
    gsMoveWd(G_MW_CLIP, G_MWO_CLIP_RNX, FR_NEG_##r),    \
    gsMoveWd(G_MW_CLIP, G_MWO_CLIP_RNY, FR_NEG_##r),    \
    gsMoveWd(G_MW_CLIP, G_MWO_CLIP_RPX, FR_POS_##r),    \
    gsMoveWd(G_MW_CLIP, G_MWO_CLIP_RPY, FR_POS_##r)

/*
 * Insert values into Matrix
 *
 * where = element of matrix (byte offset)
 * num   = new element (32 bit value replacing 2 int or 2 frac matrix
 *                                 componants
 */
#ifdef F3DEX_GBI_2
#define gSPInsertMatrix(pkt, where, num)    \
    ERROR!! gSPInsertMatrix is no longer supported.
#define gsSPInsertMatrix(where, num)        \
    ERROR!! gsSPInsertMatrix is no longer supported.
#else
#define gSPInsertMatrix(pkt, where, num)    \
    gMoveWd(pkt, G_MW_MATRIX, where, num)
#define gsSPInsertMatrix(where, num)        \
    gsMoveWd(    G_MW_MATRIX, where, num)
#endif

/*
 * Load new matrix directly
 *
 * mptr = pointer to matrix
 */
#ifdef  F3DEX_GBI_2
#define gSPForceMatrix(pkt, mptr)                                       \
_DW({                                                                   \
    gDma2p((pkt),  G_MOVEMEM, (mptr), sizeof(Mtx), G_MV_MATRIX, 0);     \
    gMoveWd((pkt), G_MW_FORCEMTX, 0, 0x00010000);                       \
})
#define gsSPForceMatrix(mptr)                                       \
    gsDma2p(       G_MOVEMEM, (mptr), sizeof(Mtx), G_MV_MATRIX, 0), \
    gsMoveWd(      G_MW_FORCEMTX, 0, 0x00010000)

#else   /* F3DEX_GBI_2 */
#define gSPForceMatrix(pkt, mptr)                                   \
_DW({                                                               \
    gDma1p(pkt, G_MOVEMEM, mptr,                16, G_MV_MATRIX_1); \
    gDma1p(pkt, G_MOVEMEM, (char *)(mptr) + 16, 16, G_MV_MATRIX_2); \
    gDma1p(pkt, G_MOVEMEM, (char *)(mptr) + 32, 16, G_MV_MATRIX_3); \
    gDma1p(pkt, G_MOVEMEM, (char *)(mptr) + 48, 16, G_MV_MATRIX_4); \
})
#define gsSPForceMatrix(mptr)                                       \
    gsDma1p(    G_MOVEMEM, mptr,                16, G_MV_MATRIX_1), \
    gsDma1p(    G_MOVEMEM, (char *)(mptr) + 16, 16, G_MV_MATRIX_2), \
    gsDma1p(    G_MOVEMEM, (char *)(mptr) + 32, 16, G_MV_MATRIX_3), \
    gsDma1p(    G_MOVEMEM, (char *)(mptr) + 48, 16, G_MV_MATRIX_4)
#endif  /* F3DEX_GBI_2 */

/*
 * Insert values into Points
 *
 * point = point number 0-15
 * where = which element of point to modify (byte offset into point)
 * num   = new value (32 bit)
 */
#if (defined(F3DEX_GBI)||defined(F3DLP_GBI))
# define gSPModifyVertex(pkt, vtx, where, val)      \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_MODIFYVTX, 24,  8) |  \
                    _SHIFTL((where),     16,  8) |  \
                    _SHIFTL((vtx) * 2,    0, 16));  \
    _g->words.w1 = (unsigned int)(val);             \
})
# define gsSPModifyVertex(vtx, where, val)  \
{                                           \
   (_SHIFTL(G_MODIFYVTX, 24,  8) |          \
    _SHIFTL((where),     16,  8) |          \
    _SHIFTL((vtx) * 2,    0, 16)),          \
    (unsigned int)(val)                     \
}
#else
# define gSPModifyVertex(pkt, vtx, where, val)          \
     gMoveWd(pkt, G_MW_POINTS, (vtx) * 40 + (where), val)
# define gsSPModifyVertex(vtx, where, val)              \
     gsMoveWd(    G_MW_POINTS, (vtx) * 40 + (where), val)
#endif

#if (defined(F3DEX_GBI) || defined(F3DLP_GBI))
/*
 *  gSPBranchLessZ   Branch DL if (vtx.z) less than or equal (zval).
 *
 *  dl   = DL branch to
 *  vtx  = Vertex
 *  zval = Screen depth
 *  near = Near plane
 *  far  = Far  plane
 *  flag = G_BZ_PERSP or G_BZ_ORTHO
 */

// From gu.h
#ifndef FTOFIX32
# define FTOFIX32(x) (long)((x) * (float)0x00010000)
#endif

#define G_BZ_PERSP  0
#define G_BZ_ORTHO  1

#define G_DEPTOZSrg(zval, near, far, flag, zmin, zmax)          \
    (((unsigned int)FTOFIX32(((flag) == G_BZ_PERSP ?            \
                  (1.0f - (float)(near) / (float)(zval)) /      \
                  (1.0f - (float)(near) / (float)(far )) :      \
                  ((float)(zval) - (float)(near)) /             \
                  ((float)(far ) - (float)(near))))) *          \
     (((int)((zmax) - (zmin))) & ~1) + (int)FTOFIX32(zmin))

#define G_DEPTOZS(zval, near, far, flag) \
    G_DEPTOZSrg(zval, near, far, flag, 0, G_MAXZ)

#define gSPBranchLessZrg(pkt, dl, vtx, zval, near, far, flag, zmin, zmax)   \
_DW({                                                                       \
    Gfx *_g = (Gfx *)(pkt);                                                 \
                                                                            \
    _g->words.w0 = _SHIFTL(G_RDPHALF_1, 24, 8);                             \
    _g->words.w1 = (unsigned int)(dl);                                      \
                                                                            \
    _g = (Gfx *)(pkt);                                                      \
                                                                            \
    _g->words.w0 = (_SHIFTL(G_BRANCH_Z, 24,  8) |                           \
                    _SHIFTL((vtx) * 5,  12, 12) |                           \
                    _SHIFTL((vtx) * 2,   0, 12));                           \
    _g->words.w1 = G_DEPTOZSrg(zval, near, far, flag, zmin, zmax);          \
})

#define gsSPBranchLessZrg(dl, vtx, zval, near, far, flag, zmin, zmax)   \
{                                                                       \
    _SHIFTL(G_RDPHALF_1, 24, 8),                                        \
    (unsigned int)(dl),                                                 \
},                                                                      \
{                                                                       \
   (_SHIFTL(G_BRANCH_Z, 24, 8) |                                        \
    _SHIFTL((vtx) * 5, 12, 12) |                                        \
    _SHIFTL((vtx) * 2, 0, 12)),                                         \
    G_DEPTOZSrg(zval, near, far, flag, zmin, zmax),                     \
}

#define gSPBranchLessZ(pkt, dl, vtx, zval, near, far, flag)         \
    gSPBranchLessZrg(pkt, dl, vtx, zval, near, far, flag, 0, G_MAXZ)
#define gsSPBranchLessZ(dl, vtx, zval, near, far, flag)             \
    gsSPBranchLessZrg(dl, vtx, zval, near, far, flag, 0, G_MAXZ)

/*
 *  gSPBranchLessZraw   Branch DL if (vtx.z) less than or equal (raw zval).
 *
 *  dl   = DL branch to
 *  vtx  = Vertex
 *  zval = Raw value of screen depth
 */
#define gSPBranchLessZraw(pkt, dl, vtx, zval)       \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = _SHIFTL(G_RDPHALF_1, 24, 8);     \
    _g->words.w1 = (unsigned int)(dl);              \
                                                    \
    _g = (Gfx *)(pkt);                              \
                                                    \
    _g->words.w0 = (_SHIFTL(G_BRANCH_Z, 24,  8) |   \
                    _SHIFTL((vtx) * 5,  12, 12) |   \
                    _SHIFTL((vtx) * 2,   0, 12));   \
    _g->words.w1 = (unsigned int)(zval);            \
})

#define gsSPBranchLessZraw(dl, vtx, zval)   \
{                                           \
    _SHIFTL(G_RDPHALF_1, 24, 8),            \
    (unsigned int)(dl),                     \
},                                          \
{                                           \
   (_SHIFTL(G_BRANCH_Z, 24,  8) |           \
    _SHIFTL((vtx) * 5,  12, 12) |           \
    _SHIFTL((vtx) * 2,   0, 12)),           \
    (unsigned int)(zval),                   \
}

/*
 * gSPLoadUcode   RSP loads specified ucode.
 *
 * uc_start  = ucode text section start
 * uc_dstart = ucode data section start
 */
#define gSPLoadUcodeEx(pkt, uc_start, uc_dstart, uc_dsize)  \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = _SHIFTL(G_RDPHALF_1, 24, 8);             \
    _g->words.w1 = (unsigned int)(uc_dstart);               \
                                                            \
    _g = (Gfx *)(pkt);                                      \
                                                            \
    _g->words.w0 = (_SHIFTL(G_LOAD_UCODE,        24,  8) |  \
                    _SHIFTL((int)(uc_dsize) - 1,  0, 16));  \
    _g->words.w1 = (unsigned int)(uc_start);                \
})

#define gsSPLoadUcodeEx(uc_start, uc_dstart, uc_dsize)  \
{                                                       \
    _SHIFTL(G_RDPHALF_1, 24, 8),                        \
    (unsigned int)(uc_dstart),                          \
},                                                      \
{                                                       \
   (_SHIFTL(G_LOAD_UCODE,        24,  8) |              \
    _SHIFTL((int)(uc_dsize) - 1,  0, 16)),              \
    (unsigned int)(uc_start),                           \
}

#define gSPLoadUcode(pkt, uc_start, uc_dstart)  \
        gSPLoadUcodeEx((pkt), (uc_start), (uc_dstart), SP_UCODE_DATA_SIZE)
#define gsSPLoadUcode(uc_start, uc_dstart)      \
        gsSPLoadUcodeEx((uc_start), (uc_dstart), SP_UCODE_DATA_SIZE)

#define gSPLoadUcodeL(pkt, ucode)                                   \
        gSPLoadUcode((pkt), OS_K0_TO_PHYSICAL(& ucode##TextStart),  \
                            OS_K0_TO_PHYSICAL(& ucode##DataStart))
#define gsSPLoadUcodeL(ucode)                                       \
        gsSPLoadUcode(      OS_K0_TO_PHYSICAL(& ucode##TextStart),  \
                            OS_K0_TO_PHYSICAL(& ucode##DataStart))
#endif

#ifdef  F3DEX_GBI_2
/*
 * gSPDma_io  DMA to/from DMEM/IMEM for DEBUG.
 */
#define gSPDma_io(pkt, flag, dmem, dram, size)      \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_DMA_IO, 24, 8) |      \
                    _SHIFTL((flag), 23, 1) |        \
                    _SHIFTL((dmem) / 8, 13, 10) |   \
                    _SHIFTL((size) - 1, 0, 12));    \
    _g->words.w1 = (unsigned int)(dram);            \
})

#define gsSPDma_io(flag, dmem, dram, size)  \
{                                           \
   (_SHIFTL(G_DMA_IO,   24,  8) |           \
    _SHIFTL((flag),     23,  1) |           \
    _SHIFTL((dmem) / 8, 13, 10) |           \
    _SHIFTL((size) - 1,  0, 12)),           \
    (unsigned int)(dram)                    \
}

#define gSPDmaRead(pkt,dmem,dram,size)  gSPDma_io((pkt),0,(dmem),(dram),(size))
#define gsSPDmaRead(dmem,dram,size)     gsSPDma_io(     0,(dmem),(dram),(size))
#define gSPDmaWrite(pkt,dmem,dram,size) gSPDma_io((pkt),1,(dmem),(dram),(size))
#define gsSPDmaWrite(dmem,dram,size)    gsSPDma_io(     1,(dmem),(dram),(size))
#endif

/*
 * Lighting Macros
 */
#ifdef  F3DEX_GBI_2
# define NUML(n)    ((n) * 24)
#else
# define NUML(n)    (((n) + 1) * 32 + 0x80000000)
#endif
#define NUMLIGHTS_0 1
#define NUMLIGHTS_1 1
#define NUMLIGHTS_2 2
#define NUMLIGHTS_3 3
#define NUMLIGHTS_4 4
#define NUMLIGHTS_5 5
#define NUMLIGHTS_6 6
#define NUMLIGHTS_7 7
/*
 * n should be one of: NUMLIGHTS_0, NUMLIGHTS_1, ..., NUMLIGHTS_7
 * NOTE: in addition to the number of directional lights specified,
 *       there is always 1 ambient light
 */
#define gSPNumLights(pkt, n)                            \
    gMoveWd(pkt, G_MW_NUMLIGHT, G_MWO_NUMLIGHT, NUML(n))
#define gsSPNumLights(n)                                \
    gsMoveWd(    G_MW_NUMLIGHT, G_MWO_NUMLIGHT, NUML(n))

#define LIGHT_1     1
#define LIGHT_2     2
#define LIGHT_3     3
#define LIGHT_4     4
#define LIGHT_5     5
#define LIGHT_6     6
#define LIGHT_7     7
#define LIGHT_8     8

/*
 * l should point to a Light struct
 * n should be one of: LIGHT_1, LIGHT_2, ..., LIGHT_8
 * NOTE: the highest numbered light is always the ambient light (eg if there are
 *       3 directional lights defined: gsSPNumLights(NUMLIGHTS_3), then lights
 *       LIGHT_1 through LIGHT_3 will be the directional lights and light
 *       LIGHT_4 will be the ambient light.
 */
#ifdef  F3DEX_GBI_2
# define gSPLight(pkt, l, n)                                                \
      gDma2p((pkt), G_MOVEMEM, (l), sizeof(Light), G_MV_LIGHT, (n) * 24 + 24)
# define gsSPLight(l, n)                                                    \
     gsDma2p(       G_MOVEMEM, (l), sizeof(Light), G_MV_LIGHT, (n) * 24 + 24)
#else   /* F3DEX_GBI_2 */
# define gSPLight(pkt, l, n)                                                \
     gDma1p(pkt,    G_MOVEMEM, (l), sizeof(Light), ((n) - 1) * 2 + G_MV_L0)
# define gsSPLight(l, n)                                                    \
     gsDma1p(       G_MOVEMEM, (l), sizeof(Light), ((n) - 1) * 2 + G_MV_L0)
#endif  /* F3DEX_GBI_2 */

// F3DEX3 compatibility
#define gSPAmbient gSPLight

/*
 * gSPLightColor changes color of light without recalculating light direction
 * col is a 32 bit word with r,g,b,a (alpha is ignored)
 * n should be one of LIGHT_1, LIGHT_2, ..., LIGHT_8
 */
#define gSPLightColor(pkt, n, col)                  \
_DW({                                               \
    gMoveWd(pkt, G_MW_LIGHTCOL, G_MWO_a##n, col);   \
    gMoveWd(pkt, G_MW_LIGHTCOL, G_MWO_b##n, col);   \
})
#define gsSPLightColor(n, col)                      \
    gsMoveWd(G_MW_LIGHTCOL, G_MWO_a##n, col),       \
    gsMoveWd(G_MW_LIGHTCOL, G_MWO_b##n, col)

/* These macros use a structure "name" which is init'd with the gdSPDefLights macros*/

#define gSPSetLights0(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_0); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.a, 2);      \
})
#define gsSPSetLights0(name)        \
    gsSPNumLights(NUMLIGHTS_0),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.a, 2)

#define gSPSetLights1(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_1); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.a, 2);      \
})
#define gsSPSetLights1(name)        \
    gsSPNumLights(NUMLIGHTS_1),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.a, 2)

#define gSPSetLights2(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_2); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.l[1], 2);   \
    gSPLight(pkt, &name.a, 3);      \
})
#define gsSPSetLights2(name)        \
    gsSPNumLights(NUMLIGHTS_2),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.l[1], 2),       \
    gsSPLight(&name.a,3)

#define gSPSetLights3(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_3); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.l[1], 2);   \
    gSPLight(pkt, &name.l[2], 3);   \
    gSPLight(pkt, &name.a, 4);      \
})
#define gsSPSetLights3(name)        \
    gsSPNumLights(NUMLIGHTS_3),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.l[1], 2),       \
    gsSPLight(&name.l[2], 3),       \
    gsSPLight(&name.a, 4)

#define gSPSetLights4(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_4); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.l[1], 2);   \
    gSPLight(pkt, &name.l[2], 3);   \
    gSPLight(pkt, &name.l[3], 4);   \
    gSPLight(pkt, &name.a, 5);      \
})
#define gsSPSetLights4(name)        \
    gsSPNumLights(NUMLIGHTS_4),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.l[1], 2),       \
    gsSPLight(&name.l[2], 3),       \
    gsSPLight(&name.l[3], 4),       \
    gsSPLight(&name.a, 5)

#define gSPSetLights5(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_5); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.l[1], 2);   \
    gSPLight(pkt, &name.l[2], 3);   \
    gSPLight(pkt, &name.l[3], 4);   \
    gSPLight(pkt, &name.l[4], 5);   \
    gSPLight(pkt, &name.a, 6);      \
})

#define gsSPSetLights5(name)        \
    gsSPNumLights(NUMLIGHTS_5),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.l[1], 2),       \
    gsSPLight(&name.l[2], 3),       \
    gsSPLight(&name.l[3], 4),       \
    gsSPLight(&name.l[4], 5),       \
    gsSPLight(&name.a, 6)

#define gSPSetLights6(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_6); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.l[1], 2);   \
    gSPLight(pkt, &name.l[2], 3);   \
    gSPLight(pkt, &name.l[3], 4);   \
    gSPLight(pkt, &name.l[4], 5);   \
    gSPLight(pkt, &name.l[5], 6);   \
    gSPLight(pkt, &name.a, 7);      \
})

#define gsSPSetLights6(name)        \
    gsSPNumLights(NUMLIGHTS_6),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.l[1], 2),       \
    gsSPLight(&name.l[2], 3),       \
    gsSPLight(&name.l[3], 4),       \
    gsSPLight(&name.l[4], 5),       \
    gsSPLight(&name.l[5], 6),       \
    gsSPLight(&name.a, 7)

#define gSPSetLights7(pkt,name)     \
_DW({                               \
    gSPNumLights(pkt, NUMLIGHTS_7); \
    gSPLight(pkt, &name.l[0], 1);   \
    gSPLight(pkt, &name.l[1], 2);   \
    gSPLight(pkt, &name.l[2], 3);   \
    gSPLight(pkt, &name.l[3], 4);   \
    gSPLight(pkt, &name.l[4], 5);   \
    gSPLight(pkt, &name.l[5], 6);   \
    gSPLight(pkt, &name.l[6], 7);   \
    gSPLight(pkt, &name.a, 8);      \
})

#define gsSPSetLights7(name)        \
    gsSPNumLights(NUMLIGHTS_7),     \
    gsSPLight(&name.l[0], 1),       \
    gsSPLight(&name.l[1], 2),       \
    gsSPLight(&name.l[2], 3),       \
    gsSPLight(&name.l[3], 4),       \
    gsSPLight(&name.l[4], 5),       \
    gsSPLight(&name.l[5], 6),       \
    gsSPLight(&name.l[6], 7),       \
    gsSPLight(&name.a, 8)

/*
 * Reflection/Hiliting Macros
 */
#ifdef  F3DEX_GBI_2
# define gSPLookAtX(pkt, l)                                                 \
     gDma2p((pkt),G_MOVEMEM, (l), sizeof(Light), G_MV_LIGHT, G_MVO_LOOKATX)
# define gsSPLookAtX(l)                                                     \
     gsDma2p(     G_MOVEMEM, (l), sizeof(Light), G_MV_LIGHT, G_MVO_LOOKATX)
# define gSPLookAtY(pkt, l)                                                 \
     gDma2p((pkt),G_MOVEMEM, (l), sizeof(Light), G_MV_LIGHT, G_MVO_LOOKATY)
# define gsSPLookAtY(l)                                                     \
     gsDma2p(     G_MOVEMEM, (l), sizeof(Light), G_MV_LIGHT, G_MVO_LOOKATY)
#else   /* F3DEX_GBI_2 */
# define gSPLookAtX(pkt, l)                                 \
     gDma1p(pkt, G_MOVEMEM, l, sizeof(Light), G_MV_LOOKATX)
# define gsSPLookAtX(l)                                     \
     gsDma1p(    G_MOVEMEM, l, sizeof(Light), G_MV_LOOKATX)
# define gSPLookAtY(pkt, l)                                 \
     gDma1p(pkt, G_MOVEMEM, l, sizeof(Light), G_MV_LOOKATY)
# define gsSPLookAtY(l)                                     \
     gsDma1p(    G_MOVEMEM, l, sizeof(Light), G_MV_LOOKATY)
#endif  /* F3DEX_GBI_2 */

#define gSPLookAt(pkt, la)              \
_DW({                                   \
    gSPLookAtX(pkt, la);                \
    gSPLookAtY(pkt, (char*)(la) + 16);  \
})
#define gsSPLookAt(la)              \
    gsSPLookAtX(la),                \
    gsSPLookAtY((char*)(la) + 16)

#define gDPSetHilite1Tile(pkt, tile, hilite, width, height) \
    gDPSetTileSize(pkt, tile,                               \
        (hilite)->h.x1 & 0xFFF,                             \
        (hilite)->h.y1 & 0xFFF,                             \
        ((((width)  - 1) * 4) + (hilite)->h.x1) & 0xFFF,    \
        ((((height) - 1) * 4) + (hilite)->h.y1) & 0xFFF)
#define gsDPSetHilite1Tile(tile, hilite, width, height)     \
    gsDPSetTileSize(tile,                                   \
        (hilite)->h.x1 & 0xFFF,                             \
        (hilite)->h.y1 & 0xFFF,                             \
        ((((width)  - 1) * 4) + (hilite)->h.x1) & 0xFFF,    \
        ((((height) - 1) * 4) + (hilite)->h.y1) & 0xFFF)

#define gDPSetHilite2Tile(pkt, tile, hilite, width, height) \
    gDPSetTileSize(pkt, tile,                               \
        (hilite)->h.x2 & 0xFFF,                             \
        (hilite)->h.y2 & 0xFFF,                             \
        ((((width)  - 1) * 4) + (hilite)->h.x2) & 0xFFF,    \
        ((((height) - 1) * 4) + (hilite)->h.y2) & 0xFFF)
#define gsDPSetHilite2Tile(tile, hilite, width, height)     \
    gsDPSetTileSize(tile,                                   \
        (hilite)->h.x2 & 0xFFF,                             \
        (hilite)->h.y2 & 0xFFF,                             \
        ((((width)  - 1) * 4) + (hilite)->h.x2) & 0xFFF,    \
        ((((height) - 1) * 4) + (hilite)->h.y2) & 0xFFF)

/*
 * FOG macros
 * fm = z multiplier
 * fo = z offset
 * FOG FORMULA:    alpha(fog) = (eyespace z) * fm  + fo  CLAMPED 0 to 255
 *   note: (eyespace z) ranges -1 to 1
 *
 * Alternate method of setting fog:
 * min, max: range 0 to 1000: 0=nearplane, 1000=farplane
 * min is where fog begins (usually less than max and often 0)
 * max is where fog is thickest (usually 1000)
 *
 */
#define gSPFogFactor(pkt, fm, fo)                   \
    gMoveWd(pkt, G_MW_FOG, G_MWO_FOG,               \
       (_SHIFTL(fm, 16, 16) | _SHIFTL(fo, 0, 16)))

#define gsSPFogFactor(fm, fo)                       \
    gsMoveWd(G_MW_FOG, G_MWO_FOG,                   \
       (_SHIFTL(fm, 16, 16) | _SHIFTL(fo, 0, 16)))

#define gSPFogPosition(pkt, min, max)                               \
    gMoveWd(pkt, G_MW_FOG, G_MWO_FOG,                               \
       (_SHIFTL((128000 / ((max) - (min))), 16, 16) |               \
        _SHIFTL(((500 - (min)) * 256 / ((max) - (min))), 0, 16)))

#define gsSPFogPosition(min, max)                                   \
    gsMoveWd(G_MW_FOG, G_MWO_FOG,                                   \
       (_SHIFTL((128000 / ((max) - (min))), 16, 16) |               \
        _SHIFTL(((500 - (min)) * 256 / ((max) - (min))), 0, 16)))

#ifdef  F3DEX_GBI_2
/*
 * Macros to turn texture on/off
 */
# define gSPTexture(pkt, s, t, level, tile, on)                 \
_DW({                                                           \
    Gfx *_g = (Gfx *)(pkt);                                     \
                                                                \
    _g->words.w0 = (_SHIFTL(G_TEXTURE,  24, 8) |                \
                    _SHIFTL(BOWTIE_VAL, 16, 8) |                \
                    _SHIFTL((level),    11, 3) |                \
                    _SHIFTL((tile),      8, 3) |                \
                    _SHIFTL((on),        1, 7));                \
    _g->words.w1 = (_SHIFTL((s), 16, 16) |                      \
                    _SHIFTL((t),  0, 16));                      \
})
# define gsSPTexture(s, t, level, tile, on) \
{                                           \
   (_SHIFTL(G_TEXTURE,  24, 8) |            \
    _SHIFTL(BOWTIE_VAL, 16, 8) |            \
    _SHIFTL((level),    11, 3) |            \
    _SHIFTL((tile),      8, 3) |            \
    _SHIFTL((on),        1, 7)),            \
   (_SHIFTL((s), 16, 16) |                  \
    _SHIFTL((t),  0, 16))                   \
}

/*
 * Different version of SPTexture macro, has an additional parameter
 * which is currently reserved in the microcode.
 */
# define gSPTextureL(pkt, s, t, level, xparam, tile, on)    \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = (_SHIFTL(G_TEXTURE, 24, 8) |             \
                    _SHIFTL((xparam),  16, 8) |             \
                    _SHIFTL((level),   11, 3) |             \
                    _SHIFTL((tile),     8, 3) |             \
                    _SHIFTL((on),       1, 7));             \
    _g->words.w1 = (_SHIFTL((s), 16, 16) |                  \
                    _SHIFTL((t),  0, 16));                  \
})
# define gsSPTextureL(s, t, level, xparam, tile, on)    \
{                                                       \
   (_SHIFTL(G_TEXTURE, 24, 8) |                         \
    _SHIFTL((xparam),  16, 8) |                         \
    _SHIFTL((level),   11, 3) |                         \
    _SHIFTL((tile),     8, 3) |                         \
    _SHIFTL((on),       1, 7)),                         \
   (_SHIFTL((s), 16, 16) |                              \
    _SHIFTL((t),  0, 16))                               \
}
#else
/*
 * Macros to turn texture on/off
 */
# define gSPTexture(pkt, s, t, level, tile, on)     \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_TEXTURE,  24, 8) |    \
                    _SHIFTL(BOWTIE_VAL, 16, 8) |    \
                    _SHIFTL((level),    11, 3) |    \
                    _SHIFTL((tile),      8, 3) |    \
                    _SHIFTL((on),        0, 8));    \
    _g->words.w1 = (_SHIFTL((s), 16, 16) |          \
                    _SHIFTL((t),  0, 16));          \
})
# define gsSPTexture(s, t, level, tile, on)     \
{                                               \
   (_SHIFTL(G_TEXTURE,  24, 8) |                \
    _SHIFTL(BOWTIE_VAL, 16, 8) |                \
    _SHIFTL((level),    11, 3) |                \
    _SHIFTL((tile),      8, 3) |                \
    _SHIFTL((on),        0, 8)),                \
   (_SHIFTL((s), 16, 16) |                      \
    _SHIFTL((t),  0, 16))                       \
}
/*
 * Different version of SPTexture macro, has an additional parameter
 * which is currently reserved in the microcode.
 */
# define gSPTextureL(pkt, s, t, level, xparam, tile, on)    \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = (_SHIFTL(G_TEXTURE, 24, 8) |             \
                    _SHIFTL((xparam),  16, 8) |             \
                    _SHIFTL((level),   11, 3) |             \
                    _SHIFTL((tile),     8, 3) |             \
                    _SHIFTL((on),       0, 8));             \
    _g->words.w1 = (_SHIFTL((s), 16, 16) |                  \
                    _SHIFTL((t),  0, 16));                  \
})
# define gsSPTextureL(s, t, level, xparam, tile, on)    \
{                                                       \
   (_SHIFTL(G_TEXTURE,24, 8) |                          \
    _SHIFTL((xparam), 16, 8) |                          \
    _SHIFTL((level),  11, 3) |                          \
    _SHIFTL((tile),    8, 3) |                          \
    _SHIFTL((on),      0, 8)),                          \
   (_SHIFTL((s), 16, 16) |                              \
    _SHIFTL((t),  0, 16))                               \
}
#endif

#define gSPPerspNormalize(pkt, s)   gMoveWd(pkt, G_MW_PERSPNORM, 0, (s))
#define gsSPPerspNormalize(s)       gsMoveWd(    G_MW_PERSPNORM, 0, (s))

#ifdef  F3DEX_GBI_2
# define gSPPopMatrixN(pkt, n, num) gDma2p((pkt), G_POPMTX, (num) * 64, 64, 2, 0)
# define gsSPPopMatrixN(n, num)     gsDma2p(      G_POPMTX, (num) * 64, 64, 2, 0)
# define gSPPopMatrix(pkt, n)       gSPPopMatrixN((pkt), (n), 1)
# define gsSPPopMatrix(n)           gsSPPopMatrixN(      (n), 1)
#else   /* F3DEX_GBI_2 */
# define gSPPopMatrix(pkt, n)   gImmp1(pkt, G_POPMTX, n)
# define gsSPPopMatrix(n)       gsImmp1(    G_POPMTX, n)
#endif  /* F3DEX_GBI_2 */

#define gSPEndDisplayList(pkt)              \
_DW({                                       \
    Gfx *_g = (Gfx *)(pkt);                 \
                                            \
    _g->words.w0 = _SHIFTL(G_ENDDL, 24, 8); \
    _g->words.w1 = 0;                       \
})

#define gsSPEndDisplayList()    \
{                               \
    _SHIFTL(G_ENDDL, 24, 8),    \
    0                           \
}

#ifdef F3DEX_GBI_2
/*
 *  One gSPGeometryMode(pkt,c,s) GBI is equal to these two GBIs.
 *
 *      gSPClearGeometryMode(pkt,c)
 *      gSPSetGeometryMode(pkt,s)
 *
 *  gSPLoadGeometryMode(pkt, word) sets GeometryMode directly.
 */
#define gSPGeometryMode(pkt, c, s)                      \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_GEOMETRYMODE, 24,  8) |   \
                    _SHIFTL(~(u32)(c),       0, 24));   \
    _g->words.w1 = (u32)(s);                            \
})

#define gsSPGeometryMode(c, s)          \
{                                       \
   (_SHIFTL(G_GEOMETRYMODE, 24,  8) |   \
    _SHIFTL(~(u32)(c),       0, 24)),   \
    (u32)(s)                            \
}

#define gSPSetGeometryMode(pkt, word)   gSPGeometryMode((pkt), 0, (word))
#define gsSPSetGeometryMode(word)       gsSPGeometryMode(      0, (word))
#define gSPClearGeometryMode(pkt, word) gSPGeometryMode((pkt), (word), 0)
#define gsSPClearGeometryMode(word)     gsSPGeometryMode(      (word), 0)
#define gSPLoadGeometryMode(pkt, word)  gSPGeometryMode((pkt), -1, (word))
#define gsSPLoadGeometryMode(word)      gsSPGeometryMode(      -1, (word))

#else   /* F3DEX_GBI_2 */
#define gSPSetGeometryMode(pkt, word)                   \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = _SHIFTL(G_SETGEOMETRYMODE, 24, 8);   \
    _g->words.w1 = (unsigned int)(word);                \
})

#define gsSPSetGeometryMode(word)       \
{                                       \
    _SHIFTL(G_SETGEOMETRYMODE, 24, 8),  \
    (unsigned int)(word)                \
}

#define gSPClearGeometryMode(pkt, word)                 \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = _SHIFTL(G_CLEARGEOMETRYMODE, 24, 8); \
    _g->words.w1 = (unsigned int)(word);                \
})

#define gsSPClearGeometryMode(word)         \
{                                           \
    _SHIFTL(G_CLEARGEOMETRYMODE, 24, 8),    \
    (unsigned int)(word)                    \
}
#endif  /* F3DEX_GBI_2 */

#ifdef  F3DEX_GBI_2
#define gSPSetOtherMode(pkt, cmd, sft, len, data)           \
_DW({                                                       \
    Gfx *_g = (Gfx *)(pkt);                                 \
                                                            \
    _g->words.w0 = (_SHIFTL(cmd,                24, 8) |    \
                    _SHIFTL(32 - (sft) - (len),  8, 8) |    \
                    _SHIFTL((len) - 1,           0, 8));    \
    _g->words.w1 = (unsigned int)(data);                    \
})

#define gsSPSetOtherMode(cmd, sft, len, data)   \
{                                               \
   (_SHIFTL(cmd,                24, 8) |        \
    _SHIFTL(32 - (sft) - (len),  8, 8) |        \
    _SHIFTL((len) - 1,           0, 8)),        \
    (unsigned int)(data)                        \
}
#else
#define gSPSetOtherMode(pkt, cmd, sft, len, data)   \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(cmd, 24, 8) |           \
                    _SHIFTL(sft,  8, 8) |           \
                    _SHIFTL(len,  0, 8));           \
    _g->words.w1 = (unsigned int)(data);            \
})

#define gsSPSetOtherMode(cmd, sft, len, data)   \
{                                               \
   (_SHIFTL(cmd, 24, 8) |                       \
    _SHIFTL(sft,  8, 8) |                       \
    _SHIFTL(len,  0, 8)),                       \
    (unsigned int)(data)                        \
}
#endif

/*
 * RDP setothermode register commands - register shadowed in RSP
 */
#define gDPPipelineMode(pkt, mode)  \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_PIPELINE, 1, mode)
#define gsDPPipelineMode(mode)      \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_PIPELINE, 1, mode)

#define gDPSetCycleType(pkt, type)  \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_CYCLETYPE, 2, type)
#define gsDPSetCycleType(type)      \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_CYCLETYPE, 2, type)

#define gDPSetTexturePersp(pkt, type)   \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_TEXTPERSP, 1, type)
#define gsDPSetTexturePersp(type)       \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_TEXTPERSP, 1, type)

#define gDPSetTextureDetail(pkt, type)  \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_TEXTDETAIL, 2, type)
#define gsDPSetTextureDetail(type)      \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_TEXTDETAIL, 2, type)

#define gDPSetTextureLOD(pkt, type) \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_TEXTLOD, 1, type)
#define gsDPSetTextureLOD(type)     \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_TEXTLOD, 1, type)

#define gDPSetTextureLUT(pkt, type) \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_TEXTLUT, 2, type)
#define gsDPSetTextureLUT(type)     \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_TEXTLUT, 2, type)

#define gDPSetTextureFilter(pkt, type)  \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_TEXTFILT, 2, type)
#define gsDPSetTextureFilter(type)      \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_TEXTFILT, 2, type)

#define gDPSetTextureConvert(pkt, type) \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_TEXTCONV, 3, type)
#define gsDPSetTextureConvert(type)     \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_TEXTCONV, 3, type)

#define gDPSetCombineKey(pkt, type) \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_COMBKEY, 1, type)
#define gsDPSetCombineKey(type)     \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_COMBKEY, 1, type)

#ifndef _HW_VERSION_1
#define gDPSetColorDither(pkt, mode)    \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_RGBDITHER, 2, mode)
#define gsDPSetColorDither(mode)        \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_RGBDITHER, 2, mode)
#else
#define gDPSetColorDither(pkt, mode)    \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_COLORDITHER, 1, mode)
#define gsDPSetColorDither(mode)                \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_COLORDITHER, 1, mode)
#endif

#ifndef _HW_VERSION_1
#define gDPSetAlphaDither(pkt, mode)    \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_ALPHADITHER, 2, mode)
#define gsDPSetAlphaDither(mode)        \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_ALPHADITHER, 2, mode)
#endif

/*
 * Majora's Mask Extension, sets both RGB and Alpha dither modes in the same
 * macro. `mode` should use both G_CD_* and G_AD_* constants.
 */
#define gDPSetDither(pkt, mode) \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_H, G_MDSFT_ALPHADITHER, 4, mode)
#define gsDPSetDither(mode)     \
    gsSPSetOtherMode(    G_SETOTHERMODE_H, G_MDSFT_ALPHADITHER, 4, mode)

/* 'blendmask' is not supported anymore.
 * The bits are reserved for future use.
 * Fri May 26 13:45:55 PDT 1995
 */
#define gDPSetBlendMask(pkt, mask)  gDPNoOp(pkt)
#define gsDPSetBlendMask(mask)      gsDPNoOp()

#define gDPSetAlphaCompare(pkt, type)   \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_L, G_MDSFT_ALPHACOMPARE, 2, type)
#define gsDPSetAlphaCompare(type)       \
    gsSPSetOtherMode(    G_SETOTHERMODE_L, G_MDSFT_ALPHACOMPARE, 2, type)

#define gDPSetDepthSource(pkt, src) \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_L, G_MDSFT_ZSRCSEL, 1, src)
#define gsDPSetDepthSource(src) \
    gsSPSetOtherMode(    G_SETOTHERMODE_L, G_MDSFT_ZSRCSEL, 1, src)

#define gDPSetRenderMode(pkt, c0, c1)   \
    gSPSetOtherMode(pkt, G_SETOTHERMODE_L, G_MDSFT_RENDERMODE, 29, (c0) | (c1))
#define gsDPSetRenderMode(c0, c1)   \
    gsSPSetOtherMode(    G_SETOTHERMODE_L, G_MDSFT_RENDERMODE, 29, (c0) | (c1))

#define gSetImage(pkt, cmd, fmt, siz, width, i)     \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(cmd,         24,  8) |  \
                    _SHIFTL(fmt,         21,  3) |  \
                    _SHIFTL(siz,         19,  2) |  \
                    _SHIFTL((width) - 1,  0, 12));  \
    _g->words.w1 = (unsigned int)(i);               \
})

#define gsSetImage(cmd, fmt, siz, width, i) \
{                                           \
   (_SHIFTL(cmd,         24,  8) |          \
    _SHIFTL(fmt,         21,  3) |          \
    _SHIFTL(siz,         19,  2) |          \
    _SHIFTL((width) - 1,  0, 12)),          \
    (unsigned int)(i)                       \
}

#define gDPSetColorImage(pkt, f, s, w, i)   gSetImage(pkt, G_SETCIMG, f, s, w, i)
#define gsDPSetColorImage(f, s, w, i)       gsSetImage(    G_SETCIMG, f, s, w, i)


/* use these for new code */
#define gDPSetDepthImage(pkt, i)    gSetImage(pkt, G_SETZIMG, 0, 0, 1, i)
#define gsDPSetDepthImage(i)        gsSetImage(    G_SETZIMG, 0, 0, 1, i)
/* kept for compatibility */
#define gDPSetMaskImage(pkt, i)     gDPSetDepthImage(pkt, i)
#define gsDPSetMaskImage(i)         gsDPSetDepthImage(    i)

#define gDPSetTextureImage(pkt, f, s, w, i) gSetImage(pkt, G_SETTIMG, f, s, w, i)
#define gsDPSetTextureImage(f, s, w, i)     gsSetImage(    G_SETTIMG, f, s, w, i)

/*
 * RDP macros
 */

#define gDPSetCombine(pkt, muxs0, muxs1)            \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_SETCOMBINE, 24,  8) | \
                    _SHIFTL(muxs0,         0, 24)); \
    _g->words.w1 = (unsigned int)(muxs1);           \
})

#define gsDPSetCombine(muxs0, muxs1)    \
{                                       \
   (_SHIFTL(G_SETCOMBINE, 24,  8) |     \
    _SHIFTL(muxs0,         0, 24)),     \
    (unsigned int)(muxs1)               \
}

#define GCCc0w0(saRGB0, mRGB0, saA0, mA0)   \
   (_SHIFTL((saRGB0), 20, 4) |              \
    _SHIFTL((mRGB0),  15, 5) |              \
    _SHIFTL((saA0),   12, 3) |              \
    _SHIFTL((mA0),     9, 3))

#define GCCc1w0(saRGB1, mRGB1)  \
   (_SHIFTL((saRGB1), 5, 4) |   \
    _SHIFTL((mRGB1),  0, 5))

#define GCCc0w1(sbRGB0, aRGB0, sbA0, aA0)   \
   (_SHIFTL((sbRGB0), 28, 4) |              \
    _SHIFTL((aRGB0),  15, 3) |              \
    _SHIFTL((sbA0),   12, 3) |              \
    _SHIFTL((aA0),     9, 3))

#define GCCc1w1(sbRGB1, saA1, mA1, aRGB1, sbA1, aA1)    \
   (_SHIFTL((sbRGB1), 24, 4) |                          \
    _SHIFTL((saA1),   21, 3) |                          \
    _SHIFTL((mA1),    18, 3) |                          \
    _SHIFTL((aRGB1),   6, 3) |                          \
    _SHIFTL((sbA1),    3, 3) |                          \
    _SHIFTL((aA1),     0, 3))

#define gDPSetCombineLERP(pkt, a0, b0, c0, d0, Aa0, Ab0, Ac0, Ad0,          \
                               a1, b1, c1, d1, Aa1, Ab1, Ac1, Ad1)          \
_DW({                                                                       \
    Gfx *_g = (Gfx *)(pkt);                                                 \
                                                                            \
    _g->words.w0 = (_SHIFTL(G_SETCOMBINE, 24, 8) |                          \
                    _SHIFTL(GCCc0w0(G_CCMUX_##a0,  G_CCMUX_##c0,            \
                                    G_ACMUX_##Aa0, G_ACMUX_##Ac0) |         \
                            GCCc1w0(G_CCMUX_##a1,  G_CCMUX_##c1),           \
                        0, 24));                                            \
    _g->words.w1 =  (unsigned int)(GCCc0w1(G_CCMUX_##b0,  G_CCMUX_##d0,     \
                                           G_ACMUX_##Ab0, G_ACMUX_##Ad0) |  \
                                   GCCc1w1(G_CCMUX_##b1,  G_ACMUX_##Aa1,    \
                                           G_ACMUX_##Ac1, G_CCMUX_##d1,     \
                                           G_ACMUX_##Ab1, G_ACMUX_##Ad1));  \
})

#define gsDPSetCombineLERP(a0, b0, c0, d0, Aa0, Ab0, Ac0, Ad0,  \
                           a1, b1, c1, d1, Aa1, Ab1, Ac1, Ad1)  \
{                                                               \
   (_SHIFTL(G_SETCOMBINE, 24, 8) |                              \
    _SHIFTL(GCCc0w0(G_CCMUX_##a0,  G_CCMUX_##c0,                \
                    G_ACMUX_##Aa0, G_ACMUX_##Ac0) |             \
            GCCc1w0(G_CCMUX_##a1,  G_CCMUX_##c1),               \
        0, 24)),                                                \
    (unsigned int)(GCCc0w1(G_CCMUX_##b0,  G_CCMUX_##d0,         \
                           G_ACMUX_##Ab0, G_ACMUX_##Ad0) |      \
                   GCCc1w1(G_CCMUX_##b1,  G_ACMUX_##Aa1,        \
                           G_ACMUX_##Ac1, G_CCMUX_##d1,         \
                           G_ACMUX_##Ab1, G_ACMUX_##Ad1))       \
}

/*
 * SetCombineMode macros are NOT redunant. It allow the C preprocessor
 * to substitute single parameter which includes commas in the token and
 * rescan for higher parameter count macro substitution.
 *
 * eg.  gsDPSetCombineMode(G_CC_MODULATE, G_CC_MODULATE) turns into
 *  gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0,
 *      TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0)
 */

#define gDPSetCombineMode(pkt, a, b)    gDPSetCombineLERP(pkt, a, b)
#define gsDPSetCombineMode(a, b)        gsDPSetCombineLERP(    a, b)

#define gDPSetColor(pkt, c, d)          \
_DW({                                   \
    Gfx *_g = (Gfx *)(pkt);             \
                                        \
    _g->words.w0 = _SHIFTL(c, 24, 8);   \
    _g->words.w1 = (unsigned int)(d);   \
})

#define gsDPSetColor(c, d)  \
{                           \
    _SHIFTL(c, 24, 8),      \
    (unsigned int)(d)       \
}

#define DPRGBColor(pkt, cmd, r, g, b, a)    \
    gDPSetColor(pkt, cmd,                   \
           (_SHIFTL(r, 24, 8) |             \
            _SHIFTL(g, 16, 8) |             \
            _SHIFTL(b,  8, 8) |             \
            _SHIFTL(a,  0, 8)))

#define sDPRGBColor(cmd, r, g, b, a)    \
    gsDPSetColor(cmd,                   \
           (_SHIFTL(r, 24, 8) |         \
            _SHIFTL(g, 16, 8) |         \
            _SHIFTL(b,  8, 8) |         \
            _SHIFTL(a,  0, 8)))

#define gDPSetEnvColor(pkt, r, g, b, a) \
            DPRGBColor(pkt, G_SETENVCOLOR,   r, g, b, a)

#define gsDPSetEnvColor(r, g, b, a) \
            sDPRGBColor(    G_SETENVCOLOR,   r, g, b, a)

#define gDPSetBlendColor(pkt, r, g, b, a) \
            DPRGBColor(pkt, G_SETBLENDCOLOR, r, g, b, a)

#define gsDPSetBlendColor(r, g, b, a) \
            sDPRGBColor(    G_SETBLENDCOLOR, r, g, b, a)

#define gDPSetFogColor(pkt, r, g, b, a) \
            DPRGBColor(pkt, G_SETFOGCOLOR,   r, g, b, a)

#define gsDPSetFogColor(r, g, b, a) \
            sDPRGBColor(    G_SETFOGCOLOR,   r, g, b, a)

#define gDPSetFillColor(pkt, d) \
            gDPSetColor(pkt, G_SETFILLCOLOR, (d))

#define gsDPSetFillColor(d) \
            gsDPSetColor(    G_SETFILLCOLOR, (d))

#define gDPSetPrimDepth(pkt, z, dz)                         \
        gDPSetColor(pkt, G_SETPRIMDEPTH,                    \
                    _SHIFTL(z, 16, 16) | _SHIFTL(dz, 0, 16))

#define gsDPSetPrimDepth(z, dz)                             \
        gsDPSetColor(G_SETPRIMDEPTH,                        \
                    _SHIFTL(z, 16, 16) | _SHIFTL(dz, 0, 16))

#define gDPSetPrimColor(pkt, m, l, r, g, b, a)          \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_SETPRIMCOLOR, 24, 8) |    \
                    _SHIFTL(m,               8, 8) |    \
                    _SHIFTL(l,               0, 8));    \
    _g->words.w1 = (_SHIFTL(r, 24, 8) |                 \
                    _SHIFTL(g, 16, 8) |                 \
                    _SHIFTL(b,  8, 8) |                 \
                    _SHIFTL(a,  0, 8));                 \
})

#define gsDPSetPrimColor(m, l, r, g, b, a)  \
{                                           \
   (_SHIFTL(G_SETPRIMCOLOR, 24, 8) |        \
    _SHIFTL(m,               8, 8) |        \
    _SHIFTL(l,               0, 8)),        \
   (_SHIFTL(r, 24, 8) |                     \
    _SHIFTL(g, 16, 8) |                     \
    _SHIFTL(b,  8, 8) |                     \
    _SHIFTL(a,  0, 8))                      \
}

/*
 * gDPSetOtherMode (This is for expert user.)
 *
 * This command makes all othermode parameters set.
 * Do not use this command in the same DL with another g*SPSetOtherMode DLs.
 *
 * [Usage]
 *  gDPSetOtherMode(pkt, modeA, modeB)
 *
 *      'modeA' is described all parameters of GroupA GBI command.
 *      'modeB' is also described all parameters of GroupB GBI command.
 *
 *  GroupA:
 *    gDPPipelineMode, gDPSetCycleType, gSPSetTexturePersp,
 *    gDPSetTextureDetail, gDPSetTextureLOD, gDPSetTextureLUT,
 *    gDPSetTextureFilter, gDPSetTextureConvert, gDPSetCombineKey,
 *    gDPSetColorDither, gDPSetAlphaDither
 *
 *  GroupB:
 *    gDPSetAlphaCompare, gDPSetDepthSource, gDPSetRenderMode
 *
 *  Use 'OR' operation to get modeA and modeB.
 *
 *  modeA = G_PM_* | G_CYC_* | G_TP_* | G_TD_* | G_TL_* | G_TT_* | G_TF_*
 *      G_TC_* | G_CK_*  | G_CD_* | G_AD_*;
 *
 *  modeB = G_AC_* | G_ZS_*  | G_RM_* | G_RM_*2;
 */
#define gDPSetOtherMode(pkt, mode0, mode1)              \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_RDPSETOTHERMODE, 24, 8) | \
                    _SHIFTL(mode0, 0, 24));             \
    _g->words.w1 = (unsigned int)(mode1);               \
})

#define gsDPSetOtherMode(mode0, mode1)      \
{                                           \
   (_SHIFTL(G_RDPSETOTHERMODE, 24,  8) |    \
    _SHIFTL(mode0,              0, 24)),    \
    (unsigned int)(mode1)                   \
}

/*
 * Texturing macros
 */

/* These are also defined defined above for Sprite Microcode */

#define G_TX_LOADTILE   7
#define G_TX_RENDERTILE 0

#define G_TX_NOMIRROR   (0 << 0)
#define G_TX_WRAP       (0 << 1)
#define G_TX_MIRROR     (1 << 0)
#define G_TX_CLAMP      (1 << 1)
#define G_TX_NOMASK     0
#define G_TX_NOLOD      0

#ifndef MAX
#define MAX(a, b) ((a) > (b) ? (a) : (b))
#endif

#ifndef MIN
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#endif

/*
 *  Dxt is the inverse of the number of 64-bit words in a line of
 *  the texture being loaded using the load_block command.  If
 *  there are any 1's to the right of the 11th fractional bit,
 *  dxt should be rounded up.  The following macros accomplish
 *  this.  The 4b macros are a special case since 4-bit textures
 *  are loaded as 8-bit textures.  Dxt is fixed point 1.11. RJM
 */
#define G_TX_DXT_FRAC   11

/*
 *  For RCP 2.0, the maximum number of texels that can be loaded
 *  using a load_block command is 2048.  In order to load the total
 *  4kB of Tmem, change the texel size when loading to be G_IM_SIZ_16b,
 *  then change the tile to the proper texel size after the load.
 *  The g*DPLoadTextureBlock macros already do this, so this change
 *  will be transparent if you use these macros.  If you use
 *  the g*DPLoadBlock macros directly, you will need to handle this
 *  tile manipulation yourself.  RJM.
 */
#ifdef _HW_VERSION_1
#define G_TX_LDBLK_MAX_TXL  4095
#else
#define G_TX_LDBLK_MAX_TXL  2047
#endif /* _HW_VERSION_1 */

#define TXL2WORDS(txls, b_txl)  \
    MAX(1, ((txls) * (b_txl) / 8))

#define CALC_DXT(width, b_txl)  \
    (((1 << G_TX_DXT_FRAC) + TXL2WORDS(width, b_txl) - 1) / TXL2WORDS(width, b_txl))

#define TXL2WORDS_4b(txls)  \
    MAX(1, ((txls) / 16))

#define CALC_DXT_4b(width)  \
    (((1 << G_TX_DXT_FRAC) + TXL2WORDS_4b(width) - 1) / TXL2WORDS_4b(width))

#define gDPLoadTileGeneric(pkt, c, tile, uls, ult, lrs, lrt)    \
_DW({                                                           \
    Gfx *_g = (Gfx *)(pkt);                                     \
                                                                \
    _g->words.w0 = (_SHIFTL(c,   24,  8) |                      \
                    _SHIFTL(uls, 12, 12) |                      \
                    _SHIFTL(ult,  0, 12));                      \
    _g->words.w1 = (_SHIFTL(tile, 24, 3) |                      \
                    _SHIFTL(lrs, 12, 12) |                      \
                    _SHIFTL(lrt, 0, 12));                       \
})

#define gsDPLoadTileGeneric(c, tile, uls, ult, lrs, lrt)    \
{                                                           \
   (_SHIFTL(c,   24,  8) |                                  \
    _SHIFTL(uls, 12, 12) |                                  \
    _SHIFTL(ult,  0, 12)),                                  \
   (_SHIFTL(tile, 24,  3) |                                 \
    _SHIFTL(lrs,  12, 12) |                                 \
    _SHIFTL(lrt,   0, 12))                                  \
}

#define gDPSetTileSize(pkt, t, uls, ult, lrs, lrt)                  \
        gDPLoadTileGeneric(pkt, G_SETTILESIZE, t, uls, ult, lrs, lrt)
#define gsDPSetTileSize(t, uls, ult, lrs, lrt)                      \
        gsDPLoadTileGeneric(    G_SETTILESIZE, t, uls, ult, lrs, lrt)
#define gDPLoadTile(pkt, t, uls, ult, lrs, lrt)                     \
        gDPLoadTileGeneric(pkt, G_LOADTILE, t, uls, ult, lrs, lrt)
#define gsDPLoadTile(t, uls, ult, lrs, lrt)                         \
        gsDPLoadTileGeneric(    G_LOADTILE, t, uls, ult, lrs, lrt)

#define gDPSetTile(pkt, fmt, siz, line, tmem, tile, palette, cmt,   \
                        maskt, shiftt, cms, masks, shifts)          \
_DW({                                                               \
    Gfx *_g = (Gfx *)(pkt);                                         \
                                                                    \
    _g->words.w0 = (_SHIFTL(G_SETTILE, 24, 8) |                     \
                    _SHIFTL(fmt,       21, 3) |                     \
                    _SHIFTL(siz,       19, 2) |                     \
                    _SHIFTL(line,       9, 9) |                     \
                    _SHIFTL(tmem,       0, 9));                     \
    _g->words.w1 = (_SHIFTL(tile,    24, 3) |                       \
                    _SHIFTL(palette, 20, 4) |                       \
                    _SHIFTL(cmt,     18, 2) |                       \
                    _SHIFTL(maskt,   14, 4) |                       \
                    _SHIFTL(shiftt,  10, 4) |                       \
                    _SHIFTL(cms,      8, 2) |                       \
                    _SHIFTL(masks,    4, 4) |                       \
                    _SHIFTL(shifts,   0, 4));                       \
})

#define gsDPSetTile(fmt, siz, line, tmem, tile, palette, cmt,   \
                    maskt, shiftt, cms, masks, shifts)          \
{                                                               \
   (_SHIFTL(G_SETTILE, 24, 8) |                                 \
    _SHIFTL(fmt,       21, 3) |                                 \
    _SHIFTL(siz,       19, 2) |                                 \
    _SHIFTL(line,       9, 9) |                                 \
    _SHIFTL(tmem,       0, 9)),                                 \
   (_SHIFTL(tile,    24, 3) |                                   \
    _SHIFTL(palette, 20, 4) |                                   \
    _SHIFTL(cmt,     18, 2) |                                   \
    _SHIFTL(maskt,   14, 4) |                                   \
    _SHIFTL(shiftt,  10, 4) |                                   \
    _SHIFTL(cms,      8, 2) |                                   \
    _SHIFTL(masks,    4, 4) |                                   \
    _SHIFTL(shifts,   0, 4))                                    \
}

/*
 *  For RCP 2.0, the maximum number of texels that can be loaded
 *  using a load_block command is 2048.  In order to load the total
 *  4kB of Tmem, change the texel size when loading to be G_IM_SIZ_16b,
 *  then change the tile to the proper texel size after the load.
 *  The g*DPLoadTextureBlock macros already do this, so this change
 *  will be transparent if you use these macros.  If you use
 *  the g*DPLoadBlock macros directly, you will need to handle this
 *  tile manipulation yourself.  RJM.
 */
#define gDPLoadBlock(pkt, tile, uls, ult, lrs, dxt)                 \
_DW({                                                               \
    Gfx *_g = (Gfx *)(pkt);                                         \
                                                                    \
    _g->words.w0 = (_SHIFTL(G_LOADBLOCK, 24,  8) |                  \
                    _SHIFTL(uls,         12, 12) |                  \
                    _SHIFTL(ult,          0, 12));                  \
    _g->words.w1 = (_SHIFTL(tile,                         24,  3) | \
                    _SHIFTL(MIN(lrs, G_TX_LDBLK_MAX_TXL), 12, 12) | \
                    _SHIFTL(dxt,                           0, 12)); \
})

#define gsDPLoadBlock(tile, uls, ult, lrs, dxt)         \
{                                                       \
   (_SHIFTL(G_LOADBLOCK, 24,  8) |                      \
    _SHIFTL(uls,         12, 12) |                      \
    _SHIFTL(ult,          0, 12)),                      \
   (_SHIFTL(tile,                           24,  3) |   \
    _SHIFTL((MIN(lrs, G_TX_LDBLK_MAX_TXL)), 12, 12) |   \
    _SHIFTL(dxt,                             0, 12))    \
}

#define gDPLoadTLUTCmd(pkt, tile, count)        \
_DW({                                           \
    Gfx *_g = (Gfx *)pkt;                       \
                                                \
    _g->words.w0 = _SHIFTL(G_LOADTLUT, 24, 8);  \
    _g->words.w1 = (_SHIFTL((tile),  24,  3) |  \
                    _SHIFTL((count), 14, 10));  \
})

#define gsDPLoadTLUTCmd(tile, count)    \
{                                       \
    _SHIFTL(G_LOADTLUT, 24, 8),         \
   (_SHIFTL((tile),  24,  3) |          \
    _SHIFTL((count), 14, 10))           \
}

#define gDPLoadTextureBlock(pkt, timg, fmt, siz, width, height, pal,        \
                                 cms, cmt, masks, maskt, shifts, shiftt)    \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,             \
        0, cmt, maskt, shiftt, cms, masks, shifts);                         \
    gDPLoadSync(pkt);                                                       \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) -1,              \
        CALC_DXT(width, siz##_BYTES));                                      \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, siz,                                               \
        (((width) * siz##_LINE_BYTES) + 7) >> 3, 0,                         \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);      \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                            \
})

#define gDPLoadTextureBlockYuv(pkt, timg, fmt, siz, width, height, pal,     \
                                    cms, cmt, masks, maskt, shifts, shiftt) \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,             \
        0, cmt, maskt, shiftt, cms, masks, shifts);                         \
    gDPLoadSync(pkt);                                                       \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) -1,              \
        CALC_DXT(width, siz##_BYTES));                                      \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, siz,                                               \
        (((width) * 1) + 7) >> 3, 0,                                        \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);      \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                            \
})

/* Load fix rww 27jun95 */
/* The S at the end means odd lines are already word Swapped */

#define gDPLoadTextureBlockS(pkt, timg, fmt, siz, width, height, pal,       \
                                  cms, cmt, masks, maskt, shifts, shiftt)   \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,             \
        0, cmt, maskt, shiftt, cms, masks, shifts);                         \
    gDPLoadSync(pkt);                                                       \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1, 0);         \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, siz,                                               \
        (((width) * siz##_LINE_BYTES) + 7) >> 3, 0,                         \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);      \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                            \
})

/*
 *  Allow tmem address and render tile to be specified.
 *  The S at the end means odd lines are already word Swapped
 */
#define gDPLoadMultiBlockS(pkt, timg, tmem, rtile, fmt, siz, width, height, pal,    \
                                cms, cmt, masks, maskt, shifts, shiftt)             \
_DW({                                                                               \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                        \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts);                                 \
    gDPLoadSync(pkt);                                                               \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                          \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,0);                  \
    gDPPipeSync(pkt);                                                               \
    gDPSetTile(pkt, fmt, siz,                                                       \
        (((width) * siz##_LINE_BYTES) + 7) >> 3, tmem,                              \
        rtile, pal, cmt, maskt, shiftt, cms, masks,                                 \
        shifts);                                                                    \
    gDPSetTileSize(pkt, rtile, 0, 0,                                                \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                     \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                    \
})


#define gDPLoadTextureBlockYuvS(pkt, timg, fmt, siz, width, height, pal,        \
                                     cms, cmt, masks, maskt, shifts, shiftt)    \
_DW({                                                                           \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                    \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,                 \
        0, cmt, maskt, shiftt, cms, masks, shifts);                             \
    gDPLoadSync(pkt);                                                           \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,0);              \
    gDPPipeSync(pkt);                                                           \
    gDPSetTile(pkt, fmt, siz,                                                   \
        (((width) * 1) + 7) >> 3, 0,                                            \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);          \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                                  \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                \
})

/*
 *  allows tmem address to be specified
 */
#define _gDPLoadTextureBlock(pkt, timg, tmem, fmt, siz, width, height, pal, \
                                  cms, cmt, masks, maskt, shifts, shiftt)   \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,          \
        0, cmt, maskt, shiftt, cms, masks, shifts);                         \
    gDPLoadSync(pkt);                                                       \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,             \
        CALC_DXT(width, siz##_BYTES));                                      \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, siz,                                               \
        (((width) * siz##_LINE_BYTES) + 7) >> 3, tmem,                      \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);      \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                            \
})

/*
 *  allows tmem address and render tile to be specified
 */
#define _gDPLoadTextureBlockTile(pkt, timg, tmem, rtile, fmt, siz, width, height, pal,  \
                                      cms, cmt, masks, maskt, shifts, shiftt)           \
_DW({                                                                                   \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                            \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,                      \
        0, cmt, maskt, shiftt, cms, masks, shifts);                                     \
    gDPLoadSync(pkt);                                                                   \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                              \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,                         \
        CALC_DXT(width, siz##_BYTES));                                                  \
    gDPPipeSync(pkt);                                                                   \
    gDPSetTile(pkt, fmt, siz,                                                           \
        (((width) * siz##_LINE_BYTES) + 7) >> 3, tmem,                                  \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);                            \
    gDPSetTileSize(pkt, rtile, 0, 0,                                                    \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                         \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                        \
})

/*
 *  allows tmem address and render tile to be specified
 */
#define gDPLoadMultiBlock(pkt, timg, tmem, rtile, fmt, siz, width, height, pal, \
                               cms, cmt, masks, maskt, shifts, shiftt)          \
_DW({                                                                           \
    gDPSetTextureImage(pkt, fmt, siz##_LOAD_BLOCK, 1, timg);                    \
    gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,              \
        0, cmt, maskt, shiftt, cms, masks, shifts);                             \
    gDPLoadSync(pkt);                                                           \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,                 \
        CALC_DXT(width, siz##_BYTES));                                          \
    gDPPipeSync(pkt);                                                           \
    gDPSetTile(pkt, fmt, siz,                                                   \
        (((width) * siz##_LINE_BYTES) + 7) >> 3, tmem,                          \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);                    \
    gDPSetTileSize(pkt, rtile, 0, 0,                                            \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                \
})

#define gsDPLoadTextureBlock(timg, fmt, siz, width, height, pal,        \
                             cms, cmt, masks, maskt, shifts, shiftt)    \
    gsDPSetTextureImage(fmt, siz##_LOAD_BLOCK, 1, timg),                \
    gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,             \
        0, cmt, maskt, shiftt, cms, masks, shifts),                     \
    gsDPLoadSync(),                                                     \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                  \
        (((width)*(height) + siz##_INCR) >> siz##_SHIFT) - 1,           \
        CALC_DXT(width, siz##_BYTES)),                                  \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, siz,                                               \
        ((((width) * siz##_LINE_BYTES) + 7) >> 3), 0,                   \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts),  \
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                         \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)

/* Here is the static form of the pre-swapped texture block loading */
/* See gDPLoadTextureBlockS() for reference.  Basically, just don't
   calculate DxT, use 0 */

#define gsDPLoadTextureBlockS(timg, fmt, siz, width, height, pal,       \
                              cms, cmt, masks, maskt, shifts, shiftt)   \
    gsDPSetTextureImage(fmt, siz##_LOAD_BLOCK, 1, timg),                \
    gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,             \
        0, cmt, maskt,shiftt, cms, masks, shifts),                      \
    gsDPLoadSync(),                                                     \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1, 0),     \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, siz,                                               \
        ((((width) * siz##_LINE_BYTES) + 7) >> 3), 0,                   \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks,           \
        shifts),                                                        \
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                         \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)

/*
 *  Allow tmem address to be specified
 */
#define _gsDPLoadTextureBlock(timg, tmem, fmt, siz, width, height, pal, \
                              cms, cmt, masks, maskt, shifts, shiftt)   \
    gsDPSetTextureImage(fmt, siz##_LOAD_BLOCK, 1, timg),                \
    gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,          \
        0, cmt, maskt, shiftt, cms, masks, shifts),                     \
    gsDPLoadSync(),                                                     \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,         \
        CALC_DXT(width, siz##_BYTES)),                                  \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, siz,                                               \
        ((((width) * siz##_LINE_BYTES) + 7) >> 3), tmem,                \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks,           \
        shifts),                                                        \
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                         \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)


/*
 *  Allow tmem address and render_tile to be specified
 */
#define _gsDPLoadTextureBlockTile(timg, tmem, rtile, fmt, siz, width, height, pal,  \
                                  cms, cmt, masks, maskt, shifts, shiftt)           \
    gsDPSetTextureImage(fmt, siz##_LOAD_BLOCK, 1, timg),                            \
    gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,                      \
        0, cmt, maskt, shiftt, cms, masks, shifts),                                 \
    gsDPLoadSync(),                                                                 \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                              \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,                     \
        CALC_DXT(width, siz##_BYTES)),                                              \
    gsDPPipeSync(),                                                                 \
    gsDPSetTile(fmt, siz,                                                           \
        ((((width) * siz##_LINE_BYTES) + 7) >> 3), tmem,                            \
        rtile, pal, cmt, maskt, shiftt, cms, masks,                                 \
        shifts),                                                                    \
    gsDPSetTileSize(rtile, 0, 0,                                                    \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                     \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)


/*
 *  Allow tmem address and render_tile to be specified, useful when loading
 *  mutilple tiles at a time.
 */
#define gsDPLoadMultiBlock(timg, tmem, rtile, fmt, siz, width, height, pal, \
                           cms, cmt, masks, maskt, shifts, shiftt)          \
    gsDPSetTextureImage(fmt, siz##_LOAD_BLOCK, 1, timg),                    \
    gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,              \
        0, cmt, maskt, shiftt, cms, masks, shifts),                         \
    gsDPLoadSync(),                                                         \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1,             \
        CALC_DXT(width, siz##_BYTES)),                                      \
    gsDPPipeSync(),                                                         \
    gsDPSetTile(fmt, siz,                                                   \
        ((((width) * siz##_LINE_BYTES) + 7) >> 3), tmem,                    \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts),                \
    gsDPSetTileSize(rtile, 0, 0,                                            \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)

/*
 *  Allows tmem and render tile to be specified.  Useful when loading
 *  several tiles at a time.
 *
 *  Here is the static form of the pre-swapped texture block loading
 *  See gDPLoadTextureBlockS() for reference.  Basically, just don't
 *  calculate DxT, use 0
 */

#define gsDPLoadMultiBlockS(timg, tmem, rtile, fmt, siz, width, height, pal,    \
                            cms, cmt, masks, maskt, shifts, shiftt)             \
    gsDPSetTextureImage(fmt, siz##_LOAD_BLOCK, 1, timg),                        \
    gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt,shiftt, cms, masks, shifts),                              \
    gsDPLoadSync(),                                                             \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                          \
        (((width) * (height) + siz##_INCR) >> siz##_SHIFT) - 1, 0),             \
    gsDPPipeSync(),                                                             \
    gsDPSetTile(fmt, siz,                                                       \
        ((((width) * siz##_LINE_BYTES) + 7) >> 3), tmem,                        \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts),                    \
    gsDPSetTileSize(rtile, 0, 0,                                                \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)


#define gDPLoadTextureBlock_4b(pkt, timg, fmt, width, height, pal,          \
                                    cms, cmt, masks, maskt, shifts, shiftt) \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_16b, 1, timg);                    \
    gDPSetTile(pkt, fmt, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE,                 \
        0, cmt, maskt, shiftt, cms, masks, shifts);                         \
    gDPLoadSync(pkt);                                                       \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + 3) >> 2) - 1,                                \
        CALC_DXT_4b(width));                                                \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                       \
        ((((width) >> 1) + 7) >> 3), 0,                                     \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);      \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                            \
})

/* Load fix rww 27jun95 */
/* The S at the end means odd lines are already word Swapped */

#define gDPLoadTextureBlock_4bS(pkt, timg, fmt, width, height, pal,             \
                                     cms, cmt, masks, maskt, shifts, shiftt)    \
_DW({                                                                           \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_16b, 1, timg);                        \
    gDPSetTile(pkt, fmt, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE,                     \
        0, cmt, maskt, shiftt, cms, masks, shifts);                             \
    gDPLoadSync(pkt);                                                           \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                    \
        0);                                                                     \
    gDPPipeSync(pkt);                                                           \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), 0,                                         \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);          \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                                  \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                \
})

/*
 *  4-bit load block.  Useful when loading multiple tiles
 */
#define gDPLoadMultiBlock_4b(pkt, timg, tmem, rtile, fmt, width, height, pal,   \
                                  cms, cmt, masks, maskt, shifts, shiftt)       \
_DW({                                                                           \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_16b, 1, timg);                        \
    gDPSetTile(pkt, fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts);                             \
    gDPLoadSync(pkt);                                                           \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                    \
        CALC_DXT_4b(width));                                                    \
    gDPPipeSync(pkt);                                                           \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), tmem,                                      \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);                    \
    gDPSetTileSize(pkt, rtile, 0, 0,                                            \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                \
})

/*
 *  4-bit load block.  Allows tmem and render tile to be specified.  Useful when
 *  loading multiple tiles.  The S means odd lines are already word swapped.
 */
#define gDPLoadMultiBlock_4bS(pkt, timg, tmem, rtile, fmt, width, height, pal,  \
                                   cms, cmt, masks, maskt, shifts, shiftt)      \
_DW({                                                                           \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_16b, 1, timg);                        \
    gDPSetTile(pkt, fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts);                             \
    gDPLoadSync(pkt);                                                           \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                    \
        0);                                                                     \
    gDPPipeSync(pkt);                                                           \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), tmem,                                      \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);                    \
    gDPSetTileSize(pkt, rtile, 0, 0,                                            \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                \
})


#define _gDPLoadTextureBlock_4b(pkt, timg, tmem, fmt, width, height, pal,       \
                                     cms, cmt, masks, maskt, shifts, shiftt)    \
_DW({                                                                           \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_16b, 1, timg);                        \
    gDPSetTile(pkt, fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts);                             \
    gDPLoadSync(pkt);                                                           \
    gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                    \
        CALC_DXT_4b(width));                                                    \
    gDPPipeSync(pkt);                                                           \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), tmem,                                      \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);          \
    gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0,                                  \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                                 \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC);                                \
})

#define gsDPLoadTextureBlock_4b(timg, fmt, width, height, pal,          \
                                cms, cmt, masks, maskt, shifts, shiftt) \
    gsDPSetTextureImage(fmt, G_IM_SIZ_16b, 1, timg),                    \
    gsDPSetTile(fmt, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE,                 \
        0, cmt, maskt, shiftt, cms, masks, shifts),                     \
    gsDPLoadSync(),                                                     \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                  \
        (((width) * (height) + 3) >> 2) - 1,                            \
        CALC_DXT_4b(width)),                                            \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                       \
        ((((width) >> 1) + 7) >> 3), 0,                                 \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts),  \
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0,                              \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                         \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)

#define gsDPLoadTextureBlock_4bS(timg, fmt, width, height, pal,             \
                                 cms, cmt, masks, maskt, shifts, shiftt)    \
    gsDPSetTextureImage(fmt, G_IM_SIZ_16b, 1, timg),                        \
    gsDPSetTile(fmt, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE,                     \
        0, cmt, maskt, shiftt, cms, masks, shifts),                         \
    gsDPLoadSync(),                                                         \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                \
        0),                                                                 \
    gsDPPipeSync(),                                                         \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), 0,                                     \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0,                                  \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)

/*
 *  4-bit load block.  Allows tmem address and render tile to be specified.
 *  Useful when loading multiple tiles.
 */
#define gsDPLoadMultiBlock_4b(timg, tmem, rtile, fmt, width, height, pal,   \
                              cms, cmt, masks, maskt, shifts, shiftt)       \
    gsDPSetTextureImage(fmt, G_IM_SIZ_16b, 1, timg),                        \
    gsDPSetTile(fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts),                         \
    gsDPLoadSync(),                                                         \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                \
        CALC_DXT_4b(width)),                                                \
    gsDPPipeSync(),                                                         \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), tmem,                                  \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts),                \
    gsDPSetTileSize(rtile, 0, 0,                                            \
        ((width)-1) << G_TEXTURE_IMAGE_FRAC,                                \
        ((height)-1) << G_TEXTURE_IMAGE_FRAC)


/*
 *  4-bit load block.  Allows tmem address and render tile to be specified.
 *  Useful when loading multiple tiles.  S means odd lines are already swapped.
 */
#define gsDPLoadMultiBlock_4bS(timg, tmem, rtile, fmt, width, height, pal,  \
                               cms, cmt, masks, maskt, shifts, shiftt)      \
    gsDPSetTextureImage(fmt, G_IM_SIZ_16b, 1, timg),                        \
    gsDPSetTile(fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts),                         \
    gsDPLoadSync(),                                                         \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                \
        0),                                                                 \
    gsDPPipeSync(),                                                         \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), tmem,                                  \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts),                \
    gsDPSetTileSize(rtile, 0, 0,                                            \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)


/*
 *  Allows tmem address to be specified
 */
#define _gsDPLoadTextureBlock_4b(timg, tmem, fmt, width, height, pal,       \
                                 cms, cmt, masks, maskt, shifts, shiftt)    \
    gsDPSetTextureImage(fmt, G_IM_SIZ_16b, 1, timg),                        \
    gsDPSetTile(fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE,                  \
        0, cmt, maskt, shiftt, cms, masks, shifts),                         \
    gsDPLoadSync(),                                                         \
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0,                                      \
        (((width) * (height) + 3) >> 2) - 1,                                \
        CALC_DXT_4b(width)),                                                \
    gsDPPipeSync(),                                                         \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                           \
        ((((width) >> 1) + 7) >> 3), tmem,                                  \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0,                                  \
        ((width)  - 1) << G_TEXTURE_IMAGE_FRAC,                             \
        ((height) - 1) << G_TEXTURE_IMAGE_FRAC)

#ifndef _HW_VERSION_1

#define gDPLoadTextureTile(pkt, timg, fmt, siz, width, height,          \
                                uls, ult, lrs, lrt, pal,                \
                                cms, cmt, masks, maskt, shifts, shiftt) \
_DW({                                                                   \
    gDPSetTextureImage(pkt, fmt, siz, width, timg);                     \
    gDPSetTile(pkt, fmt, siz,                                           \
        (((((lrs) - (uls) + 1) * siz##_TILE_BYTES) + 7) >> 3), 0,       \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks,               \
        shifts);                                                        \
    gDPLoadSync(pkt);                                                   \
    gDPLoadTile(pkt, G_TX_LOADTILE,                                     \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                 \
    gDPPipeSync(pkt);                                                   \
    gDPSetTile(pkt, fmt, siz,                                           \
        (((((lrs) - (uls) + 1) * siz##_LINE_BYTES) + 7) >> 3), 0,       \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);  \
    gDPSetTileSize(pkt, G_TX_RENDERTILE,                                \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                 \
})

#else /******** WORKAROUND hw 1 load tile bug ********/

#define gDPLoadTextureTile(pkt, timg, fmt, siz, width, height,          \
                                uls, ult, lrs, lrt, pal,                \
                                cms, cmt, masks, maskt, shifts, shiftt) \
_DW({                                                                   \
    int _loadtile_i, _loadtile_nw;                                      \
    Gfx *_loadtile_temp = pkt;                                          \
                                                                        \
    guDPLoadTextureTile(_loadtile_temp, timg, fmt, siz, width, height,  \
        uls, ult, lrs, lrt, pal,                                        \
        cms, cmt, masks, maskt, shifts, shiftt);                        \
    _loadtile_nw = guGetDPLoadTextureTileSz(ult, lrt) - 1;              \
    for(_loadtile_i = 0; _loadtile_i < _loadtile_nw; _loadtile_i++)     \
        pkt;                                                            \
})

#endif /* HW_VERSION_1 */

/*
 *  Load texture tile.  Allows tmem address and render tile to be specified.
 *  Useful for loading multiple tiles.
 */
#define gDPLoadMultiTile(pkt, timg, tmem, rtile, fmt, siz, width, height,   \
                              uls, ult, lrs, lrt, pal,                      \
                              cms, cmt, masks, maskt, shifts, shiftt)       \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, siz, width, timg);                         \
    gDPSetTile(pkt, fmt, siz,                                               \
        (((((lrs) - (uls) + 1) * siz##_TILE_BYTES) + 7) >> 3), tmem,        \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);          \
    gDPLoadSync(pkt);                                                       \
    gDPLoadTile(pkt, G_TX_LOADTILE,                                         \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                      \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                     \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, siz,                                               \
        (((((lrs) - (uls) + 1) * siz##_LINE_BYTES) + 7) >> 3), tmem,        \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);                \
    gDPSetTileSize(pkt, rtile,                                              \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                      \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                     \
})


#define gsDPLoadTextureTile(timg, fmt, siz, width, height,              \
                            uls, ult, lrs, lrt, pal,                    \
                            cms, cmt, masks, maskt, shifts, shiftt)     \
    gsDPSetTextureImage(fmt, siz, width, timg),                         \
    gsDPSetTile(fmt, siz,                                               \
        (((((lrs) - (uls) + 1) * siz##_TILE_BYTES) + 7) >> 3), 0,       \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPLoadSync(),                                                     \
    gsDPLoadTile(G_TX_LOADTILE,                                         \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC),                                 \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, siz,                                               \
        (((((lrs) - (uls) + 1) * siz##_LINE_BYTES) + 7) >> 3), 0,       \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts),  \
    gsDPSetTileSize(G_TX_RENDERTILE,                                    \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC)

/*
 *  Load texture tile.  Allows tmem address and render tile to be specified.
 *  Useful for loading multiple tiles.
 */
#define gsDPLoadMultiTile(timg, tmem, rtile, fmt, siz, width, height,   \
                          uls, ult, lrs, lrt, pal,                      \
                          cms, cmt, masks, maskt, shifts, shiftt)       \
    gsDPSetTextureImage(fmt, siz, width, timg),                         \
    gsDPSetTile(fmt, siz,                                               \
        (((((lrs) - (uls) + 1) * siz##_TILE_BYTES) + 7) >> 3), tmem,    \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPLoadSync(),                                                     \
    gsDPLoadTile(G_TX_LOADTILE,                                         \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC),                                 \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, siz,                                               \
        (((((lrs) - (uls) + 1) * siz##_LINE_BYTES) + 7) >> 3),          \
        tmem, rtile, pal, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPSetTileSize(rtile,                                              \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC)

#define gDPLoadTextureTile_4b(pkt, timg, fmt, width, height,                \
                                   uls, ult, lrs, lrt, pal,                 \
                                   cms, cmt, masks, maskt, shifts, shiftt)  \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_8b, ((width) >> 1), timg);        \
    gDPSetTile(pkt, fmt, G_IM_SIZ_8b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), 0,                         \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);          \
    gDPLoadSync(pkt);                                                       \
    gDPLoadTile(pkt, G_TX_LOADTILE,                                         \
        (uls) << (G_TEXTURE_IMAGE_FRAC - 1),                                \
        (ult) << (G_TEXTURE_IMAGE_FRAC),                                    \
        (lrs) << (G_TEXTURE_IMAGE_FRAC - 1),                                \
        (lrt) << (G_TEXTURE_IMAGE_FRAC));                                   \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), 0,                         \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);      \
    gDPSetTileSize(pkt, G_TX_RENDERTILE,                                    \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                      \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                     \
})

/*
 *  Load texture tile.  Allows tmem address and render tile to be specified.
 *  Useful for loading multiple tiles.
 */
#define gDPLoadMultiTile_4b(pkt, timg, tmem, rtile, fmt, width, height,     \
                                 uls, ult, lrs, lrt, pal,                   \
                                 cms, cmt, masks, maskt, shifts, shiftt)    \
_DW({                                                                       \
    gDPSetTextureImage(pkt, fmt, G_IM_SIZ_8b, ((width) >> 1), timg);        \
    gDPSetTile(pkt, fmt, G_IM_SIZ_8b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), tmem,                      \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);          \
    gDPLoadSync(pkt);                                                       \
    gDPLoadTile(pkt, G_TX_LOADTILE,                                         \
        (uls) << (G_TEXTURE_IMAGE_FRAC - 1),                                \
        (ult) << (G_TEXTURE_IMAGE_FRAC),                                    \
        (lrs) << (G_TEXTURE_IMAGE_FRAC - 1),                                \
        (lrt) << (G_TEXTURE_IMAGE_FRAC));                                   \
    gDPPipeSync(pkt);                                                       \
    gDPSetTile(pkt, fmt, G_IM_SIZ_4b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), tmem,                      \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);                \
    gDPSetTileSize(pkt, rtile,                                              \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                      \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                      \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                     \
})

#define gsDPLoadTextureTile_4b(timg, fmt, width, height,                \
                               uls, ult, lrs, lrt, pal,                 \
                               cms, cmt, masks, maskt, shifts, shiftt)  \
    gsDPSetTextureImage(fmt, G_IM_SIZ_8b, ((width) >> 1), timg),        \
    gsDPSetTile(fmt, G_IM_SIZ_8b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), 0,                     \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPLoadSync(),                                                     \
    gsDPLoadTile(G_TX_LOADTILE,                                         \
        (uls) << (G_TEXTURE_IMAGE_FRAC - 1),                            \
        (ult) << (G_TEXTURE_IMAGE_FRAC),                                \
        (lrs) << (G_TEXTURE_IMAGE_FRAC - 1),                            \
        (lrt) << (G_TEXTURE_IMAGE_FRAC)),                               \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), 0,                     \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts),  \
    gsDPSetTileSize(G_TX_RENDERTILE,                                    \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC)

/*
 *  Load texture tile.  Allows tmem address and render tile to be specified.
 *  Useful for loading multiple tiles.
 */
#define gsDPLoadMultiTile_4b(timg, tmem, rtile, fmt, width, height,     \
                             uls, ult, lrs, lrt, pal,                   \
                             cms, cmt, masks, maskt, shifts, shiftt)    \
                                                                        \
    gsDPSetTextureImage(fmt, G_IM_SIZ_8b, ((width) >> 1), timg),        \
    gsDPSetTile(fmt, G_IM_SIZ_8b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), tmem,                  \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts),      \
    gsDPLoadSync(),                                                     \
    gsDPLoadTile(G_TX_LOADTILE,                                         \
        (uls) << (G_TEXTURE_IMAGE_FRAC - 1),                            \
        (ult) << (G_TEXTURE_IMAGE_FRAC),                                \
        (lrs) << (G_TEXTURE_IMAGE_FRAC - 1),                            \
        (lrt) << (G_TEXTURE_IMAGE_FRAC)),                               \
    gsDPPipeSync(),                                                     \
    gsDPSetTile(fmt, G_IM_SIZ_4b,                                       \
        (((((lrs) - (uls) + 1) >> 1) + 7) >> 3), tmem,                  \
        rtile, pal, cmt, maskt, shiftt, cms, masks, shifts),            \
    gsDPSetTileSize(rtile,                                              \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC)

/*
 *  Load a 16-entry palette (for 4-bit CI textures)
 *  Assumes a 16 entry tlut is being loaded, palette # is 0-15
 */
#ifndef _HW_VERSION_1

#define gDPLoadTLUT_pal16(pkt, pal, dram)                           \
_DW({                                                               \
    gDPSetTextureImage(pkt, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, dram);  \
    gDPTileSync(pkt);                                               \
    gDPSetTile(pkt, 0, 0, 0, (256 + (((pal) & 0xF) * 16)),          \
                    G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0);            \
    gDPLoadSync(pkt);                                               \
    gDPLoadTLUTCmd(pkt, G_TX_LOADTILE, 15);                         \
    gDPPipeSync(pkt);                                               \
})

#else /* **** WORKAROUND hardware 1 load_tlut bug ****** */

#define gDPLoadTLUT_pal16(pkt, pal, dram)                               \
    _gDPLoadTextureBlock(pkt, dram, (256 + (((pal) & 0xF) * 16)),       \
                              G_IM_FMT_RGBA, G_IM_SIZ_16b, 4 * 16, 1,   \
                              pal, 0, 0, 0, 0, 0, 0)

#endif /* _HW_VERSION_1 */


/*
 *  Load a 16-entry palette (for 4-bit CI textures)
 *  Assumes a 16 entry tlut is being loaded, palette # is 0-15
 */
#ifndef _HW_VERSION_1

#define gsDPLoadTLUT_pal16(pal, dram)                           \
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, dram),  \
    gsDPTileSync(),                                             \
    gsDPSetTile(0, 0, 0, (256 + (((pal) & 0xF) * 16)),          \
                G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),            \
    gsDPLoadSync(),                                             \
    gsDPLoadTLUTCmd(G_TX_LOADTILE, 15),                         \
    gsDPPipeSync()

#else /* **** WORKAROUND hardware 1 load_tlut bug ****** */

#define gsDPLoadTLUT_pal16(pal, dram)                               \
    _gsDPLoadTextureBlock(dram, (256 + (((pal) & 0xF) * 16)),       \
                          G_IM_FMT_RGBA, G_IM_SIZ_16b, 4 * 16, 1,   \
                          pal, 0, 0, 0, 0, 0, 0)

#endif /* _HW_VERSION_1 */

/*
 *  Load a 256-entry palette (for 8-bit CI textures)
 *  Assumes a 256 entry tlut is being loaded, palette # is not used
 */
#ifndef _HW_VERSION_1

#define gDPLoadTLUT_pal256(pkt, dram)                                   \
_DW({                                                                   \
    gDPSetTextureImage(pkt, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, dram);      \
    gDPTileSync(pkt);                                                   \
    gDPSetTile(pkt, 0, 0, 0, 256,                                       \
                    G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0);                \
    gDPLoadSync(pkt);                                                   \
    gDPLoadTLUTCmd(pkt, G_TX_LOADTILE, 255);                            \
    gDPPipeSync(pkt);                                                   \
})

#else /* **** WORKAROUND hardware 1 load_tlut bug ****** */

#define gDPLoadTLUT_pal256(pkt, dram)                                   \
    _gDPLoadTextureBlock(pkt, dram, 256,                                \
                              G_IM_FMT_RGBA, G_IM_SIZ_16b, 4 * 256, 1,  \
                              0, 0, 0, 0, 0, 0, 0)


#endif /* _HW_VERSION_1 */


#ifndef _HW_VERSION_1

#define gsDPLoadTLUT_pal256(dram)                               \
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, dram),  \
    gsDPTileSync(),                                             \
    gsDPSetTile(0, 0, 0, 256,                                   \
                G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),            \
    gsDPLoadSync(),                                             \
    gsDPLoadTLUTCmd(G_TX_LOADTILE, 255),                        \
    gsDPPipeSync()

#else /* **** WORKAROUND hardware 1 load_tlut bug ****** */

#define gsDPLoadTLUT_pal256(dram)                                   \
    _gsDPLoadTextureBlock(dram, 256,                                \
                          G_IM_FMT_RGBA, G_IM_SIZ_16b, 4 * 256, 1,  \
                          0, 0, 0, 0, 0, 0, 0)

#endif /* _HW_VERSION_1 */


#ifndef _HW_VERSION_1

#define gDPLoadTLUT(pkt, count, tmemaddr, dram)                     \
_DW({                                                               \
    gDPSetTextureImage(pkt, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, dram);  \
    gDPTileSync(pkt);                                               \
    gDPSetTile(pkt, 0, 0, 0, tmemaddr,                              \
                    G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0);            \
    gDPLoadSync(pkt);                                               \
    gDPLoadTLUTCmd(pkt, G_TX_LOADTILE, ((count) - 1));              \
    gDPPipeSync(pkt);                                               \
})

#else /* **** WORKAROUND hardware 1 load_tlut bug ****** */

#define gDPLoadTLUT(pkt, count, tmemaddr, dram)                             \
        _gDPLoadTextureBlock(pkt, dram, tmemaddr,                           \
                                  G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, count,    \
                                  0, 0, 0, 0, 0, 0, 0)

#endif /* _HW_VERSION_1 */


#ifndef _HW_VERSION_1

#define gsDPLoadTLUT(count, tmemaddr, dram)                     \
    gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, dram),  \
    gsDPTileSync(),                                             \
    gsDPSetTile(0, 0, 0, tmemaddr,                              \
                G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),            \
    gsDPLoadSync(),                                             \
    gsDPLoadTLUTCmd(G_TX_LOADTILE, ((count) - 1)),              \
    gsDPPipeSync()

#else /* **** WORKAROUND hardware 1 load_tlut bug ****** */

#define gsDPLoadTLUT(count, tmemaddr, dram)                             \
        _gsDPLoadTextureBlock(dram, tmemaddr,                           \
                              G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, count,    \
                              0, 0, 0, 0, 0, 0, 0)

#endif /* _HW_VERSION_1 */

#define gDPSetScissor(pkt, mode, ulx, uly, lrx, lry)                \
_DW({                                                               \
    Gfx *_g = (Gfx *)pkt;                                           \
                                                                    \
    _g->words.w0 = (_SHIFTL(G_SETSCISSOR,               24,  8) |   \
                    _SHIFTL((int)((float)(ulx) * 4.0f), 12, 12) |   \
                    _SHIFTL((int)((float)(uly) * 4.0f),  0, 12));   \
    _g->words.w1 = (_SHIFTL(mode,                       24,  2) |   \
                    _SHIFTL((int)((float)(lrx) * 4.0f), 12, 12) |   \
                    _SHIFTL((int)((float)(lry) * 4.0f),  0, 12));   \
})


#define gDPSetScissorFrac(pkt, mode, ulx, uly, lrx, lry)    \
_DW({                                                       \
    Gfx *_g = (Gfx *)pkt;                                   \
                                                            \
    _g->words.w0 = (_SHIFTL(G_SETSCISSOR, 24,  8) |         \
                    _SHIFTL((int)((ulx)), 12, 12) |         \
                    _SHIFTL((int)((uly)),  0, 12));         \
    _g->words.w1 = (_SHIFTL(mode,         24,  2) |         \
                    _SHIFTL((int)((lrx)), 12, 12) |         \
                    _SHIFTL((int)((lry)),  0, 12));         \
})

#define gsDPSetScissor(mode, ulx, uly, lrx, lry)    \
{                                                   \
   (_SHIFTL(G_SETSCISSOR,               24,  8) |   \
    _SHIFTL((int)((float)(ulx) * 4.0f), 12, 12) |   \
    _SHIFTL((int)((float)(uly) * 4.0f),  0, 12)),   \
   (_SHIFTL(mode,                       24,  2) |   \
    _SHIFTL((int)((float)(lrx) * 4.0f), 12, 12) |   \
    _SHIFTL((int)((float)(lry) * 4.0f),  0, 12))    \
}

#define gsDPSetScissorFrac(mode, ulx, uly, lrx, lry)    \
{                                                       \
   (_SHIFTL(G_SETSCISSOR, 24,  8) |                     \
    _SHIFTL((int)((ulx)), 12, 12) |                     \
    _SHIFTL((int)((uly)),  0, 12)),                     \
   (_SHIFTL(mode,       24,  2) |                       \
    _SHIFTL((int)(lrx), 12, 12) |                       \
    _SHIFTL((int)(lry),  0, 12))                        \
}

/* Fraction never used in fill */
#define gDPFillRectangle(pkt, ulx, uly, lrx, lry)   \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_FILLRECT, 24,  8) |   \
                    _SHIFTL((lrx),      14, 10) |   \
                    _SHIFTL((lry),       2, 10));   \
    _g->words.w1 = (_SHIFTL((ulx), 14, 10) |        \
                    _SHIFTL((uly), 2, 10));         \
})

#define gsDPFillRectangle(ulx, uly, lrx, lry)   \
{                                               \
   (_SHIFTL(G_FILLRECT, 24,  8) |               \
    _SHIFTL((lrx),      14, 10) |               \
    _SHIFTL((lry),       2, 10)),               \
   (_SHIFTL((ulx), 14, 10) |                    \
    _SHIFTL((uly),  2, 10))                     \
}

/* like gDPFillRectangle but accepts negative arguments */
#define gDPScisFillRectangle(pkt, ulx, uly, lrx, lry)   \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    _g->words.w0 = (_SHIFTL(G_FILLRECT,    24,  8) |    \
                    _SHIFTL(MAX((lrx), 0), 14, 10) |    \
                    _SHIFTL(MAX((lry), 0),  2, 10));    \
    _g->words.w1 = (_SHIFTL(MAX((ulx), 0), 14, 10) |    \
                    _SHIFTL(MAX((uly), 0),  2, 10));    \
})

#define gDPSetConvert(pkt, k0, k1, k2, k3, k4, k5)  \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_SETCONVERT, 24, 8) |  \
                    _SHIFTL(k0,           13, 9) |  \
                    _SHIFTL(k1,            4, 9) |  \
                    _SHIFTR(k2,            5, 4));  \
    _g->words.w1 = (_SHIFTL(k2, 27, 5) |            \
                    _SHIFTL(k3, 18, 9) |            \
                    _SHIFTL(k4,  9, 9) |            \
                    _SHIFTL(k5,  0, 9));            \
})

#define gsDPSetConvert(k0, k1, k2, k3, k4, k5)  \
{                                               \
   (_SHIFTL(G_SETCONVERT, 24, 8) |              \
    _SHIFTL(k0,           13, 9) |              \
    _SHIFTL(k1,            4, 9) |              \
    _SHIFTL(k2,            5, 4)),              \
   (_SHIFTL(k2, 27, 5) |                        \
    _SHIFTL(k3, 18, 9) |                        \
    _SHIFTL(k4,  9, 9) |                        \
    _SHIFTL(k5,  0, 9))                         \
}

#define gDPSetKeyR(pkt, cR, sR, wR)             \
_DW({                                           \
    Gfx *_g = (Gfx *)(pkt);                     \
                                                \
    _g->words.w0 = _SHIFTL(G_SETKEYR, 24, 8);   \
    _g->words.w1 = (_SHIFTL(wR, 16, 12) |       \
                    _SHIFTL(cR,  8,  8) |       \
                    _SHIFTL(sR,  0,  8));       \
})

#define gsDPSetKeyR(cR, sR, wR) \
{                               \
    _SHIFTL(G_SETKEYR, 24, 8),  \
   (_SHIFTL(wR, 16, 12) |       \
    _SHIFTL(cR,  8,  8) |       \
    _SHIFTL(sR,  0,  8))        \
}

#define gDPSetKeyGB(pkt, cG, sG, wG, cB, sB, wB)    \
_DW({                                               \
    Gfx *_g = (Gfx *)(pkt);                         \
                                                    \
    _g->words.w0 = (_SHIFTL(G_SETKEYGB, 24,  8) |   \
                    _SHIFTL(wG,         12, 12) |   \
                    _SHIFTL(wB,          0, 12));   \
    _g->words.w1 = (_SHIFTL(cG, 24, 8) |            \
                    _SHIFTL(sG, 16, 8) |            \
                    _SHIFTL(cB,  8, 8) |            \
                    _SHIFTL(sB,  0, 8));            \
})

#define gsDPSetKeyGB(cG, sG, wG, cB, sB, wB)    \
{                                               \
   (_SHIFTL(G_SETKEYGB, 24,  8) |               \
    _SHIFTL(wG,         12, 12) |               \
    _SHIFTL(wB,          0, 12)),               \
   (_SHIFTL(cG, 24,  8) |                       \
    _SHIFTL(sG, 16,  8) |                       \
    _SHIFTL(cB,  8,  8) |                       \
    _SHIFTL(sB,  0,  8))                        \
}

#define gDPNoParam(pkt, cmd)            \
_DW({                                   \
    Gfx *_g = (Gfx *)(pkt);             \
                                        \
    _g->words.w0 = _SHIFTL(cmd, 24, 8); \
    _g->words.w1 = 0;                   \
})

#define gsDPNoParam(cmd)    \
{                           \
    _SHIFTL(cmd, 24, 8),    \
    0                       \
}

#define gDPParam(pkt, cmd, param)       \
_DW({                                   \
    Gfx *_g = (Gfx *)(pkt);             \
                                        \
    _g->words.w0 = _SHIFTL(cmd, 24, 8); \
    _g->words.w1 = (param);             \
})

#define gsDPParam(cmd, param)   \
{                               \
    _SHIFTL(cmd, 24, 8),        \
    (param)                     \
}

/* Notice that textured rectangles are 128-bit commands, therefore
 * gsDPTextureRectangle() should not be used in display lists
 * under normal circumstances (use gsSPTextureRectangle()).
 * That is also why there is no gDPTextureRectangle() macros.
 */
#define gsDPTextureRectangle(xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
{                                                                       \
   (_SHIFTL(G_TEXRECT, 24,  8) |                                        \
    _SHIFTL(xh,        12, 12) |                                        \
    _SHIFTL(yh,         0, 12)),                                        \
   (_SHIFTL(tile, 24,  3) |                                             \
    _SHIFTL(xl,   12, 12) |                                             \
    _SHIFTL(yl,    0, 12)),                                             \
},                                                                      \
{                                                                       \
   (_SHIFTL(s, 16, 16) |                                                \
    _SHIFTL(t,  0, 16)),                                                \
   (_SHIFTL(dsdx, 16, 16) |                                             \
    _SHIFTL(dtdy,  0, 16))                                              \
}

#define gDPTextureRectangle(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
_DW({                                                                       \
    Gfx *_g = (Gfx *)(pkt);                                                 \
    if (pkt);                                                               \
    _g->words.w0 = (_SHIFTL(G_TEXRECT, 24,  8) |                            \
                    _SHIFTL(xh,        12, 12) |                            \
                    _SHIFTL(yh,         0, 12));                            \
    _g->words.w1 = (_SHIFTL(tile, 24,  3) |                                 \
                    _SHIFTL(xl,   12, 12) |                                 \
                    _SHIFTL(yl,    0, 12));                                 \
    _g ++;                                                                  \
    _g->words.w0 = (_SHIFTL(s, 16, 16) |                                    \
                    _SHIFTL(t,  0, 16));                                    \
    _g->words.w1 = (_SHIFTL(dsdx, 16, 16) |                                 \
                    _SHIFTL(dtdy,  0, 16));                                 \
})

#define gsDPTextureRectangleFlip(xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
{                                                                           \
   (_SHIFTL(G_TEXRECTFLIP, 24,  8) |                                        \
    _SHIFTL(xh,            12, 12) |                                        \
    _SHIFTL(yh,             0, 12)),                                        \
   (_SHIFTL(tile, 24,  3) |                                                 \
    _SHIFTL(xl,   12, 12) |                                                 \
    _SHIFTL(yl,    0, 12)),                                                 \
},                                                                          \
{                                                                           \
   (_SHIFTL(s, 16, 16) |                                                    \
    _SHIFTL(t,  0, 16)),                                                    \
   (_SHIFTL(dsdx, 16, 16) |                                                 \
    _SHIFTL(dtdy,  0, 16))                                                  \
}

#define gDPTextureRectangleFlip(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
_DW({                                                                           \
    Gfx *_g = (Gfx *)(pkt);                                                     \
    if (pkt);                                                                   \
    _g->words.w0 = (_SHIFTL(G_TEXRECTFLIP, 24,  8) |                            \
                    _SHIFTL(xh,            12, 12) |                            \
                    _SHIFTL(yh,             0, 12));                            \
    _g->words.w1 = (_SHIFTL(tile, 24,  3) |                                     \
                    _SHIFTL(xl,   12, 12) |                                     \
                    _SHIFTL(yl,    0, 12));                                     \
    _g ++;                                                                      \
    _g->words.w0 = (_SHIFTL(s, 16, 16) |                                        \
                    _SHIFTL(t,  0, 16));                                        \
    _g->words.w1 = (_SHIFTL(dsdx, 16, 16) |                                     \
                    _SHIFTL(dtdy,  0, 16));                                     \
})

#define gsSPTextureRectangle(xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
   (_SHIFTL(G_TEXRECT, 24,  8) |                                        \
    _SHIFTL(xh,        12, 12) |                                        \
    _SHIFTL(yh,         0, 12)),                                        \
   (_SHIFTL(tile, 24,  3) |                                             \
    _SHIFTL(xl,   12, 12) |                                             \
    _SHIFTL(yl,    0, 12)),                                             \
   gsImmp1(G_RDPHALF_1,                                                 \
       (_SHIFTL(s, 16, 16) |                                            \
        _SHIFTL(t,  0, 16))),                                           \
   gsImmp1(G_RDPHALF_2,                                                 \
       (_SHIFTL(dsdx, 16, 16) |                                         \
        _SHIFTL(dtdy,  0, 16)))

#define gSPTextureRectangle(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
_DW({                                                                       \
    Gfx *_g = (Gfx *)(pkt);                                                 \
                                                                            \
    _g->words.w0 = (_SHIFTL(G_TEXRECT, 24,  8) |                            \
                    _SHIFTL(xh,        12, 12) |                            \
                    _SHIFTL(yh,         0, 12));                            \
    _g->words.w1 = (_SHIFTL(tile, 24,  3) |                                 \
                    _SHIFTL(xl,   12, 12) |                                 \
                    _SHIFTL(yl,    0, 12));                                 \
   gImmp1(pkt, G_RDPHALF_1,                                                 \
       (_SHIFTL(s, 16, 16) |                                                \
        _SHIFTL(t,  0, 16)));                                               \
   gImmp1(pkt, G_RDPHALF_2,                                                 \
       (_SHIFTL(dsdx, 16, 16) |                                             \
        _SHIFTL(dtdy,  0, 16)));                                            \
})

/* like gSPTextureRectangle but accepts negative position arguments */
#define gSPScisTextureRectangle(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy)        \
_DW({                                                                               \
    Gfx *_g = (Gfx *)(pkt);                                                         \
                                                                                    \
    _g->words.w0 = (_SHIFTL(G_TEXRECT,        24,  8) |                             \
                    _SHIFTL(MAX((s16)(xh),0), 12, 12) |                             \
                    _SHIFTL(MAX((s16)(yh),0),  0, 12));                             \
    _g->words.w1 = (_SHIFTL((tile),           24,  3) |                             \
                    _SHIFTL(MAX((s16)(xl),0), 12, 12) |                             \
                    _SHIFTL(MAX((s16)(yl),0),  0, 12));                             \
   gImmp1(pkt, G_RDPHALF_1,                                                         \
       (_SHIFTL(((s) -                                                              \
                   (((s16)(xl)   < 0) ?                                             \
                   (((s16)(dsdx) < 0) ?                                             \
                    (MAX((((s16)(xl) * (s16)(dsdx)) >> 7), 0))  :                   \
                    (MIN((((s16)(xl) * (s16)(dsdx)) >> 7), 0))) : 0)), 16, 16) |    \
        _SHIFTL(((t) -                                                              \
                   ((     (yl)   < 0) ?                                             \
                   (((s16)(dtdy) < 0) ?                                             \
                    (MAX((((s16)(yl) * (s16)(dtdy)) >> 7), 0))  :                   \
                    (MIN((((s16)(yl) * (s16)(dtdy)) >> 7), 0))) : 0)),  0, 16)));   \
   gImmp1(pkt, G_RDPHALF_2,                                                         \
       (_SHIFTL((dsdx), 16, 16) |                                                   \
        _SHIFTL((dtdy),  0, 16)));                                                  \
})

#define gsSPTextureRectangleFlip(xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
   (_SHIFTL(G_TEXRECTFLIP, 24,  8) |                                        \
    _SHIFTL(xh,            12, 12) |                                        \
    _SHIFTL(yh,             0, 12)),                                        \
   (_SHIFTL(tile, 24,  3) |                                                 \
    _SHIFTL(xl,   12, 12) |                                                 \
    _SHIFTL(yl,    0, 12)),                                                 \
   gsImmp1(G_RDPHALF_1,                                                     \
       (_SHIFTL(s, 16, 16) |                                                \
        _SHIFTL(t,  0, 16))),                                               \
   gsImmp1(G_RDPHALF_2,                                                     \
       (_SHIFTL(dsdx, 16, 16) |                                             \
        _SHIFTL(dtdy,  0, 16)))

#define gSPTextureRectangleFlip(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy)    \
_DW({                                                                           \
    Gfx *_g = (Gfx *)(pkt);                                                     \
                                                                                \
    _g->words.w0 = (_SHIFTL(G_TEXRECTFLIP, 24,  8) |                            \
                    _SHIFTL(xh,            12, 12) |                            \
                    _SHIFTL(yh,             0, 12));                            \
    _g->words.w1 = (_SHIFTL(tile, 24,  3) |                                     \
                    _SHIFTL(xl,   12, 12) |                                     \
                    _SHIFTL(yl,    0, 12));                                     \
   gImmp1(pkt, G_RDPHALF_1,                                                     \
       (_SHIFTL(s, 16, 16) |                                                    \
        _SHIFTL(t,  0, 16)));                                                   \
   gImmp1(pkt, G_RDPHALF_2,                                                     \
       (_SHIFTL(dsdx, 16, 16) |                                                 \
        _SHIFTL(dtdy,  0, 16)));                                                \
})

#define gsDPWord(wordhi, wordlo)                    \
    gsImmp1(G_RDPHALF_1, (unsigned int)(wordhi)),   \
    gsImmp1(G_RDPHALF_2, (unsigned int)(wordlo))

#define gDPWord(pkt, wordhi, wordlo)                    \
_DW({                                                   \
    Gfx *_g = (Gfx *)(pkt);                             \
                                                        \
    gImmp1(pkt, G_RDPHALF_1, (unsigned int)(wordhi));   \
    gImmp1(pkt, G_RDPHALF_2, (unsigned int)(wordlo));   \
})

#define gDPFullSync(pkt)        gDPNoParam(pkt, G_RDPFULLSYNC)
#define gsDPFullSync()          gsDPNoParam(    G_RDPFULLSYNC)
#define gDPTileSync(pkt)        gDPNoParam(pkt, G_RDPTILESYNC)
#define gsDPTileSync()          gsDPNoParam(    G_RDPTILESYNC)
#define gDPPipeSync(pkt)        gDPNoParam(pkt, G_RDPPIPESYNC)
#define gsDPPipeSync()          gsDPNoParam(    G_RDPPIPESYNC)
#define gDPLoadSync(pkt)        gDPNoParam(pkt, G_RDPLOADSYNC)
#define gsDPLoadSync()          gsDPNoParam(    G_RDPLOADSYNC)
#define gDPNoOp(pkt)            gDPNoParam(pkt, G_NOOP)
#define gsDPNoOp()              gsDPNoParam(    G_NOOP)
#define gDPNoOpTag(pkt, tag)    gDPParam(pkt,   G_NOOP, tag)
#define gsDPNoOpTag(tag)        gsDPParam(      G_NOOP, tag)

#ifdef GBI_DEBUG

#define gDPNoOpHere(pkt, file, line)        gDma1p(pkt, G_NOOP, file, line, 1)
#define gDPNoOpString(pkt, data, n)         gDma1p(pkt, G_NOOP, data, n, 2)
#define gDPNoOpWord(pkt, data, n)           gDma1p(pkt, G_NOOP, data, n, 3)
#define gDPNoOpFloat(pkt, data, n)          gDma1p(pkt, G_NOOP, data, n, 4)
#define gDPNoOpQuiet(pkt)                   gDma1p(pkt, G_NOOP, 0, 0, 5)
#define gDPNoOpVerbose(pkt, n)              gDma1p(pkt, G_NOOP, 0, n, 5)
#define gDPNoOpCallBack(pkt, callback, arg) gDma1p(pkt, G_NOOP, callback, arg, 6)
#define gDPNoOpOpenDisp(pkt, file, line)    gDma1p(pkt, G_NOOP, file, line, 7)
#define gDPNoOpCloseDisp(pkt, file, line)   gDma1p(pkt, G_NOOP, file, line, 8)
#define gDPNoOpTag3(pkt, type, data, n)     gDma1p(pkt, G_NOOP, data, n, type)

#else

#define gDPNoOpHere(pkt, file, line)
#define gDPNoOpString(pkt, data, n)
#define gDPNoOpWord(pkt, data, n)
#define gDPNoOpFloat(pkt, data, n)
#define gDPNoOpQuiet(pkt)
#define gDPNoOpVerbose(pkt, n)
#define gDPNoOpCallBack(pkt, callback, arg)
#define gDPNoOpOpenDisp(pkt, file, line)
#define gDPNoOpCloseDisp(pkt, file, line)
#define gDPNoOpTag3(pkt, type, data, n)

#endif /* GBI_DEBUG */

#endif

#endif // ENABLE_F3DEX3

#endif
