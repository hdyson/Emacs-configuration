(require 'package) ;; You might already have this line
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(elpy
    flycheck
    py-autopep8
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)


(if (file-readable-p "~/.emacs.d/config/basic.el")
       (load "~/.emacs.d/config/basic.el" nil t))
(if (file-readable-p "~/.emacs.d/config/keys.el")
       (load "~/.emacs.d/config/keys.el" nil t))
(if (file-readable-p "~/.emacs.d/config/python.el")
       (load "~/.emacs.d/config/python.el" nil t))
(if (file-readable-p "~/.emacs.d/config/functions.el")
       (load "~/.emacs.d/config/functions.el" nil t))
