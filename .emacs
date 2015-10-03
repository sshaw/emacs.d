(add-to-list 'load-path "~/.emacs.d/site-lisp")

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(dolist (path (directory-files "~/.emacs.d/init" t "\\.elc?\\'"))
  (load-file path))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'prog-mode-hook 'hs-minor-mode)

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(transient-mark-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t
      initial-scratch-message "")

(setq kill-do-not-save-duplicates t)

(setq safe-local-variable-values '((encoding . utf-8)))

;; For quoted insert
(setq read-quoted-char-radix 10)

;; Set prog-mode only?
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-s <mouse-1>") 'browse-url-at-mouse)
