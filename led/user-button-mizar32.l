
# A simple program which demonstrates
# the usage of user-buttons.

# declare pins
(setq led 'PB_29 button 'PX_16)

# a simple delay function
(de delay (t)
   (tmr-delay 0 t) )

# make sure the LED starts in
# the "off" position and enable
# input/output pins
(de init-pins ()
   (pio-pin-sethigh led)
   (pio-pin-setdir *pio-output* led)
   (pio-pin-setdir *pio-input* button) )

# And now, the main loop
(de prog-loop ()
   (init-pins)
   (loop
      (if (= 0 (pio-pin-getval button))
         (pio-pin-setlow led)
         (delay 100000)
         (pio-pin-sethigh led)
         (delay 100000) ) ) )

(prog-loop)