(defun reversen(n)
	(setq x n)
	(setq z 0)
	(loop 
		(setq r (mod x 10))
		(setq x ( / (- x r) 10))
		(setq z (+ (* z 10) r))
		(when ( = x 0) (return))
	)
	z
)

(defun addrev()
	(setq n (read)) 
	(setq answers ())
	(dotimes  (i n)
		(setq number1 (reversen (read)) )
		(setq number2 (reversen (read)) )
		(setq number3 (+ number1 number2) )
		(setq number4 (reversen number3 ))
		(setq answers (cons number4 answers))		
	)	
	(setq answers (reverse answers))
	(loop for x in answers
		do (format t "~A~%" x)
	)
)

(addrev)
