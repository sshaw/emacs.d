(add-hook 'prog-mode-hook 'column-number-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook
	  (lambda () (abbrev-mode)))
(add-hook 'prog-mode-hook
	  (lambda () (flyspell-prog-mode)))

(global-set-key (kbd "C-c w s") 'copy-as-format-slack)
(global-set-key (kbd "C-c w g") 'copy-as-format-github)

;; dumb-jump's default except for dumb-jump-back
(global-set-key (kbd "C-M-g") 'dumb-jump-go)
(global-set-key (kbd "C-M-[") 'dumb-jump-back)
(global-set-key (kbd "C-M-q") 'dumb-jump-quick-look)
