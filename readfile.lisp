(defun process-file (filename)
  (with-open-file (stream filename
                          :direction :input
                          :if-does-not-exist :error)
    (loop for line = (read-line stream nil)
          for index from 0
          while line do
          (format t "Line ~D: ~A~%" index line))))

(process-file "zigzen.txt")

