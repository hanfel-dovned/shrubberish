/-  sh=shrubberish
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 shrubs=(map path shrub:sh)]
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
::
=<
|_  =bowl:gall
+*  this  .
    def  ~(. (default-agent this %|) bowl)
    hc   ~(. +> [bowl ~])
::
++  on-init
  ^-  (quip card _this)
  =^  cards  state  abet:init:hc
  [cards this]
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  =vase
  ^-  (quip card _this)
  [~ this(state !<(state-0 vase))]
::
++  on-poke
  |=  =cage
  ^-  (quip card _this)
  =^  cards  state  abet:(poke:hc cage)
  [cards this]
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  [~ ~]
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  `this
::
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  `this
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  `this
::
++  on-leave  on-leave:def
++  on-fail   on-fail:def
--
::
|_  [=bowl:gall deck=(list card)]
+*  that  .
::
++  emit  |=(=card that(deck [card deck]))
++  emil  |=(lac=(list card) that(deck (welp lac deck)))
++  abet  ^-((quip card _state) [(flop deck) state])
::
++  first  
  ^-  shrub:sh
  =/  state  0
  |_  =bowl:sh
  +*  this  .
  ++  init
    |=  noun
    [~ this(state 1)]
  ::
  ++  poke
    |=  [mark noun]
    [~ this(state (add state 1))]
  ::
  ++  read
    |=  path
    [~ ~]
  --
::
++  init
  ^+  that
  that(shrubs (~(put by shrubs) /first first))
::
++  poke
  |=  [=mark =vase]
  ^+  that
  ?>  =(%shrubberish-card mark)
  =/  card  !<(card:sh vase)
  ?-    -.card
      %make
    that(shrubs (~(put by shrubs) path.card shrub.card))
  ::
      %poke
    =/  =shrub:sh  (~(got by shrubs) path.card)
    =^  deck  shrub
      (~(poke shrub [our eny now]:bowl) cage.card)
    that(shrubs (~(put by shrubs) /first shrub))
  ==
--