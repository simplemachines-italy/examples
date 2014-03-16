
# Send a byte to the i2c multiplexer to tell it to
# enable the left i2c bus

(setq
   id 0             # Which i2c bus to use?
   mux-addr 112     # The slave address of the i2c mux
   mux-disable 0    # Control word to disable the mux
   mux-left 4       # Control word to enable left bus
   mux-right 5 )    # Control word to enable right bus

(i2c-start 0)

(if (not (= T (i2c-address id mux-addr *i2c-transmitter*)))
   (prinl "The multiplexer did not reply")
   (if (not (= (i2c-write id mux-left) mux-left))
      (prinl "The multiplexer did not acknowledge the write") ) )

(i2c-stop id)
   