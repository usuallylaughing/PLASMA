SRC" plasma.4th"
SRC" conio.4th"
: RESUME> ; ( PLACE HOLDER TO RESUME EXECUTION )
: ?EXEC ( F -- )
  NOT IF ( SKIP CODE IN BETWEEN ?EXEC AND RESUME> )
    1 >R
    BEGIN
      BL WORD FIND IF
        CASE
          ' RESUME> OF
            R> 1- ?DUP 0= IF ( EXIT IF FINAL RESUME> )
              DROP EXIT
            THEN
            >R
            ENDOF
          ' ?EXEC OF ( CHECK FOR NESTED ?EXEC )
            R> 1+ >R
            ENDOF
        ENDCASE
      ELSE
        DROP
      THEN
    AGAIN
  THEN
;

: STRING CREATE 256 ALLOT DOES> ; ( JUST ALLOCATE THE BIGGEST STRING POSSIBLE )

: CONFIRM" ( -- F )
  COMPILE ."
  ."  (Y/N)"
  KEY CR TOUPPER CHAR Y =
;

STRING DEST
STRING FILELIST

HOME
8 SPACES INVERSETEXT
." PLASMA HD INSTALL STAGE 2"
NORMALTEXT CR CR
0 1 40 23 VIEWPORT

DEST GETPFX DROP

." Insert PLASMA.SYS into floppy drive and press a key" KEY DROP
FILELIST " -R /PLASMA.SYS/SYS " STRCPY DEST STRCAT
" COPY" SWAP LOADMOD

CONFIRM" Copy demos?"
?EXEC
  ." Insert PLASMA.DEMOS into floppy drive and press a key" KEY DROP
  FILELIST " -R /PLASMA.DEMOS/DEMOS " STRCPY DEST STRCAT
  " COPY" SWAP LOADMOD
RESUME>

CONFIRM" Copy floating point libraries?"
?EXEC
  ." Insert PLASMA.FPSOS into floppy drive and press a key" KEY DROP
  FILELIST " -R /PLASMA.FPSOS/SYS " STRCPY DEST STRCAT
  " COPY" SWAP LOADMOD
RESUME>

CONFIRM" Copy networking libraries?"
?EXEC
  ." Insert PLASMA.INET into floppy drive and press a key" KEY DROP
  FILELIST " -R /PLASMA.INET/* " STRCPY DEST STRCAT
  " COPY" SWAP LOADMOD
RESUME>

CONFIRM" Copy build tools?"
?EXEC
  DEST " /BLD" STRCAT DROP
  " NEWDIR" DEST LOADMOD
  ." Insert PLASMA.BLD into floppy drive and press a key" KEY DROP
  FILELIST " /PLASMA.BLD/BLD/PLASM /PLASMA.BLD/BLD/CODEOPT " STRCPY
  DEST STRCAT
  " COPY" SWAP LOADMOD
  FILELIST " -R /PLASMA.BLD/BLD/INC " STRCPY DEST STRCAT
  " COPY" SWAP LOADMOD

  CONFIRM" Copy sample PLASMA code?"
  ?EXEC
    FILELIST " -R /PLASMA.BLD/BLD/SAMPLES " STRCPY DEST STRCAT
    " COPY" SWAP LOADMOD
  RESUME>

  CONFIRM" Copy sample FORTH scripts?"
  ?EXEC
  ." Insert PLASMA.4TH into floppy drive and press a key" KEY DROP
    FILELIST " -R /PLASMA.4TH/BLD/SCRIPTS " STRCPY DEST STRCAT
    " COPY" SWAP LOADMOD
  RESUME>

RESUME>

FILELIST " AUTORUN"
" DEL" SWAP LOADMOD

." Done" CR
0 0 40 24 VIEWPORT
BYE
