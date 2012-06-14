;;--------------------- fonts and colors --------------------------
;; fonts
(if (display-graphic-p)
    (progn
      (set-default-font "Monaco-14")
      (set-fontset-font (frame-parameter nil 'font)
			'han '("WenQuanYi Micro Hei" . "unicode-bmp")) 
    ))


;; theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-blue-mood)


;; window max
(defun my-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  )
(run-with-timer 0.1 nil 'my-maximized) ;; importent !
