;; Just argument listing.
(defun args1 ()
  (let ((args *args*))
    (dolist (arg args)
      (format t "Argument: ~A~%" arg))))

;; Arguments listing with position.
(defun args2 ()
  (let ((args *args*))
    (loop for arg in args
          for index from 0
          do (format t "Argument ~D: ~A~%" index arg))))

(args1)
(args2)

