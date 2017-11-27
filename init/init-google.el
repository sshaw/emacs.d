(setq google-translate-translation-directions-alist
      '(("pt" . "en") ("en" . "pt")
        ("es" . "en") ("en" . "es")
        ("pt" . "es") ("es" . "pt")))

(global-set-key (kbd "C-c t") 'google-translate-smooth-translate)
