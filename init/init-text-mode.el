(add-hook 'text-mode-hook 'column-number-mode)
(add-hook 'text-mode-hook
	  (lambda () (abbrev-mode)))
(add-hook 'markdown-mode-hook
	  (lambda () (flyspell-mode)))
