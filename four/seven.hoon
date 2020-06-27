::  Lesson 7

::  initialize our gate with a cell of two atoms
|=  [m=@ n=@]
::  if our first atom is zero, increment the other
?:  =(m 0)  +(n)
::  if the second is zero, recurse with
::  first value -1 and second as 1
?:  =(n 0)  $(m (dec m), n 1)
::  otherwise, recurse with our first value -1
::  and the second value as a nested recursion
::  of itself -1
$(m (dec m), n $(n (dec n)))
