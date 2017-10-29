(eval-after-load 'coffee-mode
  '(setq coffee-tab-width 2))

(add-to-list 'auto-mode-alist
	     '("\\.coffee\\.erb\\'" . coffee-mode))

(add-to-list 'auto-mode-alist
             '("\\.jsx\\'" . web-mode))
