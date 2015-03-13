(add-hook 'prog-mode-hook
	  (lambda () (flyspell-prog-mode)))

;; TODO: this should not be necessary, it's a text-mode.
(add-hook 'markdown-mode-hook
	  (lambda () (flyspell-mode)))
