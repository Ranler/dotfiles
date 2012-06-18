;; 配置auto-complete
;(add-to-list 'load-path (concat dotfiles-dir "/el-get/auto-complete/"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat dotfiles-dir "/el-get/auto-complete/dict"))
  
(ac-config-default)
;; Show 0.3 second later
(setq ac-auto-show-menu 0.3)
;; default Key
;(define-key ac-complete-mode-map (kbd "M-RET") 'ac-complete)
;(define-key ac-complete-mode-map (kbd "M-n") 'ac-next)
;(define-key ac-complete-mode-map (kbd "M-p") 'ac-previous)

(define-key ac-complete-mode-map (kbd "<return>") 'ac-complete)
(define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
(define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)

(provide 'auto-complete-config)
