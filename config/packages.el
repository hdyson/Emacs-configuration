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
    flycheck  ;; elpy dependency
    py-autopep8  ;; elpy dependency
    iedit  ;; elpy dependency
    magit ;; https://github.com/magit/
    markdown-mode  ;; https://jblevins.org/projects/markdown-mode/
    multiple-cursors  ;; https://github.com/magnars/multiple-cursors.el
    which-key  ;; https://github.com/justbur/emacs-which-key
    gif-screencast  ;; https://gitlab.com/ambrevar/emacs-gif-screencast
    keycast  ;; https://github.com/tarsius/keycast
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; package configs::

(with-eval-after-load 'gif-screencast
  (define-key gif-screencast-mode-map (kbd "<f10>") 'gif-screencast-toggle-pause)
  (define-key gif-screencast-mode-map (kbd "<f11>") 'gif-screencast-stop)
  (setq gif-screencast-args '("-x")) ;; To shut up the shutter sound of `screencapture' (see `gif-screencast-command').
  (setq gif-screencast-cropping-program "mogrify") ;; Optional: Used to crop the capture to the Emacs frame.
  (setq gif-screencast-capture-format "ppm") ;; Optional: Required to crop captured images.
)

(keycast-mode t)
