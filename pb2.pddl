(define (problem prob2)
   (:domain blocksworld)
   (:objects b1 b2 b3)            
   (:init (on b1 b2) (on b2 b3)   
          (on-table b3)           
          (clear b1)              
          (arm-empty))           

          
   (:goal (and (on b3 b2)         
               (on b2 b1)         
               (on-table b1))))  