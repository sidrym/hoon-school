::  final week of hoon school,
::  uncreative mode. big thanks to ~rabsef
::  for helping me sort out types
|=  input=tape
|^  ^-  [@ud (list tape)]
?~  input
  [0 ~]
=/  output  (split input)
output
++  split
  |=  input=tape  ^-  [@ud (list tape)]
  =|  word-count=@ud
  =|  current-word=tape
  :: Making output-two w/ a different face from output
  :: helps make the code easier to read
  ::
  =|  output-two=(list tape)
  |-
  ?~  input  
    ?~  current-word  
      [word-count output-two]
    [+(word-count) [current-word output-two]]
  ?.  =(i.input ' ')
    $(current-word (weld current-word (trip i.input)), input t.input)
  ?~  current-word
    $(input t.input)
  $(current-word "", input t.input, output-two [current-word output-two], word-count +(word-count))
--
