(require 'dired-x)

(add-hook 'dired-mode-hook
          (lambda () (local-set-key (kbd "C-s") 'dired-narrow-regexp)))
