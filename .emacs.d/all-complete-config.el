;; Auto-complete 自动补全
;; 按键： （回车： 换行自动缩进）（M-回车： 一般补全）
(require 'auto-complete-config)

;; clang 补全
;; 需要把.clang-complete-config.el加入源码文件目录，里面定义头文件
;; 按键： （M-/： clang补全）
;; TODO: 把clang补全加入到一般补全中
;(require 'clang-config)

;; YAsnippet 
(require 'yasnippet-config)

;; autopair
(require 'autopair)
(autopair-global-mode)

;; smart-operator, 比如"=="自动调整成" == "
(require 'smart-operator)


(provide 'all-complete-config)
