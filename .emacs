(require 'cask "~/.cask/cask.el")
(cask-initialize)

(dolist (path (directory-files "~/.emacs.d/init" t "\\.elc?\\'"))
  (load-file path))
