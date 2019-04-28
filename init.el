(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(elpy-enable)

(defun create-blogpost (x)
  "Create a new blogpost."
  (interactive "sPost title: ")
  (let ((file-date (shell-command-to-string "echo -n $(date +%Y-%m-%d)"))
	(file-title (s-replace " " "-" x))
	(post-date (shell-command-to-string (concat "echo -n $(date " (shell-quote-argument "+%Y-%m-%d %H:%M:%S") ")")))
	(post-title x)
	filename filepath)
    (setf filename (concat file-date "-" file-title ".md"))
    (setf filepath (concat "/Users/hdyson/Documents/Repos/Git/hdyson.github.io/_posts" filename))
    (write-region (concat "---
layout: default
title:  " post-title "
date:   " post-date "
categories: emacs
---
") 0 filepath t)
    (find-file filepath)))
