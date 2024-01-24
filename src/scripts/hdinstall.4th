SRC" plasma.4th"
SRC" conio.4th"
: RESUME ;
: ?EXEC
  NOT IF
    1 >R
    BEGIN
      BL WORD FIND IF
        CASE
          ' RESUME OF
            R> 1- ?DUP 0= IF
              DROP EXIT
            THEN
            >R
            ENDOF
          ' ?EXEC OF
            R> 1+ >R
            ENDOF
        ENDCASE
      ELSE
        DROP
      THEN
    AGAIN
  THEN
;

: INPUTSTR"
  COMPILE ."
  DUP 1+ 255 ACCEPT SWAP C!
;
: STRING CREATE 256 ALLOT DOES> ;

: CONFIRM"
  COMPILE ."
  ."  (Y/N)"
  KEY CR TOUPPER CHAR Y =
;

STRING DEST
STRING FILELIST

HOME
12 SPACES INVERSETEXT
." PLASMA HD INSTALL"
NORMALTEXT CR CR
0 1 40 23 VIEWPORT
DEST INPUTSTR" Enter destination "
DEST C@ 0= ?ABORT" Destination required"

." Copying system files to " DEST (.") CR
FILELIST " -R PLVM16 CMD128 SYS " STRCPY DEST STRCAT
" COPY" SWAP LOADMOD

CONFIRM" Copy demos?"
?EXEC
  FILELIST " -R DEMOS " STRCPY DEST STRCAT
  " COPY" SWAP LOADMOD
RESUME

CONFIRM" Copy build tools?"
?EXEC
  DEST " /BLD" STRCAT DROP
  " NEWDIR" DEST LOADMOD
  FILELIST " BLD/PLASM BLD/CODEOPT " STRCPY
  DEST STRCAT
  " COPY" SWAP LOADMOD
  FILELIST " -R BLD/INC " STRCPY DEST STRCAT
  " COPY" SWAP LOADMOD
  CONFIRM" Copy sample code?"
  ?EXEC
    FILELIST " -R BLD/SAMPLES " STRCPY DEST STRCAT
    " COPY" SWAP LOADMOD
  RESUME
RESUME

." Done" CR
0 0 40 24 VIEWPORT
BYE
