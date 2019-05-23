(defun insert-date (&optional format)
  "Insert the date into the current buffer.
The date will be formatted by FORMAT, which defaults to \"%Y-%m-%d\".
With a prefix argument prompt for the format."
  (interactive (list (if current-prefix-arg
			 (read-from-minibuffer "Format: ")
		       "%Y-%m-%d")))
  (insert (format-time-string format)))


(defun scratch (extension &optional other-window)
  "Create a \"scratch\" file with the extension given by EXTENSION.
The file will be created in `temporary-file-directory' and have the
basename \"scratch\".
If `OTHER-WINDOW' is non-nil, open the file using `find-file-other-window'."
  (interactive "MExtension: \nP")
  (let ((path (concat temporary-file-directory "scratch"
                      (if (string-match "\\w" extension) (concat "." extension)))))
    (if other-window
        (find-file-other-window path)
      (find-file path))))

(defun decode-url (url)
  "Decode a URL and add it to the kill ring."
  (interactive "sURL: ")
  (when url
    (let ((decoded (url-unhex-string url)))
      (kill-new decoded)
      (message decoded))))

(defun kill-variable-value (variable)
  "Add the value of VARIABLE to the kill ring if non-nil.
VARIABLE must have been defined with `defcustom'."
  (interactive "vVariable: ")
  (let ((value (symbol-value variable)))
    (when value
      (kill-new (format "%S" value)))
    (message "%S" value)))
