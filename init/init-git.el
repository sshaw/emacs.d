(setq github-notifier-update-interval 300)
(add-hook 'after-init-hook 'github-notifier-mode)

;; Don't prompt about unsaved buffers
(setq magit-save-repository-buffers nil)

(global-set-key (kbd "C-x g") 'magit-status)

(fullframe magit-status magit-mode-quit-window)

(global-set-key (kbd "C-c g l") 'git-link)
(global-set-key (kbd "C-c g c") 'git-link-commit)
(global-set-key (kbd "C-c g h") 'git-link-homepage)

(global-git-gutter-mode t)

(global-set-key (kbd "M-p") 'git-gutter:previous-hunk)
(global-set-key (kbd "M-n") 'git-gutter:next-hunk)
(global-set-key (kbd "C-c g s") 'git-gutter:stage-hunk)
(global-set-key (kbd "C-c g r") 'git-gutter:revert-hunk)

(setq git-gutter:hide-gutter t)
