!:
::  open a gate to read in our input of our message and our cipher key
::  (error handling in place)
|=  [msg=tape key=@ud]
=<
::  normalize input case
=.  msg  (cass msg)
::  return a cell of our msg shifted to the left and the right
:-  (shift msg key)
(unshift msg key)
::  open our new core!
|%
::  alpha hash to measure our message against using our key
++  alpha  "abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()-_=+[]<.>/?'`"
++  shift
  ::  perform our right shift using our operator
  |=  [message=tape key=@ud]
  (operate message key (encoder key))
++  unshift
  ::  perform our left shift using our operator
  |=  [message=tape key=@ud]
  (operate message key (decoder key))
++  operate
  ::  read in our message, key, and map
  |=  [message=tape key=@ud encoder=(map @t @t)]
  ^-  tape
  ::  map each member of our list to the gate
  %+  turn  message
  |=  a=@t
  ::  return the value at our desired index in the map
  (~(got by encoder) a)
++  encoder
  ::  produce a map shifted by our key to the right
  |=  [key=@ud]
  =/  keytape=tape  (rott alpha key)
  (coder alpha keytape)
++  decoder
  ::  produce a map shifted by our key to the left
  |=  [key=@ud]
  =/  keytape=tape  (rott alpha key)
  (coder keytape alpha)
++  coder
  |=  [a=tape b=tape]
  ::  map space to itself so our sentences remain sentences
  (~(put by (zipper a b)) ' ' ' ')
++  zipper
  ::  produce our map from two tapes
  |=  [a=tape b=tape]
  ^-  (map @t @t)
  ::  initialize our output
  =|  chart=(map @t @t)
  ::  terminate if our tapes are different lengths
  ?.  =((lent a) (lent b))
  ~|  %uneven-lengths  !!
  ::  open gate to begin recursion on tapes
  |-
  ?:  |(?=(~ a) ?=(~ b))
  ::  if we're done iterating over our tapes, return our result
  chart
  ::  otherwise, recurse constructing our map,
  ::  adding entries mapping the heads of our tapes to each other
  ::  one by one
  $(chart (~(put by chart) i.a i.b), a t.a, b t.b)

++  rott
  |=  [m=tape n=@ud]
  =/  length=@ud  (lent m)
  ::  split our tape and store it in our noun s
  =+  s=(trim (mod n length) m)
  ::  smash our two parts back together with altered order
  (weld q.s p.s)
--

::  3.
::  Gate to list all possible unshifted tapes
::  |=  m=tape
::  =/  n=@ud  (lent alpha)
::  |-  ^-  (list @)
::  ?:  =(n 0)  (shift tape 0)
::  [(shift tape n) $(n (dec n))]
