:: Lesson 2

:: 1.
::|=  initial=@ud
::^-  @ud
::=/  webo=@ud  (add 22 initial)
::webo

:: 2.
::|=(my-cord=@t (^-([@t @ud @ta] (:*(my-cord `@ud`my-cord `@ta`my-cord)))))

:: 3.
|=  initial=@ud
^-  [@ud @p]
=/  webo=@p  `@p`initial
:-  initial  webo
