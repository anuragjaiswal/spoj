(defun life()

(loop 
   (setq a (read))   
   (when (= a 42) (return))
   (format t "~A~%" a)
)
)
(life)
;defun ask-number ()
; (let ((val (read)))
;   (when (not (equal 42 val))
;     (format t "~A~%" val)
;     (ask-number))))
;
;(ask-number)