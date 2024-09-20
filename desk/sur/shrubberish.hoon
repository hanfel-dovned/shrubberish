|%
+$  bowl
  $:  our=ship
      eny=@uvJ 
      now=@da
  ==
+$  card
  $%  [%make =path =shrub]
      [%poke =path =cage]
  ==
+$  shrub
  $_  ^|
  |_  bowl
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