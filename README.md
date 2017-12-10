## Customisations for emacs for python development.

Checkout to ```~/.emacs.d``` directory.  The corresponding ```~/.emacs``` file is just:

```
(load "~/.emacs.d/init.el" nil t)
```

Using a separate init file isolates changes via the custom interface to the init.el file.

To install requisite python packages, run ```(elpy-config)``` and follow the instructions.

### Tips:

Reminder for activating/deactivating a venv/conda env:
```
(pyvenv-activate (expand-file-name "~/path/to/venv"))
(pyvenv-deactivate)
```
