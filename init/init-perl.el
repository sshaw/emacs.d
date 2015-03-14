(defalias 'perl-mode 'cperl-mode)

(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-files-aliases
		  '("pl" . "*.pm *.pl *.t"))))

(add-to-list 'auto-mode-alist
	     '("\\(?:\\.t\\|^cpanfile\\)\\'" . cperl-mode))
