(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '
(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(global-display-line-numbers-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-to-list 'load-path "~/.emacs.d/keys/")
(load "global-keys.el")

(add-to-list 'load-path "~/.emacs.d/modes/c/")
(load "c.el")

(add-to-list 'load-path "~/.emacs.d/xterm/")
(load "copy_text_from_emacs_to_xterm.el")

(setq-default c-basic-offset 4)

(setq c-default-style "linux"
          c-basic-offset 4)

(setq-default c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)

(setq inhibit-startup-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)
