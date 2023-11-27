(defun mapf (f a &optional acc '())
  (if (null a) acc
      (progn (setq acc (append acc (list (funcall f (car a)))))
             (mapf f (rest a) acc)))
  
  )
