
# A reaction timer in picolisp

(de reaction-timer ()
   (prinl "Welcome to the reaction timer. When I say Go!, enter a character.")
   (prinl "Press q [Enter] to quit.")
   (setq
      timer *tmr-sys-timer*
      answer "" )
   (until (=T answer)
      (println "Ready?")
      # Wait for a random time from 2 to 5 seconds
      (tmr-delay timer (+ 2000000 (rand 1 3000000)))
      (println "Go!")
      (setq
         start-time (tmr-read timer)
         answer (read) # wait for them to enter any character
         end-time (tmr-read timer) )
      (println "You reacted in " (tmr-gettimediff timer start-time end-time) " microseconds") ) )
