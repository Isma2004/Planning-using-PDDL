(define (problem Task3P)
  (:domain task3D)

  (:objects
    cr1 cr2 - crane
    r1 - truck
    c1 c2 - container
    loc1 loc2 - location
    p1 p2 - position
  )

  (:init
    (at_crane cr1 loc1)
    (at_crane cr2 loc2)
    (holding cr1 c1)
    (empty cr2)
    (at r1 loc1)
    (empty r1)
    (on c2 p1)
    (clear c2)
    (at_position p1 loc1)
    (at_position p2 loc2)
    (clear p2) 
  )

  (:goal (and

    (on c2 c1)
    (on c1 p2)
    (at r1 loc2)
    (empty r1)
    (empty cr1)
    (empty cr2)
  ))
)
