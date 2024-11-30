(define (problem wumpus-c-4x4) 
  (:domain wumpus-c)
  (:objects sq-1-1 sq-1-2 sq-1-3 sq-1-4
            sq-2-1 sq-2-2 sq-2-3 sq-2-4
            sq-3-1 sq-3-2 sq-3-3 sq-3-4
            sq-4-1 sq-4-2 sq-4-3 sq-4-4
            
            the-gold 
            the-arrow
            agent 
            wumpus)
    
  (:init 
    ;; side-by-side squares (horizontal adjacency, excluding sq-1-2 which acts as a wall)
    (adj sq-1-1 sq-1-3) (adj sq-1-3 sq-1-1)
    (adj sq-1-3 sq-1-4) (adj sq-1-4 sq-1-3)

    (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1)
    (adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2)
    (adj sq-2-3 sq-2-4) (adj sq-2-4 sq-2-3)

    (adj sq-3-1 sq-3-2) (adj sq-3-2 sq-3-1)
    (adj sq-3-2 sq-3-3) (adj sq-3-3 sq-3-2)
    (adj sq-3-3 sq-3-4) (adj sq-3-4 sq-3-3)

    (adj sq-4-1 sq-4-2) (adj sq-4-2 sq-4-1)
    (adj sq-4-2 sq-4-3) (adj sq-4-3 sq-4-2)
    (adj sq-4-3 sq-4-4) (adj sq-4-4 sq-4-3)

    ;; cross squares (vertical adjacency, excluding connections involving sq-1-2)
    (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1)
    (adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3)
    (adj sq-1-4 sq-2-4) (adj sq-2-4 sq-1-4)

    (adj sq-2-1 sq-3-1) (adj sq-3-1 sq-2-1)
    (adj sq-2-2 sq-3-2) (adj sq-3-2 sq-2-2)
    (adj sq-2-3 sq-3-3) (adj sq-3-3 sq-2-3)
    (adj sq-2-4 sq-3-4) (adj sq-3-4 sq-2-4)

    (adj sq-3-1 sq-4-1) (adj sq-4-1 sq-3-1)
    (adj sq-3-2 sq-4-2) (adj sq-4-2 sq-3-2)
    (adj sq-3-3 sq-4-3) (adj sq-4-3 sq-3-3)
    (adj sq-3-4 sq-4-4) (adj sq-4-4 sq-3-4)

    ;; Pits, Gold, Wumpus, Agent
    (pit sq-1-4)
    (pit sq-2-3)
    (pit sq-4-3)
    
    (is-gold the-gold)
    (at the-gold sq-2-2)

    (is-agent agent)
    (at agent sq-4-1)

    (is-arrow the-arrow)
    (have agent the-arrow)

    (is-wumpus wumpus)
    (at wumpus sq-2-1)
    (wumpus-in sq-2-1)

    ;; Breeze (surrounding pit squares)
    (breeze sq-1-3) (breeze sq-1-4) ; Breeze around the pit at sq-1-4
    (breeze sq-2-4) (breeze sq-2-2) ; Breeze around the pit at sq-2-3
    (breeze sq-3-3) (breeze sq-4-2) (breeze sq-4-4) ; Breeze around the pit at sq-4-3

    ;; Smell (surrounding wumpus square)
    (smell sq-1-1) (smell sq-2-2) (smell sq-3-1) ; Smell around wumpus at sq-2-1

    ;; Glitter (where gold is)
    (glitter sq-2-2) ; Glitter where the gold is located
  )
  
  (:goal (and 
    (have agent the-gold) 
    (at agent sq-4-1)
    (dead wumpus)
  ))
)
