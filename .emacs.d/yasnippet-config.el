;; YASnippet
;; use old version 0.6 in google code
;; new old not work with auto-complete

(require 'yasnippet) ;;not yasnippet-bundle
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/el-get/yasnippet/snippets"))

; change face
(defface ac-yasnippet-candidate-face
  '((t (:background "sandybrown" :foreground "black")))
  "Face for yasnippet candidate.")
(defface ac-yasnippet-selection-face
  '((t (:background "steelblue" :foreground "white")))
  "Face for the yasnippet selected candidate.")
(defvar ac-source-yasnippet
  '((candidates . ac-yasnippet-candidate)
    (action . yas/expand)
    (candidate-face . ac-yasnippet-candidate-face)
    (selection-face . ac-yasnippet-selection-face))
  "Source for Yasnippet.")

(provide 'yasnippet-config)
