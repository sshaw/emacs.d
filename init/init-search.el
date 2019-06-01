;; fullframe has problems with interactive functions https://github.com/tomterl/fullframe/issues/14
;;(fullframe rgrep quit-window)
;;(global-set-key (kbd "C-x r") 'rgrep)

;; Default binding calls set-fill-column
(global-set-key (kbd "C-x f") 'find-dired)

(setq ffap-require-prefix t)
(ffap-bindings)

(global-anzu-mode 1)
(global-set-key [remap query-replace] 'anzu-query-replace)
(global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
