;1)
;reverse-general function
(define (reverse-general L)
	(cond((null? L) '()) ;IF EMPTY LIST, JUMP TO ELSE & PRINT EMPTY QOUTE
		((list? L) ;TESTING IF NUMBERS ARE BEING READ
		(append ( reverse-general (cdr L)) ;TAKES REMAINING ITEMS 
			(list (reverse-general (car L))) ;QOUTE REVERSED LIST
			)
		)
		(else L)
		)
	)

;2)
; sum-up-numbers-simple function
(define (sum-up-numbers-simple L)
  ;CASE 1: IF EMPTY LIST
  (cond ((null? L) 0)
        ;CASE 2: IF FIRST ITEM IN LIST IS NUMBER
    ((number? (car L))
        ;ADD FIRST ITEM PLUS REMAINING
        (+(car L) (sum-up-numbers-simple (cdr L)))
              )
        ((sum-up-numbers-simple (cdr L)) ))
        )
  
;3)
;sum-up-numbers-general function
(define (sum-up-numbers-general L)
  ;CASE 1: IF LIST IS EMPTY RETURN 0
  (cond ((null? L) 0)
        ;CHECK FIRST ITEM IN LIST
        ((list? (car L))
         ;ADD FIRST AND LAST NUMBERS OF LIST
         (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
        ;IF FIRST ITEM NON NUMBER ADD LAST NUM + 0
        ((not (number? (car L)))
         (+ 0 (sum-up-numbers-general (cdr L))))
        ;ADD REMAINING OUTSIDE NESTED LOOP
        (else
         (+ (car L) (sum-up-numbers-general (cdr L)))
         )
        )
 )

;4)
;min in list 1 has to be greater than min in list 2
;min-above-min function
;if one list is empty
(define (min-above-min L1 L2)
  ;case 1: check if first list null
  (cond ((null? L1) #F)
        
  ;case 2: if L2 null compare min values in L1 
  ((null? L2)
   (number? (car L1))
   (null? (cdr L1)) (car L1))
  ((< (car L1) (min (cdr L1))) (car L1))
  ((min(cdr L1)))

  ;; find min in L2 if not null
     ;(number? (car L2))
     ;(null? (cdr L2)) (car L2))
  ;((< (car L2) (min (cdr L2))) (car L2))
  ;((min(cdr L2)))
   
  )
  )
  
  
  

  
  

    