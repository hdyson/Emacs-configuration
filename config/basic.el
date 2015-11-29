;;; Set desktop mode for restoring buffers across emacs sessions
(desktop-save-mode 1)

;; Setup some defaults - put point on variable and do C-h v to find
;; appropriate docs quickly.
(setq-default fill-column 78)
(setq default-major-mode 'text-mode)

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

