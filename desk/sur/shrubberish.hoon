|%
+$  bowl
  $:  our=ship
      eny=@uvJ 
      now=@da
  ==
+$  card  [=path =act]
+$  act
  $%  [%make =shrub =cage]
      [%poke =cage]
  ==
+$  shrub
  $_  ^|
  |_  bowl
  +*  this  .
  ++  init
    |~  [mark noun]
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