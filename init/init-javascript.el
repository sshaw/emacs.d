(eval-after-load 'coffee-mode
  '(setq coffee-tab-width 2))

(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-files-aliases
		  '("js" . "*.js *.jsx *.ts *.tsx"))))

(add-to-list 'auto-mode-alist
	     '("\\.coffee\\.erb\\'" . coffee-mode))

(add-to-list 'auto-mode-alist
             '("\\.jsx\\'" . web-mode))
