;; YAsnippet 
(require 'yasnippet-config)

;; Auto-complete 自动补全
;; 按键： （回车： 换行自动缩进）（M-回车： 一般补全）
(require 'ac-config)

;; autopair
(require 'autopair)
(autopair-global-mode)

;; smart-operator, 比如"=="自动调整成" == "
(require 'smart-operator)


(provide 'all-complete-config)
