(defun insertionsort (ls)
  (dotimes (i (1- (length ls)))
      (do ((j i (1- j)))
          ((minusp j))
        (if (< (aref ls (1+ j)) (aref ls j))
            (rotatef (aref ls (1+ j)) (aref ls j))
            (return)))
      )
  ls)
