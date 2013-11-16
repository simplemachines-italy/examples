
# A simple PicoLisp program to display a
# message on Mizar32's LCD display module.

(de sample-lcd-disp ()
   (mizar32-lcd-clear)
   (mizar32-lcd-prinl "Hello world!")
   (mizar32-lcd-goto 2 1)
   (mizar32-lcd-prinl "This is Mizar32.") )

(sample-lcd-disp)