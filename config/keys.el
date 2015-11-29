;;; Global key bindings (some duplicates to account for OS X intercepting some
;;; and preventing them being seen by emacs):

(global-set-key [M-left]  'backward-sentence)
(global-set-key [M-right] 'forward-sentence)
(global-set-key [M-up]    'beginning-of-defun)
(global-set-key [M-down]  'end-of-defun)

(global-set-key [C-left]  'backward-word)
(global-set-key [C-right] 'forward-word)
(global-set-key [C-up]    'beginning-of-line)
(global-set-key [C-down]  'end-of-line)

(global-set-key [S-insert] 'insert-file)

(global-set-key [f1]    'find-file-at-point)
(global-set-key [f9]    'find-file-at-point)
(global-set-key [pause] 'toggle-read-only)
(global-set-key [f10] 'toggle-read-only)

(global-set-key [f2]  'split-window)
(global-set-key [f11]  'split-window)
(global-set-key [f5]  'save-buffer)

(global-set-key [f6]  'execute-extended-command)
(global-set-key [f7]  'buffer-menu)

(global-set-key [C-tab] 'other-window)
(global-set-key [C-`] 'other-window)
(global-set-key [M-delete] 'kill-word)

(global-set-key [insert] 'abbrev-mode)
(global-set-key [f12] 'abbrev-mode)

(global-set-key [print]  'ps-print-buffer-with-faces)

(global-set-key "\M-?" 'hippie-expand)
