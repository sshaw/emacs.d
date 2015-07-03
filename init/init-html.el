(add-to-list 'auto-mode-alist
	     '("\\.htm?l\\'" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
