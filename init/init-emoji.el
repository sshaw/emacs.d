;; ascii is a bit too invasive
(add-hook 'after-init-hook 'global-emojify-mode)
(emojify-set-emoji-styles '(unicode github))
(global-set-key (kbd "C-c m") 'emojify-apropos-emoji)
