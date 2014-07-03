
# Prompt a 9600 baud serial device until we receive
# a character in reply

(setq
   uartid 0       # Which UART should we be talking on?
   timeout 500000 # Prompt once every half second
   timerid 0      # Use timer 0 to measure the timeout
   prompt "U" )   # The prompt character (0x55 : binary 01010101)

(de get-char-uart ()
   (uart-getchar uartid timeout timerid) )

# Get a character from UART
(setq reply "")

(until (=T reply)
   (uart-write uartid prompt)
   (setq reply (get-char-uart)) )
