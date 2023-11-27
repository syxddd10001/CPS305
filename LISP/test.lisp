(defstruct person
  (name "" :type string)
  (age 0 :type integer)
  (address "" :type string)
  (hobbies '() :type list)
  )

(defparameter *PEOPLE* (make-array 5 :initial-element nil))


(defun add-person (name age address hobbies)
  (dotimes (n (length *people*) t)
    (if (not (equal (aref *people* n) nil)) (if (and (equal (person-name (aref *people* n)) name) (equal (person-address (aref *people* n)) address)) (return-from add-person nil))))
  
  (dotimes (i (length *people*) i)
    (if (equal (aref *people* i) nil)
       (progn
         (setf (aref *people* i) (make-person :name name :age age :address address :hobbies hobbies))
         (return-from add-person i))))
  

  )


(defun find-people-with-hobby (hobby)
  (let (people '())
    (dotimes (i (length *people*) people)
      (if (not (equal (aref *people* i) nil))
       (dotimes (j (length (person-hobbies (aref *people* i))))
         (when (equal hobby (nth j (person-hobbies (aref *people* i))))
             (setf people (append people (list (person-name (aref *people* i)))))
             (return))
         ))
      )
    )
  )
