:: Lesson 4

|=  [a=@ud b=@ud c=@tas]
|^  ^-  @ud
(webo a b c)
++  webo
  |=  [x=@ud y=@ud z=@tas]
  ?:  =(z %mul)
    (mul x y)
  ?:  =(z %sub)
    (sub x y)
  ?:  =(z %add)
    (add x y)
  ?:  =(z %div)
    (div x y)
--
