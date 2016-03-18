(add-to-list 'auto-mode-alist
	     '("\\.\\(?:html?\\|liquid\\)\\'" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
