(define (domain puzzle-dom)
  (:requirements :strips)
  (:predicates
    (at ?t ?x ?y)             ; Specifies that tile ?t is at coordinates (x, y)
    (empty ?x ?y)             ; Specifies that position (x, y) is empty
    (adjacent ?x1 ?y1 ?x2 ?y2) ; Defines adjacency between two positions (x1, y1) and (x2, y2)
  )

  (:action move
    :parameters (?t ?x1 ?y1 ?x2 ?y2)
    :precondition (and
      (at ?t ?x1 ?y1)
      (empty ?x2 ?y2)
      (adjacent ?x1 ?y1 ?x2 ?y2)
    )
    :effect (and
      (not (at ?t ?x1 ?y1))
      (at ?t ?x2 ?y2)
      (not (empty ?x2 ?y2))
      (empty ?x1 ?y1)
    )
  )
)
