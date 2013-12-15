
# A sample program to write to Mizar32's
# LCD display using PicoLisp's i2c module.

(de mizar32-lcd-write-i2c (x)
   (i2c-setup 0 50000)
   (i2c-start 0)
   (if (not (= 0 (i2c-address 0 63 *i2c-transmitter*)))
      (i2c-write 0 x) )
   (i2c-stop 0) )

(mizar32-lcd-write-i2c "Hello world!")