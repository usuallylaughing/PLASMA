SRC" PLASMA.4TH"
SRC" CONIO.4TH"
SRC" GRLIB.4TH"

 5 VARIABLE BALLCLR
10 VARIABLE BALLX
20 VARIABLE BALLY
 1 VARIABLE INCX
 1 VARIABLE INCY

: BEEP 30 10 TONE ;

: BOOP 10 30 TONE ;

: MOVEBALL
  BALLX @ 0=   IF INCX @ NEGATE INCX ! BEEP THEN
  BALLX @ 39 = IF INCX @ NEGATE INCX ! BEEP THEN
  BALLY @ 0=   IF INCY @ NEGATE INCY ! BOOP THEN
  BALLY @ 47 = IF INCY @ NEGATE INCY ! BOOP THEN
  INCX @ BALLX +!
  INCY @ BALLY +!
  1 BALLCLR DUP @ GRCOLOR +!
  0   0 BALLX @ BALLY @ GRLINE
  39 47 BALLX @ BALLY @ GRLINE
  0  47 BALLX @ BALLY @ GRLINE
  39  0 BALLX @ BALLY @ GRLINE
;

: BOUNCE
  0 GRMODE DROP
  0 GRDRAWBUF
  0 GRCLEAR
  BEGIN
    MOVEBALL
    KEY?
  UNTIL
  KEY DROP
  -1 GRMODE DROP
;

BOUNCE
