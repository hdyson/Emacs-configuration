## Customisations for emacs for python development.

Corresponding ```.emacs``` file is just:

```
(load "~/.emacs.d/init.el" nil t)
```

Using a separate init file isolates changes via the custom interface to the init.el file.

Includes required emacs packages, requires these python packages to be install too (via pip or similar).

For [flycheck](http://www.flycheck.org/manual/0.25.1/index.html):

1. pyflakes

For [Jedi.el](http://tkf.github.io/emacs-jedi/latest/):

1. virtualenv
2. epc
3. jedi

Reminder for activating/deactivating a venv/conda env:
```
(pyvenv-activate (expand-file-name "~/path/to/venv"))
(pyvenv-deactivate)
```
