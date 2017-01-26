
  (define (reverse-general L)
    (cond ((null? L) '()) ;; if empty list , jumps to else & prints empty qoute
          ((list? L))  ;;if list has items, returns true
          (else L)
          )
    )
> (reverse-general '(a b c d))
#t
> (define (reverse-general L)
    (cond ((null? L) '())
          ((list? L)
           (append (reverse-general (cdr L))
                   ('()))
           )
          (else L)
          )
    )
> (reverse-general '(a b c d))

(define (reverse-general L)
    (cond ((null? L) '())
          ((list? L)
           (append (reverse-general (cdr L))  ;;takes remaining items from list
                   (reverse-general '()))   ;;tried to print list in reverse
           )
          (else L)
          ))
    
> (reverse-general '(a b c d))   ;;keeps printing empty list

(define (reverse-general L)
    (cond ((null? L) '())
          ((list? L)
           (append(reverse-general (cdr L)) ;;extracts rest of list after 1st element
                  (list (reverse-general (car L))) ;;takes first element and adds it to list
                  )
           )
          (else L)
          )
    )

