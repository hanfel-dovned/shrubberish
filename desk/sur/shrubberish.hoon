|%
+$  cup
  $:  our=ship
      eny=@uvJ 
      now=@da
  ==
+$  carb
  $%  [%make ~]
      [%poke ~]
  ==
+$  shrub
  $_  ^|
  |_  cup
  +*  this  .
  ++  init
    |~  noun
    *[(list carb) _^|(this)]
  ::
  ++  poke
    |~  [mark noun]
    *[(list carb) _^|(this)]
  ::
  ++  read
    |~  path
    *(unit (unit cage))
  --
--