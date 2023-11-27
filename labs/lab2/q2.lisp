;; Type this code, as is, in your lab02-ans.lisp file.
;; DO NOT MODIFY THIS CODE
(defparameter *events* (list))

(defun roll-dice ()
  (let* ((s1 (1+ (random 6)))
         (s2 (1+ (random 6)))
         (sum (+ s1 s2)))
    (push (list sum s1 s2) *events*)
    sum))

(defun simulate-dice-rolls (n)
  (if (< n 2) (setq n 2))
  (let* ((previous 0) (current 0) (sum 0))
    (setq previous (roll-dice))
    (format t "roll 1: ~a~%" previous)
    (do* ((times 1 (+ times 1))) ((= times n) sum)
      (setq current (roll-dice))
      (format t "roll ~a: ~a~%" (+ times 0) current)
      (if (> current previous) (setq sum (+ sum 1)))
      (setq previous current)))) 


(defun execute-experiment (n)
  "This function implements a simple interface for analyzing the
   operation of function SIMULATE-DICE-ROLLS"
  (setf *events* (list))
  (let ((res (simulate-dice-rolls n)))
    (format t "simulate-dice-rolls returned: ~a~%(Sum Dice1 Dice2) values: ~a~%" res (reverse *events*))))


  
