;; python编程配置
;; 系统依赖： 1. easy_install rope ropemode
;;       2. aptitude install pyflakes python-ropemacs pymacs
;;
;; automatic complete symbols in current file or in yasnippet
;; 使用： 1. [tab] 缩进
;;       2. Alt-/ Show other file or lib symbols complete
;;       2. C-c d 显示python doc string
;;       3. C-c C-c 运行当前文件
;;       4. C-c ! 打开python shell
;; 参考： http://ranjiao.com/blog/?p=30986
;; 修改： Ranler findfunaax@gmail.com 2011-10-13

;(add-to-list 'load-path (concat dotfiles-dir "/site-lisp/py"))
(require 'python-mode)

;; init python-mode
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(add-hook 'python-mode-hook
     (lambda ()
       (set-variable 'py-indent-offset 4)
       (set-variable 'py-smart-indentation nil)
       (set-variable 'indent-tabs-mode nil)
       (define-key py-mode-map (kbd "RET") 'py-newline-and-indent)
       (define-key py-mode-map [tab] 'py-indent-line)
       (smart-operator-mode-on)
))

;; init pymacs
(require 'pymacs)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

; init rope
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)


(provide 'python-config)
