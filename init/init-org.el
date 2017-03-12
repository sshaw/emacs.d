(eval-after-load "org"
  '(progn
     (require 'ox-gfm)
     (require 'ox-reveal)))

(global-set-key (kbd "C-c c") 'org-capture)

(setq org-confirm-babel-evaluate nil)
(setq org-capture-templates
      '(("t" "Todo" entry (file "") "* TODO %?\n  %i\n  %a")))