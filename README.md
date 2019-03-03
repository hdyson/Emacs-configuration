## Customisations for emacs, mainly for python development.

Checkout to ```~/.emacs.d``` directory, and remove ```~/.init.el``` etc.

Using a separate init file isolates changes via the custom interface to the init.el file.

To install requisite python packages, run ```(elpy-config)``` and follow the instructions.

Requires Emacs 24.4 or higher (tested with 26.1).  Might be possible to work
with emacs 24.3 using
https://github.com/jorgenschaefer/elpy/tree/backport-emacs24.3 and dropping
magit.

### Tips:

* Reminder for activating/deactivating a venv/conda env:
```
(pyvenv-activate (expand-file-name "~/miniconda2/envs/emacs"))
(pyvenv-deactivate)
```

### Uses (and installs) following emacs packages:

1. Elpy: https://github.com/jorgenschaefer/elpy
2. Magit: https://github.com/magit/magit
3. Markdown mode: https://jblevins.org/projects/markdown-mode/
4. Multiple cursors: https://github.com/magnars/multiple-cursors.el

