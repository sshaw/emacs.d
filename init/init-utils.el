(defun insert-date (&optional format)
  "Insert the date into the current buffer.
The date will be formatted by FORMAT, which defaults to \"%Y-%m-%d\".
With a prefix argument prompt for the format."
  (interactive (list (if current-prefix-arg
			 (read-from-minibuffer "Format: ")
		       "%Y-%m-%d")))
  (insert (format-time-string format)))


(defun scratch (&optional ext)
  "Create a \"scratch\" file with the extension given by EXT.
The file will be created in `temporary-file-directory' and have the
basename \"scratch\"."
  (interactive "MExtension: ")
  (find-file (concat temporary-file-directory "scratch"
		     (if (string-match "\\w" ext) (concat "." ext)))))

(defun decode-url (url)
  "Decode a URL and add it to the kill ring."
  (interactive "sURL: ")
  (when url
    (let ((decoded (url-unhex-string url)))
      (kill-new decoded)
      (message decoded))))
