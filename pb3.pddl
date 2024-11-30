(define (problem prob3)
   (:domain blocksworld)
   (:objects b1 b2 b3 b4)  ; Four blocks named b1, b2, b3, b4
   (:init (on b4 b3) (on b3 b2) (on b2 b1)  ; Initial configuration: b4 on b3, b3 on b2, b2 on b1
          (on-table b1)                    ; b1 is on the table
          (clear b4)                       ; b4 is clear 
          (arm-empty))                     ; The robot arm is empty
   (:goal (and (on b2 b1)  ; Goal configuration: b2 on b1
               (on b4 b3)  ; b4 on b3
               (on-table b1)               ; b1 is on the table
               (on-table b3)               ; b3 is on the table
               (clear b2)                  ; b2 is clear
               (clear b4))))               ; b4 is clear
