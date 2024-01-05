: IFACE 2 * + @ ;

LOOKUP CMDSYS 0  IFACE  CONSTANT PLASMA_VER
LOOKUP CMDSYS 2  IFACE  CONSTANT CMDLINE
LOOKUP CMDSYS 3  IFACE  PLASMA   EXECMOD
LOOKUP STRCPY    PLASMA STRCPY
LOOKUP STRCAT    PLASMA STRCAT
LOOKUP HEAPAVAIL PLASMA FREEMEM

: LOADMOD ( modulename paramstr -- )
  CMDLINE " . " STRCPY DROP ( Dummy parameter for module name )
  CMDLINE SWAP STRCAT DROP
  EXECMOD 0< ABORT" Failed to load module"
;

: LOADMOD" ( modulename -- )
  PAD SWAP STRCPY ( Move module name out of the way in case its immediate )
  34 WORD ( Build a string from input )
  LOADMOD
;

: EDIT
  " ED" "  " LOADMOD
;

: EDIT"
  " ED" LOADMOD"
;

: CAT
  " CAT" "  " LOADMOD
;

: CAT"
  " CAT" LOADMOD"
;

: DEL"
  " DEL" LOADMOD"
;

: REN"
  " REN" LOADMOD"
;

: COPY"
  " COPY" LOADMOD"
;

: NEWDIR"
  " NEWDIR" LOADMOD"
;

LOOKUP FILEIO 0  IFACE PLASMA GETPFX
LOOKUP FILEIO 1  IFACE PLASMA SETPFX

: PFX.
    HERE GETPFX DROP HERE (.")
;

: PFX"
    34 WORD SETPFX DROP
;