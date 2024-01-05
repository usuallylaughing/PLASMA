" SANE"   LOADMOD"  "
" FPSTR"  LOADMOD"  "
" FPU"    LOADMOD"  "

0 VARIABLE FPERR

LOOKUP FPU CONSTANT FPULIB
FPULIB  0 IFACE PLASMA _FPRESET         : FPRESET      _FPRESET      FPERR ! ;
FPULIB  1 IFACE PLASMA _FPGETENV        : FPGETENV     _FPGETENV     FPERR ! ;
FPULIB  2 IFACE PLASMA _FPSETENV        : FPSETENV     _FPSETENV     FPERR ! ;
FPULIB  3 IFACE PLASMA _FPTESTEXEPT     : FPTESTECEPT  _FPTESTEXEPT  FPERR ! ;
FPULIB  4 IFACE PLASMA _FPSETEXCEPT     : FPSETEXCEPT  _FPSETEXCEPT  FPERR ! ;
FPULIB  5 IFACE PLASMA _FPENTERPROC     : FPENTERPROC  _FPENTERPROC  FPERR ! ;
FPULIB  6 IFACE PLASMA _FPEXITPROC      : FPEXITPROC   _FPEXITPROC   FPERR ! ;
FPULIB  7 IFACE PLASMA _FPCONSTPI       : FPCONSTPI    _FPCONSTPI    FPERR ! ;
FPULIB  8 IFACE PLASMA _FPCONSTE        : FPCONSTE     _FPCONSTE     FPERR ! ;
FPULIB  9 IFACE PLASMA _FPINT@          : FPINT@       _FPINT@       FPERR ! ;
FPULIB 10 IFACE PLASMA _FPSGL@          : FPSGL@       _FPSGL@       FPERR ! ;
FPULIB 11 IFACE PLASMA _FPDBL@          : FPDBL@       _FPDBL@       FPERR ! ;
FPULIB 12 IFACE PLASMA _FPEXT@          : FPEXT@       _FPEXT@       FPERR ! ;
FPULIB 13 IFACE PLASMA _FPSTR@          : FPSTR@       _FPSTR@       FPERR ! ;
FPULIB 14 IFACE PLASMA _FPINT!          : FPINT!       _FPINT!       FPERR ! ;
FPULIB 15 IFACE PLASMA _FPSGL!          : FPSGL!       _FPSGL!       FPERR ! ;
FPULIB 16 IFACE PLASMA _FPDBL!          : FPDBL!       _FPDBL!       FPERR ! ;
FPULIB 17 IFACE PLASMA _FPEXT!          : FPEXT!       _FPEXT!       FPERR ! ;
FPULIB 18 IFACE PLASMA _FPSTR!          : FPSTR!       _FPSTR!       FPERR ! ;
FPULIB 19 IFACE PLASMA _FPINTLOD        : FPINTLOD     _FPINTLOD     FPERR ! ;
FPULIB 20 IFACE PLASMA _FPSGLLOD        : FPSGLLOD     _FPSGLLOD     FPERR ! ;
FPULIB 21 IFACE PLASMA _FPDBLLOD        : FPDBLLOD     _FPDBLLOD     FPERR ! ;
FPULIB 22 IFACE PLASMA _FPEXTLOD        : FPEXTLOD     _FPEXTLOD     FPERR ! ;
FPULIB 23 IFACE PLASMA _FPSTRLOD        : FPSTRLOD     _FPSTRLOD     FPERR ! ;
FPULIB 24 IFACE PLASMA _FPINTSTOR       : FPINTSTOR    _FPINTSTOR    FPERR ! ;
FPULIB 25 IFACE PLASMA _FPSGLSTOR       : FPSGLSTOR    _FPSGLSTOR    FPERR ! ;
FPULIB 26 IFACE PLASMA _FPDBLSTOR       : FPDBLSTOR    _FPDBLSTOR    FPERR ! ;
FPULIB 27 IFACE PLASMA _FPEXTSTOR       : FPEXTSTOR    _FPEXTSTOR    FPERR ! ;
FPULIB 28 IFACE PLASMA _FPSTRSTOR       : FPSTRSTOR    _FPSTRSTOR    FPERR ! ;
FPULIB 29 IFACE PLASMA _FPSHIFTUP       : FPSHIFTUP    _FPSHIFTUP    FPERR ! ;
FPULIB 30 IFACE PLASMA _FPSHIFTDOWN     : FPSHIFTDOWN  _FPSHIFTDOWN  FPERR ! ;
                                        : FPDROP       _FPSHIFTDOWN  FPERR ! ;
