(define (problem puzzle-prob)
  (:domain puzzle-dom)
  
  (:objects 
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 ; tiles
    pos1 pos2 pos3 pos4 ; positions
  )

  (:init
    ; Define initial positions of each tile
    (at t1 pos1 pos1) (at t2 pos1 pos3) (at t3 pos1 pos2) (at t4 pos1 pos4)
    (at t5 pos2 pos1) (at t6 pos2 pos2) (at t7 pos2 pos4) (at t8 pos2 pos3)
    (at t9 pos3 pos1) (at t10 pos3 pos3) (at t11 pos3 pos2) (at t12 pos3 pos4)
    (at t13 pos4 pos1) (at t14 pos4 pos3) (at t15 pos4 pos2) (empty pos4 pos4)

    ; Define adjacency relations (Horizontal and Vertical)

    ; Horizontal adjacencies for row 1
    (adjacent pos1 pos1 pos1 pos2) (adjacent pos1 pos2 pos1 pos1)
    (adjacent pos1 pos2 pos1 pos3) (adjacent pos1 pos3 pos1 pos2)
    (adjacent pos1 pos3 pos1 pos4) (adjacent pos1 pos4 pos1 pos3)

    ; Horizontal adjacencies for row 2
    (adjacent pos2 pos1 pos2 pos2) (adjacent pos2 pos2 pos2 pos1)
    (adjacent pos2 pos2 pos2 pos3) (adjacent pos2 pos3 pos2 pos2)
    (adjacent pos2 pos3 pos2 pos4) (adjacent pos2 pos4 pos2 pos3)

    ; Horizontal adjacencies for row 3
    (adjacent pos3 pos1 pos3 pos2) (adjacent pos3 pos2 pos3 pos1)
    (adjacent pos3 pos2 pos3 pos3) (adjacent pos3 pos3 pos3 pos2)
    (adjacent pos3 pos3 pos3 pos4) (adjacent pos3 pos4 pos3 pos3)

    ; Horizontal adjacencies for row 4
    (adjacent pos4 pos1 pos4 pos2) (adjacent pos4 pos2 pos4 pos1)
    (adjacent pos4 pos2 pos4 pos3) (adjacent pos4 pos3 pos4 pos2)
    (adjacent pos4 pos3 pos4 pos4) (adjacent pos4 pos4 pos4 pos3)

    ; Vertical adjacencies for column 1
    (adjacent pos1 pos1 pos2 pos1) (adjacent pos2 pos1 pos1 pos1)
    (adjacent pos2 pos1 pos3 pos1) (adjacent pos3 pos1 pos2 pos1)
    (adjacent pos3 pos1 pos4 pos1) (adjacent pos4 pos1 pos3 pos1)

    ; Vertical adjacencies for column 2
    (adjacent pos1 pos2 pos2 pos2) (adjacent pos2 pos2 pos1 pos2)
    (adjacent pos2 pos2 pos3 pos2) (adjacent pos3 pos2 pos2 pos2)
    (adjacent pos3 pos2 pos4 pos2) (adjacent pos4 pos2 pos3 pos2)

    ; Vertical adjacencies for column 3
    (adjacent pos1 pos3 pos2 pos3) (adjacent pos2 pos3 pos1 pos3)
    (adjacent pos2 pos3 pos3 pos3) (adjacent pos3 pos3 pos2 pos3)
    (adjacent pos3 pos3 pos4 pos3) (adjacent pos4 pos3 pos3 pos3)

    ; Vertical adjacencies for column 4
    (adjacent pos1 pos4 pos2 pos4) (adjacent pos2 pos4 pos1 pos4)
    (adjacent pos2 pos4 pos3 pos4) (adjacent pos3 pos4 pos2 pos4)
    (adjacent pos3 pos4 pos4 pos4) (adjacent pos4 pos4 pos3 pos4)
  )

  (:goal
    (and
      (at t1 pos1 pos1) (at t2 pos1 pos2) (at t3 pos1 pos3) (at t4 pos1 pos4)
      (at t5 pos2 pos1) (at t6 pos2 pos2) (at t7 pos2 pos3) (at t8 pos2 pos4)
      (at t9 pos3 pos1) (at t10 pos3 pos2) (at t11 pos3 pos3) (at t12 pos3 pos4)
      (at t13 pos4 pos1) (at t14 pos4 pos2) (at t15 pos4 pos3) (empty pos4 pos4)
    )
  )
)
