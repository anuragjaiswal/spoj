(defun genPrimes(lower upper)
	(loop for n from lower to upper
		if(checkprime n)
			do(	setq answers (cons n answers))
	)
)

(defun checkprime(n)
	(cond 	((= 1 n) nil)
	((= 2 n) t) ;; Hard-code "2 is a prime"
				((= 3 n) t) ;; Hard-code "3 is a prime"
				((evenp n) nil) ;; If we're looking at an even now, it's not a prime
				;((member n answers) t)
				(t ;; If it is divisible by an odd number below its square root, it's not prime
				   (loop for i from 3 to (isqrt n) by 2
						 never (zerop (mod n i))
					)
				)
		)
)

(defun primes()
	(setq n (read))
	(setq answers ())
	
	(dotimes  (i n)
		(setq number1 (read) )
		(setq number2 (read) )
		(genPrimes number1 number2)
		(setq answers (cons '4 answers))
	)
	;(setq n1 (checkprime n))
	;(format t "~A~%" n1)
	(setq answers (reverse answers))
	(loop for x in answers
		do(printnum x)
	)
)

(defun printnum(x)
	(cond 
		((= x 4)(terpri))
		(t (format t "~A~%" x))
	)
)

(primes)