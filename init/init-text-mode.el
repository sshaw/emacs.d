(add-hook 'text-mode-hook 'column-number-mode)
(add-hook 'text-mode-hook 'abbrev-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

;; Don't want change-log-mode
(add-to-list 'auto-mode-alist
             '("C[Hh][Aa][Nn][Gg][Ee][Ss]\\(?:\\.txt\\)?\\'" . text-mode))
