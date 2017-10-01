(defun sshaw-grep-goto-match (buffer status)
  "Jump to the first match in a grep buffer."
  (when (and
         (string= (buffer-name buffer) "*grep*")
         (string= (string-trim-right status) "finished"))
    ;; We may have switched to another frame, or something
    (when (window-live-p (get-buffer-window buffer))
      (select-window (get-buffer-window buffer))
      (compilation-next-error 1))))

(add-to-list 'compilation-finish-functions 'sshaw-grep-goto-match)
