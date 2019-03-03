(require 'package) ;; You might already have this line
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(elpy  ;; https://github.com/jorgenschaefer/elpy
    flycheck
    py-autopep8
    iedit
    magit ;; https://github.com/magit/
    markdown-mode  ;; https://jblevins.org/projects/markdown-mode/
    multiple-cursors  ;; https://github.com/magnars/multiple-cursors.el
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

