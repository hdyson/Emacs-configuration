(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

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
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

