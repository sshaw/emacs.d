(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-files-aliases
		  '("rb" . "*.rb *.rake *.thor"))
     (add-to-list 'grep-files-aliases
		  '("rhtml" . "*.erb *.haml *.slim"))))

(add-to-list 'auto-mode-alist
	     '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|pryrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))

(add-to-list 'auto-mode-alist
	     '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'"   . ruby-mode))
