(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil-org win-switch helm vterm exwm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default)
;(require 'exwm-config)
;(exwm-config-ido)

(ido-mode 1)
(evil-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)




;; easy keys for split windows
(global-set-key (kbd "M-r") 'delete-other-windows) ; Alt+3 unsplit all
(global-set-key (kbd "M-s") 'split-window-below)
(global-set-key (kbd "M-v") 'split-window-right)
(global-set-key (kbd "M-o") 'win-switch-mode)
(global-set-key (kbd "M-RET") 'other-window) ; Alt+Return move cursor to next pane
(global-set-key (kbd "M-c") 'delete-window)  ; remove current pane
(global-set-key (kbd "M-E") 'evil-mode) ; Toggle evil mdoe

; Switch windows sinsipelabe
(windmove-default-keybindings)
(global-set-key (kbd "C-c h")  'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k")    'windmove-up)
(global-set-key (kbd "C-c j")  'windmove-down)
(global-set-key (kbd "C-c s")  'split-window-below)
(global-set-key (kbd "C-c v")  'split-window-right)
(global-set-key (kbd "C-c x")  'delete-window)
(global-set-key (kbd "C-c r")  'delete-other-window)

;(global-set-key (kbd "M-x") 'helm-M-x)  

;(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;(global-set-key (kbd "C-x C-f") #'helm-find-files)
(exwm-input-set-key (kbd "s-r")'delete-other-windows)
(exwm-input-set-key (kbd "s-e") 'exwm-reset)
(exwm-input-set-key (kbd "s-s") 'split-window-below)
(exwm-input-set-key (kbd "s-v") 'split-window-right)
(exwm-input-set-key (kbd "s-o") 'win-switch-mode) ; Alt+Return move cursor to next pane
(exwm-input-set-key (kbd "s-c") 'delete-window)  ; remove current pane
(exwm-input-set-key (kbd "s-m") 'exwm-workspace-move-window) 
(exwm-input-set-key (kbd "s-x") 'helm-M-x) 

