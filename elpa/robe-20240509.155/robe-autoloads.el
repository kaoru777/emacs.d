;;; robe-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from robe.el

(autoload 'company-robe "robe" "\
A `company-mode' completion back-end for `robe-mode'.

(fn COMMAND &optional ARG &rest IGNORE)" t)
(autoload 'robe-mode "robe" "\
Improved navigation for Ruby.

The following commands are available:

\\{robe-mode-map}

This is a minor mode.  If called interactively, toggle the `robe
mode' mode.  If the prefix argument is positive, enable the mode,
and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `robe-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(put 'global-robe-mode 'globalized-minor-mode t)
(defvar global-robe-mode nil "\
Non-nil if Global Robe mode is enabled.
See the `global-robe-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-robe-mode'.")
(custom-autoload 'global-robe-mode "robe" nil)
(autoload 'global-robe-mode "robe" "\
Toggle Robe mode in all buffers.
With prefix ARG, enable Global Robe mode if ARG is positive; otherwise, disable
it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Robe mode is enabled in all buffers where `robe-mode-on' would do it.

See `robe-mode' for more information on Robe mode.

(fn &optional ARG)" t)
(register-definition-prefixes "robe" '("company-robe--prefix" "robe-"))

;;; End of scraped data

(provide 'robe-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; robe-autoloads.el ends here
