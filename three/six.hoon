:: Lesson 6

::  flop.hoon
::
::  take a list as input and associate with a
|=  a=(list @)
::  pin b with bunt list value
=|  b=(list @)
::  open a trap (no homo) that produces a list
|-  ^-  (list @)
::  check if a is null, otherwise recur on $ (buc), our trap arm
?~  a  b
::  set b equal to the initial item of list a, a equal to the
::  rest of a
$(b [i.a b], a t.a)

::  snag.hoon
::
::  take a number and a list as input
|=  [a=@ b=(list @)]
::  terminate if our list is null
?~  b  !!
::  base case: return first of list
?:  =(0 a)  i.b
::  otherwise recur over list, decrementing our counter
::  until we find the value at our desired index
$(a (dec a), b t.b)
