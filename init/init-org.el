(eval-after-load "org"
  '(progn
     (require 'ox-gfm)
     (require 'ox-reveal)))

(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

(setq org-confirm-babel-evaluate nil)
(setq org-capture-templates
      '(("t" "Todo" entry (file "") "* TODO %?\n  %i\n  %a")))
