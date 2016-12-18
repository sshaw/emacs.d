(add-hook 'prog-mode-hook 'column-number-mode)
(add-hook 'prog-mode-hook 'dumb-jump-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook
	  (lambda () (abbrev-mode)))
(add-hook 'prog-mode-hook
	  (lambda () (flyspell-prog-mode)))

(global-set-key (kbd "C-c w s") 'copy-as-format-slack)
(global-set-key (kbd "C-c w g") 'copy-as-format-github)
