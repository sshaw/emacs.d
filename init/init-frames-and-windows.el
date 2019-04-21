;; From https://www.emacswiki.org/emacs/ToggleWindowSplit
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
	     (next-win-buffer (window-buffer (next-window)))
	     (this-win-edges (window-edges (selected-window)))
	     (next-win-edges (window-edges (next-window)))
	     (this-win-2nd (not (and (<= (car this-win-edges)
					 (car next-win-edges))
				     (<= (cadr this-win-edges)
					 (cadr next-win-edges)))))
	     (splitter
	      (if (= (car this-win-edges)
		     (car (window-edges (next-window))))
		  'split-window-horizontally
		'split-window-vertically)))
	(delete-other-windows)
	(let ((first-win (selected-window)))
	  (funcall splitter)
	  (if this-win-2nd (other-window 1))
	  (set-window-buffer (selected-window) this-win-buffer)
	  (set-window-buffer (next-window) next-win-buffer)
	  (select-window first-win)
	  (if this-win-2nd (other-window 1))))))

(define-key ctl-x-4-map "t" 'toggle-window-split)

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
