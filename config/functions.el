(defun generate-temp-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "temp-")))
