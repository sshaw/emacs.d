(add-to-list 'auto-mode-alist
	     '("\\.\\(?:html?\\|liquid\\)\\'" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)

(add-hook 'web-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-c b") 'browse-url-of-buffer)))
