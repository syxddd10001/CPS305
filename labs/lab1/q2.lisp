(defun fact (n)
  (if (/= n 1)
   (* n (fact(- n 1))) (+ n 0))
  )
