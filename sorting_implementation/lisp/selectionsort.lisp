"Selection Sort Algorithm Implementation"

(defun selectionsort (vec)
  (dotimes (curr (array-total-size vec))
    (let ((best curr) (idx curr))
      (do ((i curr (1+ i))) (= i (array-total-size vec))
        (rotatef (aref vec curr) (aref vec best))
        (if (> (aref vec i) (aref vec best)) (setq best i)))
      ))
  vec)
