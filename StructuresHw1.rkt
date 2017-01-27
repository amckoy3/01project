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
  (cond ((null? L) 0)
    ((number? (car L))
        (+(car L) (sum-up-numbers-simple (cdr L)))
              )
        ((sum-up-numbers-simple (cdr L)) ))
        )
  
;3)
;sum-up-numbers-general function
(define (sum-up-numbers-general L)
  (cond ((null? L) 0)
        ((list? (car L))
         (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
        ((not (number? (car L)))
         (+ 0 (sum-up-numbers-general (cdr L))))
        (else
         (+ (car L) (sum-up-numbers-general (cdr L)))
         )
        )
 )

;4)
;min in list 1 has to be greater than min in list 2
;min-above-min function
(define (min-above-min L1 L2)
  ;case 1: check if null
  (cond ((null? L1) #F)
        
  ;case 2: if there is no number in L2
  ((null? L2)
   (min (car L1) (min-above-min (cdr L1)))
  )
)
  )
  

    