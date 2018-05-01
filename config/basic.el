;;; Set desktop mode for restoring buffers across emacs sessions
(desktop-save-mode 1)

;; Setup some defaults - put point on variable and do C-h v to find
;; appropriate docs quickly.
(setq-default fill-column 78)
(setq default-major-mode 'text-mode)
(tool-bar-mode 0)

;; Show file path in frame title
(setq-default frame-title-format "%b (%f)")

;; Working on parts of text
;; ------------------------
;; NB: `C-x n n' is narrow-to-region
;;     `C-x n p' is narrow-to-page
;;     `C-x n w' is widen
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page   'disabled nil)

;;ido mode to accelerate changing file/buffer.  See http://www.cua.dk/ido.html
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(ido-mode t)

;; Performs programme mode indent prior to aligning.
(setq align-indent-before-aligning t)
;; Delete all white space on backspace
(setq backward-delete-char-untabify-method t)
;; Parenthesis matching
(setq blink-matching-paren-on-screen t)
(show-paren-mode 1)

;; searches ignore case
(setq case-fold-search t)
;; Fill puts two spaces after a colon
(setq colon-double-space t)
;; comment region comments out empty lines
(setq comment-empty-lines t)
;; Put 1 space between comment markers and code/text.
(setq comment-padding 1)
;; Comments can span lines
(setq comment-style (quote multi-line))


;; Disable overwriting selection.
(setq delete-selection-mode nil)

;; Indent inserts spaces always; never tabs.
(setq indent-tabs-mode nil)
;; ctrl-k kills whole line, including newline character.
(setq kill-whole-line t)
;; Highlight all search matches
(setq lazy-highlight-max-at-a-time nil)

;; Config for recentf
(require 'recentf)

;; get rid of `find-file-read-only' and replace it with something
;; more useful.
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

;; enable recent files mode.
(recentf-mode t)

;; 50 files ought to be enough.
(setq recentf-max-saved-items 50)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))
;; End config for recentf

;; Launch eshell at startup:

(add-hook 'emacs-startup-hook 'eshell)

;; Fix for emacs 24 -> 25 migration issue
(modify-all-frames-parameters '((horizontal-scroll-bars . nil)))
