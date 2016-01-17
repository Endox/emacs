;; Set custom theme path

(set-default-font "Liberation Mono")

;; Set C style
(add-hook 'c++-mode-common-hook '(lambda () (setq c-default-style "linux"
						c-basic-offset 2
						tab-width 2)))

;; Prevent the cursor from blinking
(blink-cursor-mode 0)
;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
;; Don't let Emacs hurt your ears
(setq visible-bell t)

(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
