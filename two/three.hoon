:: Lesson 3

:: 1.
::|=  webo=@
::^-  tape
::?:  (lth webo 10)
::  "less than 10"
::?:  (lte webo 100)
::  "at least ten but not more than 100"
::  "more than 100"

::2.
|=  webo=*
?^  webo
  ["cell" webo]
?:  =((mod webo 2) 0)
  ["even" webo]
["odd" webo]
