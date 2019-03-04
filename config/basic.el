;;; Set desktop mode for restoring buffers across emacs sessions
(desktop-save-mode 1)
(setq desktop-path '("~/.emacs.d/desktop" "~/.emacs.d/" "~"))

;; Setup some defaults - put point on variable and do C-h v to find
;; appropriate docs quickly.
(setq-default fill-column 78)
(setq default-major-mode 'text-mode)
(tool-bar-mode 0)
(column-number-mode t)
;; change all prompts to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Show file path in frame title
(setq-default frame-title-format "%b (%f)")

;; Working on parts of text
;; ------------------------
;; NB: `C-x n n' is narrow-to-region
;;     `C-x n p' is narrow-to-page
;;     `C-x n w' is widen
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page   'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)

;;ido mode to accelerate changing file/buffer.  See http://www.cua.dk/ido.html
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(ido-mode t)

;; Some default settings could be better.  There's probably more in
;; config/init.el that are still being experimented with.

(setq confirm-kill-emacs (quote yes-or-no-p))
;; These three disable attempts to make emacs more windows-like:
(setq cua-enable-cua-keys nil)
(setq shift-select-mode nil)
(setq delete-selection-mode nil)

;; Performs programme mode indent prior to aligning.
(setq align-indent-before-aligning t)
;; Delete all white space on backspace
(setq backward-delete-char-untabify-method t)
;; Parenthesis matching
(setq blink-matching-paren-on-screen t)
(show-paren-mode 1)
(setq require-final-newline t)
;; Fill puts two spaces after a colon
(setq colon-double-space t)
;; comment region comments out empty lines
(setq comment-empty-lines t)
;; Put 1 space between comment markers and code/text.
(setq comment-padding 1)
;; Comments can span lines
(setq comment-style (quote multi-line))
;; Indent inserts spaces always; never tabs.
(setq indent-tabs-mode nil)
;; ctrl-k kills whole line, including newline character.
(setq kill-whole-line t)
;; ctrl-k yanks read only text (DWIM rather than error)
(setq kill-read-only-ok t)
;; Highlight all search matches
(setq lazy-highlight-max-at-a-time nil)
;; searches ignore case
(setq case-fold-search t)
(setq show-trailing-whitespace t)
;; Config for recentf
(require 'recentf)
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

;; Avoid having to type '|' whenver starting ediff:
(setq ediff-merge-split-window-function (quote split-window-vertically))

;; Launch eshell at startup:
(add-hook 'emacs-startup-hook 'eshell)

;; Fix for emacs 24 -> 25 migration issue
(modify-all-frames-parameters '((horizontal-scroll-bars . nil)))
