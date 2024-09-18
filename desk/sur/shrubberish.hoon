|%
+$  cup
  $:  our=ship
      eny=@uvJ 
      now=@da
  ==
+$  card
  $%  [%make ~]
      [%poke ~]
  ==
+$  shrub
  $_  ^|
  |_  cup
  +*  this  .
  ++  init
    |~  noun
    *[(list card) _^|(this)]
  ::
  ++  poke
    |~  [mark noun]
    *[(list card) _^|(this)]
  ::
  ++  read
    |~  path
    *(unit (unit cage))
  --
--