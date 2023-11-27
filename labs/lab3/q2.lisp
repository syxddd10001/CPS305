(defstruct person
  name
  age)


(defun filter-ages (vect age)
  (let ((x (make-array 0 :adjustable t :fill-pointer 0)))
     (dotimes (i (length vect))
       (if (and (typep (aref vect i) 'person)
                (> (person-age (aref vect i)) age)) (vector-push-extend (aref vect i) x))) x))


(defun array-group (a1 a2 &optional x (make-array (max (length a1) (length a2))))
  (if (and (zerop (length a1)) (zerop (length a2))) (return-from array-group x))
   (let ((temp #(0 0)))
     (if (zerop (length a1)) (setf (aref temp 0) nil) (setf (aref temp 0) (aref a1 0)))
     (if (zerop (length a2)) (setf (aref temp 1) nil) (setf (aref temp 1) (aref a2 0)))
     ()
     )
  
  )

  
       
  
  
