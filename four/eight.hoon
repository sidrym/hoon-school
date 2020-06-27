:: Lesson 8

::  weld.hoon
::
::  open a gate that takes two lists as input
|=  [a=(list @) b=(list @)]
::  open a trap that produces a list
|-  ^-  (list @)
::  check if our first list is null
::  if so, return the second list
?~  a  b
::  otherwise, return a cell of the beginning of our list
::  and the result of the recursion with the rest of our
::  first list and the unmodified second list
[i.a $(a t.a)]

::  palindrome.hoon
::
::  open a gate that takes a list as input
|=  a=(list)
::  return whether a is equal to its flop (itself reversed)
=(a (flop a))
