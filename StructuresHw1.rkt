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
  (cond ((null? lis) 0)
        (else (eval(cons '+ lis)))
        )
  )


