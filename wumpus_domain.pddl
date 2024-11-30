(define (domain wumpus-c)
  (:requirements :strips :negative-preconditions :typing)

  (:predicates
    (at ?what ?square)       ; Entity is at a specific square
    (adj ?square-1 ?square-2) ; Squares are adjacent
    (pit ?square)            ; Pit in a square
    (wumpus-in ?square)      ; Wumpus in a square
    (breeze ?square)         ; Breeze in a square (near pit)
    (smell ?square)          ; Smell in a square (near wumpus)
    (glitter ?square)        ; Glitter in a square (near gold)
    (have ?who ?what)        ; Entity has an item
    (is-agent ?who)          ; Entity is the agent
    (is-wumpus ?who)         ; Entity is a wumpus
    (is-gold ?what)          ; Item is gold
    (is-arrow ?what)         ; Item is an arrow
    (dead ?who)              ; Entity is dead
  )

  ;; Action: Move the agent to an adjacent square
  (:action move-agent
    :parameters (?who ?from ?to)
    :precondition (and 
      (is-agent ?who)
      (at ?who ?from)
      (adj ?from ?to)
      (not (pit ?to))
      (not (wumpus-in ?to))
    )
    :effect (and 
      (not (at ?who ?from))
      (at ?who ?to)
    )
  )

  ;; Action: Agent takes an item
  (:action take
    :parameters (?who ?what ?where)
    :precondition (and 
      (is-agent ?who)
      (at ?who ?where)
      (at ?what ?where)
    )
    :effect (and 
      (have ?who ?what)
      (not (at ?what ?where))
    )
  )

  ;; Action: Agent shoots an arrow to kill a wumpus
  (:action shoot
    :parameters (?who ?where ?with-what ?victim ?where-victim)
    :precondition (and 
      (is-agent ?who)
      (have ?who ?with-what)
      (is-arrow ?with-what)
      (at ?who ?where)
      (is-wumpus ?victim)
      (at ?victim ?where-victim)
      (adj ?where ?where-victim)
    )
    :effect (and 
      (dead ?victim)
      (not (wumpus-in ?where-victim))
      (not (have ?who ?with-what))
    )
  )

  ;; Action: Move the wumpus to an adjacent square
  (:action move-wumpus
    :parameters (?who ?from ?to)
    :precondition (and 
      (is-wumpus ?who)
      (at ?who ?from)
      (adj ?from ?to)
      (not (pit ?to))
      (not (wumpus-in ?to))
    )
    :effect (and 
      (not (at ?who ?from))
      (at ?who ?to)
      (not (wumpus-in ?from))
      (wumpus-in ?to)
    )
  )
)
