
# Retrieve and print the contents of the i2c splitter's
# control register

(load "@misc.l")

(setq
   id 0             # Which i2c bus to use? (there's only one!)
   mux-addr 112 )   # The slave address of the i2c multiplexer

(i2c-start id)

(if (not (= T (i2c-address id mux-addr *i2c-receiver*)))
   (prinl "The multiplexer did not reply")
   (let (cr (i2c-read id 1)) # Read the control register (one byte)
      (prinl "Control register: " (stringToNum cr)) ) )

(i2c-stop id)
