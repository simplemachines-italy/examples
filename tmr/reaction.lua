
-- A reaction timer in Lua

print "Welcome to the reaction timer. When I say Go!, press [Enter]."
print "Press q [Enter] to quit."
repeat
  timer = tmr.SYS_TIMER
  print( "Ready?" )
  -- Wait for a random time from 2 to 5 seconds
  tmr.delay( tmr.SYS_TIMER, 2000000 + math.random( 3000000 ) )
  print( "Go!" )
  start_time = tmr.read( timer )
  answer = io.read()  -- wait for them to press Enter
  end_time = tmr.read( timer )
  print( "You reacted in " .. tmr.gettimediff( timer, start_time, end_time ) .. " microseconds" )
until answer == "q"