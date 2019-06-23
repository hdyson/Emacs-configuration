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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(elpy-test-pytest-runner-command (quote ("pytest")))
 '(elpy-test-runner (quote elpy-test-pytest-runner))
 '(eshell-buffer-maximum-lines 10240)
 '(eshell-cmpl-compare-entry-function (quote string-lessp))
 '(eshell-cmpl-cycle-completions nil)
 '(eshell-history-size 100000)
 '(eshell-modules-list
   (quote
    (eshell-alias eshell-banner eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-script eshell-smart eshell-term eshell-unix eshell-xtra)))
 '(mouse-avoidance-mode nil nil (avoid))
 '(package-selected-packages
   (quote
    (keycast gif-screencast which-key multiple-cursors markdown-mode magit iedit py-autopep8 flycheck elpy)))
 '(revert-without-query (quote (".*\\.err" ".*\\.out")))
 '(switch-to-buffer-in-dedicated-window (quote prompt))
 '(tab-always-indent (quote complete))
 '(tab-stop-list (quote (4 8))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
