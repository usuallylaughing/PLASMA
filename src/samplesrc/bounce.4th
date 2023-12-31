SRC" PLASMA.4TH"

( LOADMOD" CONIO"  CONIO is already available in plforth )

LOOKUP CONIO CONSTANT CONIOAPI
CONIOAPI 3  IFACE PLASMA HOME
CONIOAPI 4  IFACE PLASMA GOTOXY
CONIOAPI 7  IFACE PLASMA TEXTMODE
CONIOAPI 8  IFACE PLASMA GRMODE
CONIOAPI 9  IFACE PLASMA GRCOLOR
CONIOAPI 10 IFACE PLASMA GRPLOT
CONIOAPI 11 IFACE PLASMA TONE
CONIOAPI 12 IFACE PLASMA RAND

 5 VARIABLE BALLCLR
10 VARIABLE BALLX
20 VARIABLE BALLY
10 VARIABLE OLDX
20 VARIABLE OLDY
1  VARIABLE INCX
1  VARIABLE INCY

: MOVEBALL
  BALLX @ 0=   IF INCX @ NEG INCX ! THEN
  BALLX @ 39 = IF INCX @ NEG INCX ! THEN
  BALLY @ 0=   IF INCY @ NEG INCY ! THEN
  BALLY @ 47 = IF INCY @ NEG INCY ! THEN
  INCX @ BALLX +!
  INCY @ BALLY +!
  BALLCLR @ GRCOLOR DROP
  BALLX @ BALLY @ GRPLOT DROP
  0 GRCOLOR DROP
  OLDX @ OLDY @ GRPLOT DROP
  BALLX @ OLDX !
  BALLY @ OLDY !
;

: BOUNCE
  0 GRMODE DROP
  BEGIN
    MOVEBALL
    ?TERMINAL
  UNTIL
  KEY
  40 TEXTMODE DROP
;

BOUNCE
