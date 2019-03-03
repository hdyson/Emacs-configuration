
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

;; dashboard config:
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-startup-banner 'official)
(setq dashboard-items '((recents  . 15)
                        (bookmarks . 10)
                        ;; (projects . 5)
                        ;; (agenda . 5)
                        (registers . 5)))

;; multiple cursors config:
(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-c m >") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c m <") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c m A") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click
		)

(if (file-readable-p "~/.emacs.d/config/basic.el")
       (load "~/.emacs.d/config/basic.el" nil t))
(if (file-readable-p "~/.emacs.d/config/keys.el")
       (load "~/.emacs.d/config/keys.el" nil t))
(if (file-readable-p "~/.emacs.d/config/python.el")
       (load "~/.emacs.d/config/python.el" nil t))
(if (file-readable-p "~/.emacs.d/config/functions.el")
       (load "~/.emacs.d/config/functions.el" nil t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cua-enable-cua-keys nil)
 '(custom-enabled-themes (quote (tango-dark)))
 '(desktop-path (quote ("~/.emacs.d/desktop" "~/.emacs.d/" "~")))
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(eshell-buffer-maximum-lines 10240)
 '(eshell-cmpl-compare-entry-function (quote string-lessp))
 '(eshell-cmpl-cycle-completions nil)
 '(eshell-history-size 100000)
 '(eshell-modules-list
   (quote
    (eshell-alias eshell-banner eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-script eshell-smart eshell-term eshell-unix eshell-xtra)))
 '(flycheck-disabled-checkers (quote (python-pylint)))
 '(ido-mode (quote both) nil (ido))
 '(kill-read-only-ok t)
 '(kill-whole-line t)
 '(mouse-avoidance-mode nil nil (avoid))
 '(package-selected-packages (quote (iedit py-autopep8 flycheck elpy)))
 '(python-check-command (executable-find "flake8"))
 '(python-fill-docstring-style (quote onetwo))
 '(python-shell-first-prompt-hook
   (quote
    (python-shell-completion-native-turn-on-maybe-with-msg python-shell-send-setup-code)))
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--simple-prompt ")
 '(python-shell-interpreter-interactive-arg "-i")
 '(python-shell-process-environment nil)
 '(require-final-newline t)
 '(revert-without-query (quote (".*\\.err" ".*\\.out")))
 '(shift-select-mode nil)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(speedbar-frame-parameters
   (quote
    ((minibuffer)
     (width . 30)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0))))
 '(switch-to-buffer-in-dedicated-window (quote prompt))
 '(tab-always-indent (quote complete))
 '(tab-stop-list (quote (4 8)))
 '(tool-bar-mode nil)
 '(truncate-lines t))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
