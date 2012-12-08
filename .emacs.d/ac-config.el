;; 配置auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat dotfiles-dir "/el-get/auto-complete/dict"))
  
;; Show 0.3 second later
(setq ac-auto-show-menu 0.3)
(setq ac-quick-help-delay 0.5)
;(setq ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed

;; Key
(define-key ac-complete-mode-map (kbd "<return>") 'ac-complete)
(define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
(define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)


; config sources
(ac-config-default)

(provide 'ac-config)
