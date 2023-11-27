(defstruct book
  title
  author
  pages)


(defun max-books-pages (arr)
  (let ((maxp (aref arr 0)))
    (dotimes (i (array-total-size arr) maxp)
      (if (> (book-pages (aref arr i)) (book-pages maxp)) (setq maxp (aref arr i)))))
  )

