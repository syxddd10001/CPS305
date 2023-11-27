(defun make-even (n)
  (if (oddp n) (+ n 1)
      n)
  )

(print (make-even 3))
