;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files

(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

(let* ((org-dir (expand-file-name
                 "lisp" (expand-file-name
                         "org" (expand-file-name
                                "src" dotfiles-dir))))
       (org-contrib-dir (expand-file-name
                         "lisp" (expand-file-name
                                 "contrib" (expand-file-name
                                            ".." org-dir))))
       (load-path (append (list org-dir org-contrib-dir)
                          (or load-path nil))))
  ;; load up Org-mode and Org-babel
  (require 'org-install)
  (require 'ob-tangle))

;; load up all literate org-mode files in this directory
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;;; init.el ends here

;;; Below here is where the customise interface sets variables -
;;; usually settings I'm experimenting with but haven't committed to.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "~/.emacs.backups"))))
 '(custom-enabled-themes (quote (tango-dark)))
 '(elpy-rpc-python-command "python3")
 '(eshell-buffer-maximum-lines 10240)
 '(eshell-cmpl-compare-entry-function (quote string-lessp))
 '(eshell-cmpl-cycle-completions nil)
 '(eshell-history-size 100000)
 '(eshell-modules-list
   (quote
    (eshell-alias eshell-banner eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-script eshell-smart eshell-term eshell-unix eshell-xtra)))
 '(mouse-avoidance-mode nil nil (avoid))
 '(revert-without-query (quote (".*\\.err" ".*\\.out")))
 '(switch-to-buffer-in-dedicated-window (quote prompt))
 '(tab-always-indent (quote complete))
 '(tab-stop-list (quote (4 8))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-font-face ((t (:height 15 :family "DejaVu Sans Mono")))))
