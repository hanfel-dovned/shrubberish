/-  sh=shrubberish
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  $:  %0 
                 shrubs=(map puth:sh [shrub:sh state=vase dep=puth])
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
  ?>  =(our.bowl src.bowl)
  ?+    path  `this
      [%http-response *]  `this
  ==
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
  |_  =bowl:sh
  +*  this  .
  ++  init
    |=  [mark noun]
    [~ state.bowl]
  ::
  ++  poke
    |=  [mark noun]
    =/  sta  !<(@ud state.bowl)
    [~ !>((add sta 1))]
  --
::
++  init
  ^+  that
  =.  shrubs
    (~(put by shrubs) [our.bowl /first] [first !>(0)])
  %-  emit
  :*  %pass  /eyre/connect   
      %arvo  %e  %connect
      `/shrubberish  %shrubberish
  ==
::
::  Entry point.
++  poke
  |=  [=mark =vase]
  ^+  that
  ?>  (our.bowl src.bowl)
  ?+    mark  !!
      %shrubberish-card
    =/  card  !<(card:sh vase)
    (play [[card ~] ~])
  ::
      %handle-http-request
    =+  !<([eyre-id=@ta req=inbound-request:eyre] vase)
    =/  parsed
      %+  rash  url.request.req
      ;~  plug
          ;~(pfix fas (more fas smeg:de-purl:html))
          yque:de-purl:html
      ==
    =/  card  
      [-.parsed [%poke %handle-http-request vase]]
    (play [[card ~] ~])
  ==
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
    ?>  =(our.bowl ship.puth.card)
    =/  shrub  shrub.act.card
    =/  vase  vase.act.card
    =/  dep  dep.act.card
    ::  if no dependency, make right away
    ?~  dep
      (make-shrub shrub vase dep card)
    ::  if local dependency, make right away
    ?:  (=our.bowl ship.u.dep)
      (make-shrub shrub vase dep card)
    ::  if remote dependency, subscribe and wait
    !!
  ::
      %poke
    =/  shrub  shrub:(~(got by shrubs) puth.card)
    =/  vase  state:(~(got by shrubs puth.card))
    =/  dep  dep:(~(got by shrubs) puth.card)
    =/  output  :: [deck vase]
      (~(poke shrub (fill-bowl path.puth.card vase dep) cage.act.card))
    =.  shrubs  
      (~(put by shrubs) puth.card [shrub +.output])
    (cut [(flop -.output) path.puth.card stack async])
  ==
::
::  Create a shrub and run ++init.
++  make-shrub
  |=  [=shrub =vase =dep =card]
  ^+  that
  =/  output  :: [deck vase]
    (~(init shrub (fill-bowl path.puth.card vase dep) cage.act.card))
  =.  shrubs  
    (~(put by shrubs) puth.card [shrub +.output])
  (cut [(flop -.output) path.puth.card stack async])
::
::  Populate the shrub's bowl before running.
++  fill-bowl
  |=  [=path state=vase dep=(unit puth)]
  ^-  bowl:sh
  :*  our.bowl
      eny.bowl
      now.bowl
      state
      (get-children path)
      ::
      ?~  dep  ~
      %-  ~(put by (get-children u.dep))
      [u.dep (~(got by shrubs) u.dep)]
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
::
::  Return all children of this path.
++  get-children
  |=  parent=path
  ^-  (map path [shrub:sh vase])
  %-  malt
  %+  skim
    ~(tap by shrubs)
  |=  [baby=path *]
  (is-child baby parent)
--