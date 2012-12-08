;; c-config.el
;; 需要 1. clang(和补全的el有关), 可以把项目头文件目录加入ac-clang-include-dir-str


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
(defun MyCHook ()
  (c-add-style "MyCStyle" MyCStyle)
  (c-set-style "MyCStyle")
  (setq indent-tabs-mode nil)
  (setq global-hl-line-mode t)
  (local-set-key [(return)] 'newline-and-indent)
  (smart-operator-mode-on) ; for smart-operator-mode
)
(add-hook 'c-mode-common-hook 'MyCHook)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-completa-clang
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq ac-clang-include-dir-str
      (cond
       (t "
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.7.2/../../../../include/c++/4.7.2
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.7.2/../../../../include/c++/4.7.2/x86_64-unknown-linux-gnu
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.7.2/../../../../include/c++/4.7.2/backward
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.7.2/include
/usr/local/include
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.7.2/include-fixed
/usr/include
")
       (t ""); put other includes in this
       )
      )

;(require 'auto-complete-clang)
(defun my-ac-clang-hook ()
  (setq ac-clang-flags
	(mapcar (lambda (item)(concat "-I" item))
		(split-string ac-clang-include-dir-str))) ; set include
  (setq ac-sources (append '(ac-source-yasnippet ac-source-clang) ac-sources))) ; set clang sources
(add-hook 'c-mode-common-hook 'my-ac-clang-hook)


;;************************CSCOPE代码跳转************************************************
;; 配置cscope, 需要系统安装cscope
(defun my-cscope-hook ()
  (require 'xcscope)
  ;;(setq cscope-do-not-update-database t) ;不用在每次查找时更新cscope.out
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
  (define-key global-map [(meta f10)] 'cscope-display-buffer-toggle))
(add-hook 'c-mode-common-hook 'my-cscope-hook)

;;*************************CEDET配置****************************************************
(load-file (concat dotfiles-dir "/el-get/cedet-1.1/common/cedet.el"))
(defun my-cedet-hook ()
  (semantic-load-enable-minimum-features)
  (global-semantic-decoration-mode)
  (global-semantic-highlight-func-mode))
(add-hook 'c-mode-common-hook 'my-cedet-hook)


;;************************ECB窗口管理***************************************************
(defun my-ecb-hook ()
  (require 'ecb-autoloads)
  (setq ecb-tip-of-the-day nil) 
  (setq stack-trace-on-error t)

  ;; 启动/关闭ECB 
  (global-set-key [f12] 'ecb-activate) 
  (global-set-key [C-f12] 'ecb-deactivate) 

  (custom-set-variables
   '(ecb-fix-window-size t)
   '(ecb-layout-window-sizes nil) 
   '(ecb-windows-width 0.3)
   '(ecb-options-version "2.40")
   '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))))
(add-hook 'c-mode-common-hook 'my-ecb-hook)


;;************************ 符号高亮 ****************************************
(defun highlight-symbol-hook ()
  (set-face-background 'highlight-symbol-face "tomato1")
  (setq highlight-symbol-idle-delay 0.5)
  (highlight-symbol-mode t))
(add-hook 'c-mode-common-hook 'highlight-symbol-hook)


(provide 'c-config)
