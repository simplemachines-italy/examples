
# Now, let's make the Mizar32 do something
# quickly in PicoLisp.

(setf led 'PB_29)

# A simple delay function
(de delay ()
   (tmr-delay 50000) )

# Which pin to blink?
(setq led 'PB_29)

# Set the pin in output mode
(pio-pin-setdir *pio-output* led)

# A simple delay function
(de delay ()
   (tmr-delay 0 50000) )

# Blink the led infinitely
(loop
   (pio-pin-setlow led)
   (delay)
   (pio-pin-sethigh led)
   (delay) )