FPULIB 31 IFACE PLASMA _FPROTATEUP      : FPROTATEUP   _FPROTATEUP   FPERR ! ;
FPULIB 32 IFACE PLASMA _FPROTATEDOWN    : FPROTATEDOWN _FPROTATEDOWN FPERR ! ;
FPULIB 33 IFACE PLASMA _FPDUP           : FPDUP        _FPDUP        FPERR ! ;
FPULIB 34 IFACE PLASMA _FPSWAP          : FPSWAP       _FPSWAP       FPERR ! ;
FPULIB 35 IFACE PLASMA _FPCLEAR         : FPCLEAR      _FPCLEAR      FPERR ! ;
FPULIB 36 IFACE PLASMA _FP+             : FP+          _FP+          FPERR ! ;
FPULIB 37 IFACE PLASMA _FP-             : FP-          _FP-          FPERR ! ;
FPULIB 38 IFACE PLASMA _FP*             : FP*          _FP*          FPERR ! ;
FPULIB 39 IFACE PLASMA _FP/             : FP/          _FP/          FPERR ! ;
FPULIB 40 IFACE PLASMA _FPREM           : FPREM        _FPREM        FPERR ! ;
FPULIB 41 IFACE PLASMA _FPNEG           : FPNEG        _FPNEG        FPERR ! ;
FPULIB 42 IFACE PLASMA _FPABS           : FPABS        _FPABS        FPERR ! ;
FPULIB 43 IFACE PLASMA _FPTYPE          : FPTYPE       _FPTYPE       FPERR ! ;
FPULIB 44 IFACE PLASMA _FPCMP           : FPCMP        _FPCMP        FPERR ! ;
FPULIB 45 IFACE PLASMA _FPLOGB          : FPLOGB       _FPLOGB       FPERR ! ;
FPULIB 46 IFACE PLASMA _FPSCALEBINT     : FPSCALEBINT  _FPSCALEBINT  FPERR ! ;
FPULIB 47 IFACE PLASMA _FPTRUNC         : FPTRUNC      _FPTRUNC      FPERR ! ;
FPULIB 48 IFACE PLASMA _FPROUND         : FPROUND      _FPROUND      FPERR ! ;
FPULIB 49 IFACE PLASMA _FPSQRT          : FPSQRT       _FPSQRT       FPERR ! ;
FPULIB 50 IFACE PLASMA _FPSQUARE        : FPSQUARE     _FPSQUARE     FPERR ! ;
FPULIB 51 IFACE PLASMA _FPCOS           : FPCOS        _FPCOS        FPERR ! ;
FPULIB 52 IFACE PLASMA _FPSIN           : FPSIN        _FPSIN        FPERR ! ;
FPULIB 53 IFACE PLASMA _FPTAN           : FPTAN        _FPTAN        FPERR ! ;
FPULIB 54 IFACE PLASMA _FPATAN          : FPATAN       _FPATAN       FPERR ! ;
FPULIB 55 IFACE PLASMA _FPLOG2          : FPLOG2       _FPLOG2       FPERR ! ;
FPULIB 56 IFACE PLASMA _FPLOG21         : FPLOG21      _FPLOG21      FPERR ! ;
FPULIB 57 IFACE PLASMA _FPLN            : FPLN         _FPLN         FPERR ! ;
FPULIB 58 IFACE PLASMA _FPLN1           : FPLN1        _FPLN1        FPERR ! ;
FPULIB 59 IFACE PLASMA _FPPOW2          : FPPOW2       _FPPOW2       FPERR ! ;
FPULIB 60 IFACE PLASMA _FPPOW21         : FPPOW21      _FPPOW21      FPERR ! ;
FPULIB 61 IFACE PLASMA _FPPOWE          : FPPOWE       _FPPOWE       FPERR ! ;
FPULIB 62 IFACE PLASMA _FPPOWE1         : FPPOWE1      _FPPOWE1      FPERR ! ;
FPULIB 63 IFACE PLASMA _FPPOWE21        : FPPOWE21     _FPPOWE21     FPERR ! ;
FPULIB 64 IFACE PLASMA _FPPOWINT        : FPPOWINT     _FPPOWINT     FPERR ! ;
FPULIB 65 IFACE PLASMA _FPPOW           : FPPOW        _FPPOW        FPERR ! ;
FPULIB 66 IFACE PLASMA _FPCOMP          : FPCOMP       _FPCOMP       FPERR ! ;
FPULIB 67 IFACE PLASMA _FPANNUITY       : FPANNUITY    _FPANNUITY    FPERR ! ;
FPULIB 68 IFACE PLASMA _FPRANDNUM       : FPRANDNUM    _FPRANDNUM    FPERR ! ;

1 CONSTANT FPSTR.FIXED ( Fixed count of fractional digits )
0 CONSTANT FPSTR.FLOAT ( Floating count of fractional digits )
2 CONSTANT FPSTR.STRIP ( Strip trailing fractional zeros )
4 CONSTANT FPSTR.EXP   ( Force exponential format )
8 CONSTANT FPSTR.FLEX  ( Flexible switch to EXP format if over/underflow )

: FP. HERE 10 4 FPSTR.FLEX FPSTR! HERE (.") ;

FPRESET ( Load SANE code and set up libraries )

