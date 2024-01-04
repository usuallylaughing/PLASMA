: ?PLASMA
    " IFACE" FIND
    SWAP DROP
    0= IF
      " PLASMA.4TH" SRC
    THEN
;

?PLASMA ( Load PLASMA if not already )

: ?GRLIB
    " GRLIB" FIND
    SWAP DROP
    0= IF
      " GRLIB.4TH" SRC
    THEN
;

?GRLIB ( Load GRLIB if not already )

 5 VARIABLE BALLCLR
10 VARIABLE BALLX
20 VARIABLE BALLY
10 VARIABLE OLDX
20 VARIABLE OLDY
 1 VARIABLE INCX
 1 VARIABLE INCY

: BEEP 30 10 TONE DROP ;

: BOOP 10 30 TONE DROP ;

: MOVEBALL
  BALLX @ 0=   IF INCX @ NEGATE INCX ! BEEP THEN
  BALLX @ 39 = IF INCX @ NEGATE INCX ! BEEP THEN
  BALLY @ 0=   IF INCY @ NEGATE INCY ! BOOP THEN
  BALLY @ 47 = IF INCY @ NEGATE INCY ! BOOP THEN
  INCX @ BALLX +!
  INCY @ BALLY +!
  BALLCLR @ GRCOLOR
  BALLX @ BALLY @ GRPLOT
  0 GRCOLOR
  OLDX @ OLDY @ GRPLOT
  BALLX @ OLDX !
  BALLY @ OLDY !
;

: BOUNCE
  1 GRMODE DROP
  0 GRDRAWBUF
  0 GRCLEAR
  BEGIN
    MOVEBALL
    ?TERMINAL
  UNTIL
  KEY
  0 GRMODE DROP
;

BOUNCE
