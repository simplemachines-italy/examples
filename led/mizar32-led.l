
# A simple blinky program for Mizar32
# in picoLisp.

(de blink-mizar32 (t)
   (pio-pin-setlow 'PB_29)
   (tmr-delay t)
   (pio-pin-sethigh 'PB_29)
   (tmr-delay t) )

(de blink-init ()
   (pio-pin-setdir *pio-output* 'PB_29)
   (prinl "The LED is blinking. Press any key to stop.")
   (while (= (term-getchar *term-nowait*) NIL)
      (blink-mizar32 500000) )
   (pio-pin-sethigh 'PB_29)
   (prinl "The LED is now off.") )

(blink-init)