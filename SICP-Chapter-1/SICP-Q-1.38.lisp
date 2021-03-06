(define (cont-frac N D k)
	(define (cf i)
		(if (= i k)
			(/ (N i) (D i))
			(/ (N i) (+ (D i) (cf (+ i 1))))
		)
	)
	(cf 1)
)

(define (D i) 
	(cond ((< i 3) i)
		  ((= (remainder i 3) 2) (/ (+ (* 2 i) 2) 3))
		  (else 1)
	)
)

(define (Euler k)
	(+ (cont-frac (lambda (i) 1.0) D k) 2)
)
