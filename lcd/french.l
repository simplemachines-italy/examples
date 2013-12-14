
# A PicoLisp program to demonstrate
# user defined characters.
#
(de print-msg ()
   (mizar32-lcd-clear)
   # define the French accent character.
   (mizar32-lcd-definechar 0 (1 2 14 17 31 16 14 0))
   # print Liberté·
   (mizar32-lcd-prinl 'Libert 0 ",")
   # print égalité·
   (mizar32-lcd-prinl 0 'galit 0 ",")
   (mizar32-lcd-goto 2 1)
   # print fraternité in the next line·
   (mizar32-lcd-prinl 'fraternit 0) )

(print-msg)
