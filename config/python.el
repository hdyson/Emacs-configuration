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
;; (setq python-shell-interpreter "ipython"
;;      python-shell-interpreter-args "-i --simple-prompt")

;; Use jupyter for shell
;; See: https://elpy.readthedocs.io/en/latest/ide.html#interpreter-setup
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")


(setq python-check-command (executable-find "flake8"))
;; onetwo means sinlge line docstring has quotes in same line; multi-line
;; docstrings have quotes on separate lines.
(setq python-fill-docstring-style (quote onetwo))
