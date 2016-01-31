(add-hook 'prog-mode-hook 'column-number-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook
	  (lambda () (abbrev-mode)))
(add-hook 'prog-mode-hook
	  (lambda () (flyspell-prog-mode)))
