(defun binarySearch (arr targ)
  (let ((arrlen))
   (cond ((null arr) nil)
        ((eq (car arr) targ) t)
        ((binarySearch (rest arr) targ)))
   
   
   )
  )
  
  
  
