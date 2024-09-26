|%
+$  puth  [=ship =path]
+$  bowl
  $:  our=ship
      eny=@uvJ 
      now=@da
      state=vase
      kids=(map path [shrub vase])
      deps=(map puth [shrub vase])
  ==
+$  card  [=puth =act]
+$  act
  $%  [%make =shrub =cage =vase dep=(unit puth)]
      [%poke =cage]
  ==
+$  shrub
  $_  ^|
  |_  bowl
  +*  this  .
  ++  init
    |~  [mark noun]
    *[(list card) vase]
  ::
  ++  poke
    |~  [mark noun]
    *[(list card) vase]
  --
--