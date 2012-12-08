;; python编程配置
;; 系统依赖： 1. easy_install rope ropemode
;;       2. aptitude install pyflakes python-ropemacs pymacs
;;       3. download pycomplete.el on python lib (e.g. /usr/lib/python2.7/site-packages)
;;
;; automatic complete symbols in current file or in yasnippet
;; 使用： 1. [tab]|autocomplete补全
;;       2. Alt-/|ropemacs补全
;;       3. C-c g 跳转到定义处
;;       4. C-c d 显示python doc string
;;       5. C-c C-c 运行当前文件
;;       6. C-c ! 打开python shell
;; 参考： http://ranjiao.com/blog/?p=30986
;; 修改： Ranler findfunaax@gmail.com 2011-10-13

(require 'python-mode)

;; init python-mode
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(autoload 'python-mode "python-mode" "Python Mode." t)

(add-hook 'python-mode-hook
     (lambda ()
       (set-variable 'py-indent-offset 4)
       (set-variable 'py-smart-indentation nil)
       (set-variable 'indent-tabs-mode nil)
       ;; (define-key python-mode-map (kbd "RET") 'py-newline-and-indent)
       ;; (define-key python-mode-map [tab] 'py-indent-line)
       (smart-operator-mode-on)
       ;;(setq py-python-command "python")

       ;; init pymacs
       (require 'pymacs)
       ;;(setq pymacs-python-command py-python-command)
       (autoload 'pymacs-apply "pymacs")
       (autoload 'pymacs-call "pymacs")
       (autoload 'pymacs-eval "pymacs" nil t)
       (autoload 'pymacs-exec "pymacs" nil t)
       (autoload 'pymacs-load "pymacs" nil t)

       ;; init rope
       (pymacs-load "ropemacs" "rope-")
       (setq ropemacs-enable-autoimport t)
       ;(rope-open-project "/tmp/")
))

(provide 'python-config)
