
// A simple blinky program for Mizar32.

#include <stdio.h>
#include <pio.h>
#include <tmr.h>
#include <term.h>

void blink_mizar32 (long t) {
  pio_pin_setlow("PB_29");
  tmr_delay(tmr_SYS_TIMER, t);
  pio_pin_sethigh("PB_29");
  tmr_delay(tmr_SYS_TIMER, t);
}

int main (void) {
  pio_pin_setdir(pio_OUTPUT, "PB_29");
  printf("\nThe LED is blinking. Press any key to stop.");
  while (term_getchar(term_NOWAIT) == -1)
    blink_mizar32(500000);
  pio_pin_sethigh("PB_29");
  printf("\nThe LED is now off.\n\n");
  return 0;
}
