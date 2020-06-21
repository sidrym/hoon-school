:: Lesson 5

|=  input=@ud
|^
:-  (armor input)
(armoire input)
++  armor
  |=  input=@ud
  =.  input  (mod input 2)
  ?:  =(input 0)
    "even input. i ate it:"
  "odd input. i ate it anyway:"
++  armoire
  |=  input=@ud
  =.  input  (mul input input)
  =.  input  (add input ~mollet-sidrym)
  input
--
