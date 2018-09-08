## Customisations for emacs for python development.

Checkout to ```~/.emacs.d``` directory, and remove ```~/.init.el``` etc.

Using a separate init file isolates changes via the custom interface to the init.el file.

To install requisite python packages, run ```(elpy-config)``` and follow the instructions.

Requires Emacs 24.4 or higher (tested with 26.1).

### Tips:

* Reminder for activating/deactivating a venv/conda env:
```
(pyvenv-activate (expand-file-name "~/miniconda2/envs/emacs"))
(pyvenv-deactivate)
```
