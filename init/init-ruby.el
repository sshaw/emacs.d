(require 'rvm)
(rvm-use-default)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-files-aliases
		  '("rb" . "*.rb *.rake *.thor"))
     (add-to-list 'grep-files-aliases
		  '("rhtml" . "*.erb *.haml *.slim"))))

(add-hook 'ruby-mode-hook
          (lambda ()
	    (rvm-activate-corresponding-ruby)
	    (ruby-factory-mode)

	    (when (and (functionp 'flycheck-locate-config-file)
		       (not (flycheck-locate-config-file flycheck-rubocoprc "ruby-rubocop")))
	      (add-to-list 'flycheck-disabled-checkers 'ruby-rubocop))))

(add-to-list 'auto-mode-alist
	     '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|pryrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))

(add-to-list 'auto-mode-alist
	     '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'"   . ruby-mode))

(add-to-list 'auto-mode-alist
	     '("\\.erb\\'" . web-mode))
