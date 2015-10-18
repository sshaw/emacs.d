(toggle-scroll-bar -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (setq mac-option-modifier 'meta))

(setq x-select-enable-clipboard t)
(setq save-interprogram-paste-before-kill t)

(windmove-default-keybindings)
(winner-mode 1)

;; ace-mode(s)
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-scope 'frame)

(add-hook 'linum-mode-hook 'hlinum-activate)

;; override text-scale-adjust with zoom-frm's functions
(require 'zoom-frm)
(define-key ctl-x-map [(control ?+)] 'zoom-in/out)
(define-key ctl-x-map [(control ?-)] 'zoom-in/out)
(define-key ctl-x-map [(control ?=)] 'zoom-in/out)
(define-key ctl-x-map [(control ?0)] 'zoom-in/out)
