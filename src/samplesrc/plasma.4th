: IFACE 2 * + @ ;

LOOKUP CMDSYS 0 IFACE CONSTANT PLASMA_VER
LOOKUP CMDSYS 2 IFACE CONSTANT CMDLINE
LOOKUP CMDSYS 3 IFACE PLASMA   EXECMOD
LOOKUP STRCPY PLASMA STRCPY
LOOKUP STRCAT PLASMA STRCAT

: .PLASMAVER
    PLASMA_VER 12 RSHIFT $0F AND 48 + EMIT
    PLASMA_VER  8 RSHIFT $0F AND 48 + EMIT
                                 46   EMIT
    PLASMA_VER  4 RSHIFT $0F AND 48 + EMIT
    PLASMA_VER           $0F AND 48 + EMIT
;

: CPYCMD
    CMDLINE " . "  STRCPY DROP ( Need a dummy value for the module name )
    34 WORD CMDLINE SWAP STRCAT DROP ( Quote deliminted string )
;

: CMDEXEC
    CPYCMD
    EXECMOD 0< IF ." Failed to exec module" CR THEN
;

: LOADMOD
    EXECMOD 0< IF ." Failed to load module" CR THEN
;

: LOADMOD"
    34 WORD ( Quote deliminted string )
    LOADMOD
;

: EDIT
    " ED" EXECMOD 0< IF ." Failed to run ED" CR ABORT THEN
;

: EDIT"
    CPYCMD
    " ED" EXECMOD 0< IF ." Failed to run ED" CR ABORT THEN
;

: CAT
    " CAT" EXECMOD 0< IF ." Failed to run CAT" CR ABORT THEN
;

: CAT"
    CPYCMD
    " CAT" EXECMOD 0< IF ." Failed to run CAT" CR ABORT THEN
;

: DEL"
    CPYCMD
    " DEL" EXECMOD 0< IF ." Failed to run DEL" CR ABORT THEN
;

: REN"
    CPYCMD
    " REN" EXECMOD 0< IF ." Failed to run REN" CR ABORT THEN
;

: COPY"
    CPYCMD
    " COPY" EXECMOD 0< IF ." Failed to run COPY" CR ABORT THEN
;

: NEWDIR"
    CPYCMD
    " NEWDIR" EXECMOD 0< IF ." Failed to run NEWDIR" CR ABORT THEN
;


( LOADMOD" FILEIO"  FILEIO is already available in plforth )

LOOKUP FILEIO CONSTANT FILEIOAPI
FILEIOAPI 0  IFACE PLASMA GETPFX
FILEIOAPI 1  IFACE PLASMA SETPFX

: .PFX
    HERE GETPFX HERE (.")
;

: SETPFX"
    34 WORD SETPFX DROP
;

( LOADMOD" CONIO"  CONIO is already available in plforth )

LOOKUP CONIO CONSTANT CONIOAPI
CONIOAPI 3  IFACE PLASMA HOME
CONIOAPI 4  IFACE PLASMA GOTOXY
CONIOAPI 11 IFACE PLASMA TONE
CONIOAPI 12 IFACE PLASMA RAND
