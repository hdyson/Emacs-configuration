;;; Python setup

(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
;; (require 'py-autopep8)
;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Use ipython for shell
;; See: https://elpy.readthedocs.io/en/latest/ide.html#interpreter-setup
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(flycheck-disabled-checkers (quote (python-pylint)))
(python-check-command (executable-find "flake8"))
(python-fill-docstring-style (quote onetwo))
(python-shell-first-prompt-hook
 (quote
  (python-shell-completion-native-turn-on-maybe-with-msg python-shell-send-setup-code)))
(python-shell-interpreter "ipython")
(python-shell-interpreter-args "--simple-prompt ")
(python-shell-interpreter-interactive-arg "-i")
(python-shell-process-environment nil)
