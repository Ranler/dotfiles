
; xetex 配置
; 需安装texlive和xetex软件，以及auctex
; 参考https://github.com/bigclean/blogs/blob/master/emacs/auctex.mkd
; 安装latex-cjk-xcjk
; Ranler 2011-09-23

(load "auctex.el" nil t t)
;; preview-latex 因 xetex不生成dvi的原因暂不可用
;(add-to-list 'load-path (concat dotfiles-dir "/site-lisp/auctex-11.86/preview"))
;(load "preview-latex.el" nil t t)

;; hook子模式
(mapc (lambda (mode)
      (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex))

;; 添加设置模式
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  ;TeX-show-compilation t  ; display compilation windows
		  ) 
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

;; 设置pdf打开命令
(setq TeX-view-program-list
      '(("xpdf" "xpdf %o")))
(add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "xpdf")
                                                 (output-dvi "xpdf")))	    
	      ))

(provide 'xetex-config)
