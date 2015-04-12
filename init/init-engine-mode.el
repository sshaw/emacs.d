(require 'engine-mode)
(engine-mode t)

;; From https://gist.github.com/sshaw/9b635eabde582ebec442
(defengine amazon "http://www.amazon.com/s?field-keywords=%s" "z")
(defengine duckduckgo "https://duckduckgo.com/?q=%s" "d")
(defengine github "http://github.com/search?q=%s" "g")
(defengine metacpan "https://metacpan.org/search?q=%s" "m")
(defengine rubygems "http://rubygems.org/search?utf8=%%E2%%9C%%93&query=%s" "r")
(defengine wikipedia "http://en.wikipedia.org/w/index.php?search=%s" "w")
