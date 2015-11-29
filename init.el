(if (file-readable-p "~/.emacs.d/config/basic.el")
       (load "~/.emacs.d/config/basic.el" nil t))
(message "Loaded init")
