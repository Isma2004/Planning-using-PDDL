(define (problem pb1)
   (:domain blocksworld)
   (:objects b1 b2)  ; Two blocks named b1 and b2
   (:init (on-table b1) (on-table b2)  ; b1 on the table and b2 on the table 
          (clear b1) (clear b2)        
          (arm-empty))                 ; the arm is empty
   (:goal (on b2 b1)))                 ; the goal is b2 on b1
      
