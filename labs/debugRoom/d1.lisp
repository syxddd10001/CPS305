(defun merge-sorted-lists (l1 l2 &optional l3 '())
  (cond ((and (null l1) (null l2)) (return-from merge-sorted-lists l3))
        ((or (null l1) (null l2)) 
         (if (null l1) (setq l3 (append l3 l2)) (setq l3 (append l3 l1)))
         (return-from merge-sorted-lists l3))
        
        ((> (car l2) (car l1))
         (setq l3 (append l3 (list (pop l1)))))

        ((< (car l2) (car l1))
         (setq l3 (append l3 (list (pop l2)))))

        ((= (car l1) (car l2))
         (setq l3 (append l3 (list (pop l1)))) 
         (setq l3 (append l3 (list (pop l2)))))
        )

  (merge-sorted-lists l1 l2 l3))

(defun sum-deep-list (a &optional (sum 0))
  (cond ((null a) sum)
        ((not (listp (car a))) (sum-deep-list (cdr a) (+ sum (car a))))
        (t (sum-deep-list (cdr a) (+ sum (sum-deep-list (car a)))))
        )
  )

(defun sum-deep-list-int (a &optional (sum 0))
  (cond ((null a) sum)
        ((integerp (car a)) (sum-deep-list-int (cdr a) (+ sum (car a))))
        ((listp (car a)) (sum-deep-list-int (cdr a) (+ sum (sum-deep-list-int (car a)))))
        (t (sum-deep-list-int (cdr a) sum) ))
  )


(defun flatten-list (a &optional blist '())
  (cond ((null a) blist)
        ((not (listp (car a))) (flatten-list (cdr a) (append blist (list (car a)))))
        (t (flatten-list (cdr a) (append blist (flatten-list (car a)))))
        )
  ) 


(defun is-palindrome? (ls &optional (backlist ls) revlist)
  (cond ((and (equal backlist revlist) (null ls)) t)
        ((null ls) nil)
        ((push (car ls) revlist)
         (is-palindrome? (cdr ls) backlist revlist)))
  )

