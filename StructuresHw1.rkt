1)
;reverse-general function
(define (reverse-general L)
	(cond((null? L) '()) ;IF EMPTY LIST, JUMP TO ELSE & PRINT EMPTY QOUTE
		((list? L)) ;TESTING IF NUMBERS ARE BEING READ
		(else L)
		)
	)

