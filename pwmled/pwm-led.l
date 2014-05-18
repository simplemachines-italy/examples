
# Make the LED slowly fade up and down forever

# Connect a LED in series with a
# 330 ohm resistor between PWM0 pin
# (BUS4 pin 7) and GND (BUS4 pin 1)

(setq
   pwmid 0 # Which channel to use?
   speed 3000 # PWM frequency in Hz
   fadetime 1 # How many secs to fade up?
   nsteps 100 ) # How many steps in the fade?

(setq delay (/ (* (pwm-getclock tmrid) fadetime)
               nsteps ) )

(pwm-start pwmid)

(loop
   (setq i nsteps) # An iterator for dec
   # Fade the LED up
   (for duty nsteps
      (pwm-setup pwmid speed duty)
      (tmr-delay *tmr-sys-timer* delay) )
   
   # Fade the LED down
   (until (=0 i)
      (pwm-setup pwmid speed i)
      (tmr-delay *tmr-sys-timer* delay)
      (setq i (- i 1)) ) )