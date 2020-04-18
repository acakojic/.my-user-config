
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;; https://github.com/ch11ng/exwm/wiki#how-to-make-focus-follow-mouse
(setq mouse-autoselect-window t
      focus-follows-mouse t)


;melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;end-melpa


(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("3d7697954b34d8db8f3b8049e06cc125605028290152958f2e67277cc33e88b5" "7220146e5af8a8f1f7abc7430d3a60b2668af19da90ab103d5ea8d21dc92daa8" "55c2069e99ea18e4751bd5331b245a2752a808e91e09ccec16eb25dadbe06354" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "e9740103f6ae2cbc97fef889b85b1c51b4d4a2d95c2b398b57a1842d14d96304" default))
 '(fci-rule-color "#4c406d")
 '(nrepl-message-colors
   '("#ee11dd" "#8584ae" "#b4f5fe" "#4c406d" "#ffe000" "#ffa500" "#ffa500" "#DC8CC3"))
 '(org-agenda-files '("~/.emacs.d/org-files/todo.org"))
 '(package-selected-packages
   '(exwm treemacs-magit magit xah-elisp-mode command-log-mode dracula-theme twilight-theme zerodark-theme zweilight-theme swiper dap-mode lsp-ui company-lsp hydra yasnippet projectile xah-fly-keys which-key try use-package gnu-elpa-keyring-update lsp-java lsp-mode))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#0bafed")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#ee11dd")
     (60 . "#8584ae")
     (80 . "#ffe000")
     (100 . "#efef80")
     (120 . "#b4f5fe")
     (140 . "#4c406d")
     (160 . "#4c406d")
     (180 . "#1b1a24")
     (200 . "#4c406d")
     (220 . "#65ba08")
     (240 . "#ffe000")
     (260 . "#ffa500")
     (280 . "#6CA0A3")
     (300 . "#0bafed")
     (320 . "#8CD0D3")
     (340 . "#ffa500")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 128 :width normal)))))

