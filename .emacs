(add-to-list 'load-path "~/.emacs.d/site-lisp")

(require 'cask
	 (if (file-exists-p "~/.cask/cask.el")
	     "~/.cask/cask.el"
	   ;; Homebrew Cask installation
	   "/usr/local/share/emacs/site-lisp/cask/cask.el"))
(cask-initialize)

(require 'ignoramus)
(ignoramus-setup)

(require 'diminish)
(diminish 'anzu-mode)
(diminish 'eldoc-mode)
(diminish 'git-gutter-mode)
(diminish 'abbrev-mode)
(diminish 'yas-minor-mode)
(dolist (mode beginend-modes) (diminish (cdr mode)))

(persistent-scratch-setup-default)
(beginend-global-mode)

(dolist (path (directory-files "~/.emacs.d/init" t "\\.elc?\\'"))
  (load-file path))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'after-init-hook 'global-flycheck-mode)

;; Don't accidentally kill *scratch*
(add-to-list 'kill-buffer-query-functions
	     (lambda ()
	       (when (not (string= (buffer-name (current-buffer)) "*scratch*")) t)))

(add-to-list 'completion-ignored-extensions ".sqlite3")

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(transient-mark-mode t)
(delete-selection-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default indent-tabs-mode nil)

(setq inhibit-startup-message t
      initial-scratch-message "")

(setq kill-do-not-save-duplicates t)

(setq safe-local-variable-values '((encoding . utf-8)))

;; Don't wake the wife & kids...
(setq ring-bell-function 'ignore)

;; For quoted insert
(setq read-quoted-char-radix 10)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (setq mac-option-modifier 'meta))

;; Set prog-mode only?
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "M-s <mouse-1>") 'browse-url-at-mouse)
