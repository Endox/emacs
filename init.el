(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "257ce19f15fa5e08260f269b1ea5740c299c601d5e33d2f6066ddb2dae262c8c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Set custom theme path
(set-default-font "Liberation Mono")
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)

(package-initialize)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

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

(load-theme 'ujelly)

;;(setq powerline-arrow-shape 'curve)
;;(setq powerline-default-separator-dir '(right . left))
;;(setq sml/theme 'powerline)
;;(sml/setup)

(powerline-default-theme)
(set-face-attribute 'mode-line nil
		    :foreground "Black"
		    :background "#99ad6a"
		    :box nil)
(setq powerline-arrow-shape 'curve)
(setq powerline-default-separator 'slant)

(global-set-key [C-tab] 'other-window)
