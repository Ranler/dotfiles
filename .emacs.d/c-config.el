;; c-config.el
;; 需要 1. clang(和补全的el有关)


;; 设置我的C缩进格式:MyCStyle
(defconst MyCStyle
  '((c-tab-always-indent . t)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist . ((substatement-open after)
			       (brace-list-open)))
    (c-cleanup-list . (comment-close-slash
		       compact-empty-funcall))
    (c-offsets-alist . ((substatement-open . 0)
		     (innamespace . 0)
		     (case-label . +)
		     (access-label . -)
		     (inline-open . 0)
		     (block-open . 0)))
  (setq comment-start "/*"
	comment-end "*/")
  (setq indent-tabs-mode nil))
  "My C Coding Style")
;; 将我的缩进风格增加到缩进hook
(defun MyCHook()
  (c-add-style "MyCStyle" MyCStyle)
  (setq indent-tabs-mode nil)
  (setq global-hl-line-mode t)
  (c-set-style "MyCStyle")
  (smart-operator-mode-on)
)
(add-hook 'c-mode-common-hook 'MyCHook)
;; 将C-mode下自动缩进C-j绑定到Enter上
(add-hook 'c-mode-hook (lambda () (local-set-key [(return)] 'newline-and-indent) ))

;;配置nesC高亮
;(autoload 'nesc-mode "nesc.el")  
;(add-to-list 'auto-mode-alist '("\\.nc\\'" . nesc-mode))


;; 一些C插件
;(add-to-list 'load-path (concat dotfiles-dir "/el-get/c"))
;;************************GCCSENSE*****************************************************
;;配置gccsense -- TODO: 考虑考虑要不要
;(require 'gccsense)  
;(global-set-key "\257" (quote ac-complete-gccsense))

;;************************CSCOPE代码跳转************************************************
;; 配置cscope, 需要系统安装cscope
(add-hook 'c-mode-common-hook
          '(lambda ()
            (require 'xcscope)))
;(setq cscope-do-not-update-database t) ;不用在每次查找时更新cscope.out

;;*************************CEDET配置****************************************************
;; TODO: 几个插件定制好，然后但拉到一个el里
;(load-file (concat dotfiles-dir "/site-lisp/cedet/common/cedet.el"))
(require 'cedet)

(require 'eieio)

;(require 'semantic)
;(semantic-load-enable-minimum-features)

;(semantic-load-enable-excessive-code-helpers)
;(semantic-load-enable-code-helpers)
;(require 'semantic-ia)
;(require 'semantic-gcc)
;(global-set-key [(control tab)] 'semantic-ia-complete-menu)
;(global-semantic-decoration-mode 1)

(require 'speedbar)

(require 'ede)

;;************************ECB窗口管理***************************************************
;(add-to-list 'load-path (concat dotfiles-dir "/el-get/ecb"))
;(require 'ecb-autoloads)
(setq stack-trace-on-error t)
(require 'ecb-autoloads)
;;不显示ecbTip 
(setq ecb-tip-of-the-day nil) 

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-fix-window-size t)
 '(ecb-layout-window-sizes nil) 
 '(ecb-windows-width 0.3)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;************************ 代码折叠 ***************************************************
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)

(provide 'c-config)
