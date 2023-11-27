(defstruct movie
  title director year type)


; takes movies array, and a movie.
; if the movie title exits, return null
; else if the array is not full, add the movie to the list

(defparameter *size* 10)

(defvar *database* (make-array *size* :initial-element nil))

(defun movie-there (movies movie)
  (dotimes (i (array-total-size movies))
    (when (typep (aref movies i) 'movie)
      (if (equal (movie-title (aref movies i))(movie-title movie))
          (return t)))))

(defun add-movie (movies movie)
  (dotimes (i (array-total-size movies))
    (when (and (not (typep (aref movies i) 'movie)) (not (movie-there movies movie)))
      (setf (aref movies i) movie)
      (return t))))

(defun delete-movie (movies movie)
  (dotimes (i (array-total-size movies))
    (when (and (typep (aref movies i) 'movie) (equal (movie-title (aref movies i)) (movie-title movie)))
      (setf (aref movies i) nil) (return t))))

(defun num-movies (movies)
   (let ((count 0)) (dotimes (i (array-total-size movies))
             (when (typep (aref movies i) 'movie) (incf count))) count))

(defun print-array (array)
  (dotimes (i (array-total-size array))
    (print (aref array i))))
