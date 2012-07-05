;; init.el - Where all the magic begeins
;; 
;; This is the first thing to get load
;; 
;; Customized by Ranler
;;
;; Visit project "emacs-starter-kit" at github.com 
;; to read more things

;; Trun off mouse interface at first
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


;; Load path etc.
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))


;; Load lisps
(add-to-list 'load-path dotfiles-dir)
;(add-to-list 'load-path (concat dotfiles-dir "/site-lisp"))


;; el-get package manager
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(el-get 'sync)


;; Load up some customizations
(require 'normal-config)
(require 'bindings-config)
;; 辅助插件
(require 'ido-config)
(require 'tabbar-config) 
(require 'powerline-config)
;; 编辑插件
;(require 'flymake-config)   ;; 语法检查
(require 'all-complete-config)
(require 'xetex-config)
(require 'markdown-config)
;; 语言插件
(require 'c-config) ;; ecb
;(require 'python-config)
;(require 'lua-config)





;; keep system- or user-specific customizations here
(setq system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el")
      user-specific-dir (concat dotfiles-dir user-login-name))
(add-to-list 'load-path user-specific-dir)

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))
(if (file-exists-p user-specific-dir)
  (mapc #'load (directory-files user-specific-dir nil ".*el$")))

;;; init.el ends here

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-fix-window-size t)
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-windows-width 0.3))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow1")))))
