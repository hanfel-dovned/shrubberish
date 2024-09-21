/-  sh=shrubberish
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  $:  %0 
                 shrubs=(map path shrub:sh)
             ==
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
|_  [=bowl:gall dik=(list card)]
+*  that  .
::
++  emit  |=(=card that(dik [card dik]))
++  emil  |=(lac=(list card) that(dik (welp lac dik)))
++  abet  ^-((quip card _state) [(flop dik) state])
::
++  first  
  ^-  shrub:sh
  =/  state  0
  |_  =bowl:sh
  +*  this  .
  ++  init
    |=  [mark noun]
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
::  Entry point.
++  poke
  |=  [=mark =vase]
  ^+  that
  ?>  =(%shrubberish-card mark)
  =/  card  !<(card:sh vase)
  (play [[card ~] ~])
::
::  Apply the next card to the namespace.
++  play
  |=  [stack=(list card:sh) async=(list card:sh)]
  ^+  that
  ?:  ?&(=(~ stack) =(~ async))
    that
  =/  =card:sh
    ?~  stack
      -.async
    -.stack
  ?-    -.act.card
      %make
    =/  a  :: [deck shrub]
      (~(init shrub.act.card [our eny now]:bowl) cage.act.card)
    =.  shrubs  (~(put by shrubs) path.card +.a)
    (cut [-.a path.card stack async])
  ::
      %poke
    =/  =shrub:sh  (~(got by shrubs) path.card)
    =^  deck  shrub
      (~(poke shrub [our eny now]:bowl) cage.act.card)
    =.  shrubs  (~(put by shrubs) path.card shrub)
    (cut [(flop deck) path.card stack async])
  ==
::
::  Sort cards into call stack and async queue,
::  then recurse to ++play.
++  cut
  |=  $:  deck=(list card:sh) 
          =path 
          stack=(list card:sh)
          async=(list card:sh)
      ==
  |-
  ?~  deck
    (play [stack async])
  =/  ca=card:sh  -.deck
  ?:  (is-child path.ca path)
    $(stack [-.deck stack], deck +.deck)
  $(async [-.deck async], deck +.deck)
::
::  Whether baby is a continuation of accused.
++  is-child
  |=  [baby=path accused=path]
  ^-  ?
  |-
  ?~  accused  %.y
  ?~  baby  %.n
  ?.  =(-.baby -.accused)  %.n
  $(baby +.baby, accused +.accused)
--