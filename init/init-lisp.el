(add-to-list 'auto-mode-alist
	     '("\\(?:abbrev_defs\\|Cask\\(?:\\.[a-zA-Z0-9._-]+\\)?\\)\\'" . emacs-lisp-mode))

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'nameless-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

(add-hook 'ielm-mode-hook 'eldoc-mode)
