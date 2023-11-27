(defun interleave (l1 l2 &optional (acc ()))
  (cond ((and (null l1) (null l2)) acc)
        ((and (null l1) (not (null l2))) (interleave l1 (cdr l2) (append acc (list (car l2)))))
        ((and (null l2) (not (null l1))) (interleave (cdr l1) l2 (append acc (list (car l1)))))
        (t (interleave (cdr l1) (cdr l2) (append acc (list (car l1)) (list (car l2))))))
  ) 
         


""" 
(a b) (1 2 3)
(a 1 b 2 3)
"""
