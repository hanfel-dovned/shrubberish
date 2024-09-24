|%
+$  bowl
  $:  our=ship
      eny=@uvJ 
      now=@da
      state=vase
      kids=(map path [shrub vase])
  ==
+$  card  [=path =act]
+$  act
  $%  [%make =shrub =cage =vase]
      [%poke =cage]
      [%read ~]
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