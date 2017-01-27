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
(define (sum-up-numbers-gen x)
(define (sum-up-numbers-general L)
  (cond ((null? L) 0)
    ((number? (car L))
        (+(car L) (sum-up-numbers-general (cdr L)))
              )
        ((sum-up-numbers-general (cdr L)) ))
        )
  (+ (car x)(sum-up-numbers-gen (cdr x))) ((sum-up-numbers-general (cdr L))) 
  )

  

    
