1)
;reverse-general function
(define (reverse-general L)
	(cond((null? L) '()) ;IF EMPTY LIST, JUMP TO ELSE & PRINT EMPTY QOUTE
		((list? L) ;TESTING IF NUMBERS ARE BEING READ
		(append ( reverse-general (cdr L)) ;TAKES REMAINING ITEMS 
			(reverse-general '())) ;QOUTE REVERSED LIST
		)
		(else L)
		)
	) 


