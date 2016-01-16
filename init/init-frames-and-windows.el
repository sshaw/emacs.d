(toggle-scroll-bar -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(setq x-select-enable-clipboard t)
(setq save-interprogram-paste-before-kill t)

(windmove-default-keybindings)
(winner-mode 1)

;; ace-mode(s)
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-scope 'frame)

(add-hook 'linum-mode-hook 'hlinum-activate)
