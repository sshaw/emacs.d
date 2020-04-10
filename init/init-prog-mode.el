(add-hook 'prog-mode-hook 'column-number-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook 'issue-link-mode)
(add-hook 'prog-mode-hook
	  (lambda () (abbrev-mode)))
(add-hook 'prog-mode-hook
	  (lambda () (flyspell-prog-mode)))

(global-set-key (kbd "C-c w s") 'copy-as-format-slack)
(global-set-key (kbd "C-c w g") 'copy-as-format-github)
(global-set-key (kbd "C-c w j") 'copy-as-format-jira)
(global-set-key (kbd "C-c w m") 'copy-as-format-markdown)
(global-set-key (kbd "C-c w o") 'copy-as-format-org-mode)

;; dumb-jump's default except for dumb-jump-back
(define-key prog-mode-map (kbd "C-M-g") 'dumb-jump-go)
(define-key prog-mode-map (kbd "C-M-[") 'dumb-jump-back)
(define-key prog-mode-map (kbd "C-M-q") 'dumb-jump-quick-look)