;;;;
;melpa
;(require 'package)
;(add-to-list 'package-archives (cons "melpa" (concat proto "://stable.melpa.org/packages/")) t))
					;(package-initialize)

;; load emacs 24's package system. Add MELPA repository.
;(when (>= emacs-major-version 24)
;  (require 'package)
;  (add-to-list
;   'package-archives
;    '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   ;;'("melpa" . "http://melpa.milkbox.net/packages/")
;      t))
;;end-melpa 
;;;; 

;;aca dodao
(setq inhibit-startup-screen t)

(setq make-backup-files nil)

(setq auto-save-default nil)

;;;;
;; autocompletion for elisp
;; https://stackoverflow.com/questions/7022898/emacs-autocompletion-in-emacs-lisp-mode
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(blink-cursor-mode 1)
;; (setq visible-cursor nil)
; (display-battery-mode 1)

;;;;
;; lsp-mode
;; start-lsp-sh
;;(use-package lsp-mode
;;  :commands lsp
;;  :hook
;;  (sh-mode . lsp))
;; end-lsp-mode
;;end-lsp-sh
;;start-lsp-java
;;(require 'lsp-java)
;;(add-hook 'java-mode-hook #'lsp)
;;end-lsp-java
;;;;

;(setq package-check-signature "allow-unsigned")


;;;;
;; tutorial: "https://www.youtube.com/watch?v=49kBWM3RQQ8"

;;
(use-package try
  :ensure t)

;; https://www.youtube.com/watch?v=49kBWM3RQQ8&list=LLKhIOjeU6UX0OIwx-GgZqsA&index=5&t=0s
(use-package which-key
  :ensure t
  :config (which-key-mode))

;;;;
;;buffers C+x,b
;; https://www.youtube.com/watch?v=v5eTK5lC0xs
(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;;;;
;;windows
;;https://www.youtube.com/watch?v=D6OUMVbPKSA
;;(winner-mode 1)

;;;;
;;search (swiper)https://www.youtube.com/watch?v=D6OUMVbPKSA
;;https://www.youtube.com/watch?v=0mwwN0S1dnQ
(use-package swiper
  :ensure t
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
    (global-set-key "\C-s" 'swiper)
;    (global-set-key (kbd "C-c C-r") 'ivy-resume)
;    (global-set-key (kbd "<f6>") 'ivy-resume)
;    (global-set-key (kbd "M-x") 'counsel-M-x)
;    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;    (global-set-key (kbd "<f1> l") 'counsel-find-library)
;    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;    (global-set-key (kbd "C-c g") 'counsel-git)
;    (global-set-key (kbd "C-c j") 'counsel-git-grep)
;    (global-set-key (kbd "C-c k") 'counsel-ag)
;    (global-set-key (kbd "C-x l") 'counsel-locate)
;    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    )
  )


;;;;
;; key-map-binding
;;https://www.youtube.com/watch?v=-vQ56wu30Lg
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'xah-fly-keys)
(xah-fly-keys-set-layout "colemak") ; required
(xah-fly-keys 1)

;; 
;;;;
;; emacs-session
;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)
;;(desktop-save-mode nil)


;;;;
;; load-file aca
(load "~/.emacs.d/use/java.el")
(load "~/.emacs.d/use/eshell-conf.el")
;;(require 'java.el) 

;;;;
;; lsp-java

(require 'cc-mode)

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

(use-package projectile :ensure t)
(use-package yasnippet :ensure t)
(use-package lsp-mode :ensure t)
(use-package hydra :ensure t)
(use-package company-lsp :ensure t)
(use-package lsp-ui :ensure t)
(use-package lsp-java :ensure t :after lsp
  :config (add-hook 'java-mode-hook 'lsp))

(use-package dap-mode
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode)
  )

(use-package dap-java :after (lsp-java))

;; (setq lsp-auto-configure nil)
;; (setq lsp-print-performance t)
(lsp-treemacs-sync-mode 1)

;; (use-package lsp-treemacs
  ;; :config
  ;; (lsp-metals-treeview-enable t)
  ;; (setq lsp-metals-treeview-show-when-views-received t))


;;;;
;; exwm
;;
;; (require 'exwm-randr)
;; (setq exwm-randr-workspace-output-plist '(1 "DP-1"))
;; (add-hook 'exwm-randr-screen-change-hook
;;           (lambda ()
;;             (start-process-shell-command
;;              "xrandr" nil "xrandr --auto --output eDP-1 --mode 1920x1080 --right-of HDMI-1")))
;; (exwm-randr-enable)

(add-to-list 'load-path "~/.emacs.d/lisp/exwm/xelb-0.18/")
(add-to-list 'load-path "~/.emacs.d/lisp/exwm/exwm-0.23/")
(require 'exwm)
(require 'exwm-config)
;; (exwm-config-default)

;; Disable menu-bar, tool-bar and scroll-bar to increase the usable space.
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Also shrink fringes to 1 pixel.
(fringe-mode 1)


;; Turn on `display-time-mode' if you don't use an external bar.
(setq display-time-default-load-average nil)
(display-time-mode t)

;; You are strongly encouraged to enable something like `ido-mode' to alter
;; the default behavior of 'C-x b', or you will take great pains to switch
;; to or back from a floating frame (remember 'C-x 5 o' if you refuse this
;; proposal however).
;; You may also want to call `exwm-config-ido' later (see below).
(ido-mode 1)

;; Emacs server is not required to run EXWM but it has some interesting uses
;; (see next section).
(server-start)

;;;; Below are configurations for EXWM.

;; Add paths (not required if EXWM is installed from GNU ELPA).


;(require 'xcb)
;(provide 'xelb)
;(setq exwm-debug-on t)

;; Load EXWM.
(require 'exwm)

;; Fix problems with Ido (if you use it).
(require 'exwm-config)
(exwm-config-ido)

;; Set the initial number of workspaces (they can also be created later).
(setq exwm-workspace-number 4)

;; All buffers created in EXWM mode are named "*EXWM*". You may want to
;; change it in `exwm-update-class-hook' and `exwm-update-title-hook', which
;; are run when a new X window class name or title is available.  Here's
;; some advice on this topic:
;; + Always use `exwm-workspace-rename-buffer` to avoid naming conflict.
;; + For applications with multiple windows (e.g. GIMP), the class names of
;    all windows are probably the same.  Using window titles for them makes
;;   more sense.
;; In the following example, we use class names for all windows expect for
;; Java applications and GIMP.
(add-hook 'exwm-update-class-hook
          (lambda ()
            (unless (or (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                        (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-class-name))))
(add-hook 'exwm-update-title-hook
          (lambda ()
            (when (or (not exwm-instance-name)
                      (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                      (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-title))))

;; (defun change-color-line-mode () ;;da li vratiti?
;;   (interactive)
;;   (call-interactively #'exwm-reset)
;;   ;; (message "change-color-line-mode")
;;   (face-remap-add-relative
;; 		   'mode-line '((:background "#99ff99") mode-line))
;;   )

;; Global keybindings can be defined with `exwm-input-global-keys'.
;; Here are a few examples:
(setq exwm-input-global-keys
      `(
	;; (kbd "SPC" #'exwm-reset)
	;; ([?\s-home] . exwm-reset)
	;; ([?\s-x] . kill-region)
	;; ([?\s-c] . kill-ring-save)
	;; ([?\s-v] . yank)
        ;; Bind "s-r" to exit char-mode and fullscreen mode.
        ;; ([?\s-r] . exwm-reset)
	([s-home] . exwm-reset) ;;ovo radi
	;; ([s-home] . change-color-line-mode)
	;; ([s-home] . [s-pause])
	([home] . [s-home])
	([pause] . [s-home])
	;; ([home] . exwm-reset)
	;; ([?\s-l] . exwm-reset)
	;; ([?\s-c] . exwm-input-release-keyboard)
	;; ([t] . exwm-input-release-keyboard)
        ;; Bind "s-w" to switch workspace interactively.
        ([?\s-w] . exwm-workspace-switch)
        ;; Bind "s-0" to "s-9" to switch to a workspace by its index.
        ,@(mapcar (lambda (i)
                    `(,(kbd (format "s-%d" i)) .
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9))
        ;; Bind "s-&" to launch applications ('M-&' also works if the output
        ;; buffer does not bother you).
        ([?\s-&] . (lambda (command)
		     (interactive (list (read-shell-command "$ ")))
		     (start-process-shell-command command nil command)))
        ;; Bind "s-<f2>" to "slock", a simple X display locker.
        ([s-f2] . (lambda ()
		    (interactive)
		    (start-process "" nil "/usr/bin/slock")))))


;; To add a key binding only available in line-mode, simply define it in
;; `exwm-mode-map'.  The following example shortens 'C-c q' to 'C-q'.
(define-key exwm-mode-map [?\C-q] #'exwm-input-send-next-key)
(define-key exwm-mode-map (kbd "SPC") #'xah-fly-leader-key-map)
;; (define-key exwm-mode-map (kbd "t") #'exwm-input-release-keyboard)
;; (define-key exwm-mode-map [?\s-t] #'exwm-input-release-keyboard)
;; (defun change-color-char-mode () ;;da li vratiti?
;;   (interactive)
;;   (call-interactively #'exwm-input-release-keyboard)
;;   ;; (message "change-color-char-mode")
;;   (face-remap-add-relative
;; 		   'mode-line '((:background "#8080ff") mode-line))
;;   )
;; (define-key exwm-mode-map (kbd "t") #'change-color-char-mode)
(define-key exwm-mode-map (kbd "t") #'exwm-input-release-keyboard)
(define-key exwm-mode-map (kbd "a") #'execute-extended-command)
(define-key exwm-mode-map (kbd "b") #'switch-to-buffer)

;; up
(defun go-up ()
  (interactive)
  (execute-kbd-macro (kbd "<up>"))
  )
(define-key exwm-mode-map (kbd "u") #'go-up)

;; down
(defun go-down ()
  (interactive)
  (execute-kbd-macro (kbd "<down>"))
  )
(define-key exwm-mode-map (kbd "e") #'go-down)

;; left
(defun go-left ()
  (interactive)
  (execute-kbd-macro (kbd "<left>"))
  )
(define-key exwm-mode-map (kbd "n") #'go-left)

;; right
(defun go-right ()
  (interactive)
  (execute-kbd-macro (kbd "<right>"))
  )
(define-key exwm-mode-map (kbd "i") #'go-right)
 
;; (define-key exwm-mode-map (kbd "h") #')

;; Pass all keypresses to emacs in line mode.
    ;; (setq exwm-input-line-mode-passthrough t) ;aca dodao

;; You can hide the minibuffer and echo area when they're not used, by
;; uncommenting the following line.
;; (setq exwm-workspace-minibuffer-position 'bottom)

(setq exwm-input-simulation-keys
      '(
	;; ([?\C-b] . [left])
        ([?\C-f] . [right])
        ([?\C-p] . [up])
        ([?\C-n] . [down])
        ([?\C-a] . [home])
        ([?\C-e] . [end])
        ([?\M-v] . [prior])
        ([?\C-v] . [next])
        ([?\C-d] . [delete])
        ([?\C-k] . [S-end delete])
	;; ([?\home] . [exwm-input-release-keyboard])
	;; ([h] . [home])
	;; ([u] . [?\C-u])
	;; ([b] . [?\C-b])
	))

(add-hook 'exwm-manage-finish-hook
          (lambda ()
            (when (and exwm-class-name
                       (string= exwm-class-name "Android Studio"))
              (setq exwm-input-set-local-simulation-keys
		    '(([b] . [?\C-b])
		      ))
	      )))


;; https://emacs.stackexchange.com/questions/18082/how-do-i-get-the-current-major-mode/18083
(add-hook 'exwm-mode-hook #'xah-fly-keys-off)

;; (add-hook 'exwm-mode-hook ;;da li vratiti?
;;           (lambda ()
;; 	    ;; (message "radi too")
;;             (face-remap-add-relative
;;              'mode-line '((:background "#99ff99") mode-line))))

;; (defun change-modeline-color-on-input-mode-change ()
;;   (let ((specs (case exwm--input-mode
;;                      (line-mode
;;                       '((:background "#99ff99") mode-line))
;;                      (char-mode
;;                       '((:background "#8080ff") mode-line)))))
;;     (make-local-variable 'face-remapping-alist)
;;     (setf (alist-get 'mode-line face-remapping-alist) specs)))

;; (add-hook 'exwm-input--input-mode-change-hook
;;           'change-modeline-color-on-input-mode-change)


(defun change-modeline-color-on-input-mode-change ()
  (let ((specs (case exwm--input-mode
                 (line-mode
                  '((:foreground "red" :background "Green") mode-line)
		  (message "line-mode"))
                 (char-mode
                  '((:foreground "ivory" :background "DarkOrange2") mode-line)
		  (message "char-mode")))))
    (make-local-variable 'face-remapping-alist)
    (setf (alist-get 'mode-line face-remapping-alist) specs)))
(add-hook 'exwm-input--input-mode-change-hook
          'change-modeline-color-on-input-mode-change)

(exwm-enable)
;; (set-face-background 'modeline "#99ff99")