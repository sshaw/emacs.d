(require 'engine-mode)
(engine-mode t)

;; From https://gist.github.com/sshaw/9b635eabde582ebec442
(defengine amazon "http://www.amazon.com/s?field-keywords=%s" :keybinding "z")
(defengine duckduckgo "https://duckduckgo.com/?q=%s" :keybinding "d")
(defengine ebay "http://www.ebay.com/sch/i.html?_nkw=%s" :keybinding "e")
(defengine github "http://github.com/search?q=%s" :keybinding "g")
(defengine metacpan "https://metacpan.org/search?q=%s" :keybinding "m")
(defengine rubygems "http://rubygems.org/search?utf8=%%E2%9C%93&query=%s" :keybinding "r")
(defengine wikipedia "http://en.wikipedia.org/w/index.php?search=%s" :keybinding "w")
