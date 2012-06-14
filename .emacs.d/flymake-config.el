
;; 注意pyflaskes的路径

;; Auto Syntax Error Hightlight
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
         'flymake-create-temp-inplace))
    (local-file (file-relative-name
   temp-file
   (file-name-directory buffer-file-name))))
      (list "/usr/bin/pyflakes" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
        '("\\.py\\'" flymake-pyflakes-init)))
(add-hook 'find-file-hook 'flymake-find-file-hook)

(load-library "flymake-cursor") ;minibuffer显示光标处错误信息
;;(global-set-key (kbd "<f11>") 'flymake-start-syntax-check)
;;(global-set-key (kbd "<s-up>") 'flymake-goto-prev-error)
;;(global-set-key (kbd "<s-down>") 'flymake-goto-next-error)

(custom-set-faces
     '(flymake-errline ((((class color)) (:underline "red"))))
     '(flymake-warnline ((((class color)) (:underline "yellow1")))))
(setq flymake-no-changes-timeout 600) ;设很大延时，这样回车后才检查语法

(provide 'flymake-config)