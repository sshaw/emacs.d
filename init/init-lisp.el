(add-to-list 'auto-mode-alist
	     '("Cask\\(?:\\.[a-zA-Z0-9._-]+\\)?\\'" . emacs-lisp-mode))

(add-hook 'emacs-lisp-mode-hook
	  (lambda () (rainbow-delimiters-mode)))
