;; bindings-config.el --- set up some handy key bindings

;; 重载当前文件
(global-set-key [f5] 'revert-buffer)

;; 启动/关闭ECB 
(global-set-key [f12] 'ecb-activate) 
(global-set-key [C-f12] 'ecb-deactivate) 

;; cscope
(define-key global-map [(control f3)]  'cscope-set-initial-directory)
(define-key global-map [(control f4)]  'cscope-unset-initial-directory)
(define-key global-map [(control %)]  'cscope-find-this-symbol)
(define-key global-map [(control ^)]  'cscope-find-global-definition)
(define-key global-map [(control &)]  'cscope-find-global-definition-no-prompting)
(define-key global-map [(control *)]  'cscope-pop-mark)
(define-key global-map [(control \()]  'cscope-next-symbol)
(define-key global-map [(control \))] 'cscope-next-file)
(define-key global-map [(control _)] 'cscope-prev-symbol)
(define-key global-map [(control +)] 'cscope-prev-file)
(define-key global-map [(meta f9)]  'cscope-display-buffer)
(define-key global-map [(meta f10)] 'cscope-display-buffer-toggle)


(provide 'bindings-config)
