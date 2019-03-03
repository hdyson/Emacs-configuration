(defvar myConfigFiles
  '("~/.emacs.d/config/packages.el"
    "~/.emacs.d/config/basic.el"
    "~/.emacs.d/config/keys.el"
    "~/.emacs.d/config/python.el"
    "~/.emacs.d/config/functions.el"
    ))

(mapc #'(lambda (config)
	  (if (file-readable-p config) (load config nil t)))
      myConfigFiles)


;; C-h v (i.e. describe-variable) on variables for description of what they
;; do:
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
 '(ido-mode (quote both) nil (ido))
 '(kill-read-only-ok t)
 '(kill-whole-line t)
 '(mouse-avoidance-mode nil nil (avoid))
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
 '(tool-bar-mode nil))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
