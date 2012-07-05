;; normal_config.el 
;; here is something normal config

;;以 y/n代表 yes/no 
(fset 'yes-or-no-p 'y-or-n-p) 
;;关闭烦人的出错时的提示声。
(setq visible-bell t)
;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号 
(show-paren-mode t) 
(setq show-paren-style 'parentheses) 
;;高亮显示匹配的括号。
(show-paren-mode 1)
;;光标显示为一竖线 
(setq-default cursor-type 'bar) 
;;不产生备份文件 
(setq-default make-backup-files nil) 
;;临时文件放到同一个目录下 
(setq backup-directory-alist '(("." . "/tmp"))) 
;;关闭启动画面 
(setq inhibit-startup-message t) 
;;指针不闪，不恍花眼睛。
(blink-cursor-mode -1)
(transient-mark-mode 1)
;;很大的 kill ring 
(setq kill-ring-max 200) 
;;emacs23 显示行号和列号
(global-linum-mode t)
(setq column-number-mode t)
;;支持emacs和外部程序的粘贴 
(setq x-select-enable-clipboard t) 
;;高亮当前行
(require 'hl-line)
(global-hl-line-mode t)

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，
;;可以很好的看到上下文。
(setq scroll-margin 3 
scroll-conservatively 10000) 


;; change state bar use mode-line
;(setq-default mode-line-format
;	      '("%t%e"
;		mode-line-mule-info
;		mode-line-client
;		mode-line-modified
;		mode-line-remote
;		" "
;		mode-line-buffer-identification
;		" %IB "
;		,(propertize " " 'help-echo help-echo)
;		mode-line-position
;		(vc-mode vc-mode)
;		mode-line-modes
;		(which-func-mode (" " which-func-format))
;		(working-mode-line-message (" " working-mode-line-message))
;		,(propertize "-%-" 'help-echo help-echo)
;		"%-"
;		))


;;shell,gdb退出后，自动关闭该buffer 
;(defun kill-buffer-on-exit (process state) 
;  (message "%s" state) 
;  (if (or 
;       (string-match "exited abnormally with code.*" state) 
;       (string-match "finished" state)) 
;      (kill-buffer (current-buffer)))) 
;(defun sg-mode-hook-func () 
;  (set-process-sentinel 
;   (get-buffer-process (current-buffer)) 
;   #'kill-buffer-on-exit)) 
;(add-hook 'shell-mode-hook 'sg-mode-hook-func) 
;(add-hook 'gdb-mode-hook 'sg-mode-hook-func)  


(provide 'normal-config)
;;; normal-config.el ends here
