首先是 (1 3 (5 7) 9) ：

1 ]=> (define x (list 1 3 (list 5 7) 9))

;Value: x

1 ]=> x

;Value 11: (1 3 (5 7) 9)

1 ]=> (cdr x)

;Value 12: (3 (5 7) 9)

1 ]=> (cddr x)

;Value 13: ((5 7) 9)

1 ]=> (caddr x)

;Value 14: (5 7)

1 ]=> (cdaddr x)

;Value 15: (7)

1 ]=> (car (cdaddr x))

;Value: 7
然后是 ((7)) ：

1 ]=> (define y (list (list 7)))

;Value: y

1 ]=> y

;Value 16: ((7))

1 ]=> (car y)

;Value 17: (7)

1 ]=> (caar y)

;Value: 7
最后是 (1 (2 (3 (4 (5 (6 7)))))) ：

1 ]=> (define z (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

;Value: z

1 ]=> (cdr z)

;Value 24: ((2 (3 (4 (5 (6 7))))))

1 ]=> (cadr z)

;Value 25: (2 (3 (4 (5 (6 7)))))

1 ]=> (cdadr z)

;Value 26: ((3 (4 (5 (6 7)))))

1 ]=> (cadadr z)

;Value 27: (3 (4 (5 (6 7))))

1 ]=> (cdr (cadadr z))

;Value 28: ((4 (5 (6 7))))

1 ]=> (cadr (cadadr z))

;Value 29: (4 (5 (6 7)))

1 ]=> (cdadr (cadadr z))

;Value 30: ((5 (6 7)))

1 ]=> (cadadr (cadadr z))

;Value 31: (5 (6 7))

1 ]=> (cdr (cadadr (cadadr z)))

;Value 32: ((6 7))

1 ]=> (cadr (cadadr (cadadr z)))

;Value 33: (6 7)

1 ]=> (cdadr (cadadr (cadadr z)))

;Value 34: (7)

1 ]=> (cadadr (cadadr (cadadr z)))

;Value: 7
