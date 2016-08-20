(setq github-notifier-update-interval 300)
(add-hook 'after-init-hook 'github-notifier-mode)

;; Don't prompt about unsaved buffers
(setq magit-save-repository-buffers nil)

(global-set-key (kbd "C-x g") 'magit-status)

(fullframe magit-status magit-mode-quit-window)
