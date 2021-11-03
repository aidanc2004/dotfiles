;; Written while following along with "Emacs from Scratch"

;; Open to *scratch* buffer
(setq inhibit-startup-message t)

(tool-bar-mode -1)      ; Disable tool bar
(toggle-scroll-bar -1)  ; Disable scroll bar
(menu-bar-mode -1)      ; Disable menu bar
(set-fringe-mode 10)    ; Give some breathing room

(setq visible-bell t)   ; flash part of screen instead of using computer speaker

;; Font
(set-face-attribute 'default nil :height 125 :font "Fira Code")

;; Make indent commands use space only instead of tabs)
(setq-default indent-tabs-mode nil)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;(load-theme 'dracula t)
(load-theme 'gruber-darker t)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org"   . "https://orgmode.org/elpa/")
			 ("elpa"  . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-etended-command)

;; Ido
(ido-mode 1)

;; tirtree
(require 'windata)
(require 'tree-mode)
(require 'dirtree)

;; C
(setq-default c-default-style "linux"
              c-basic-offset 4)

;; Haskell
(add-hook 'haskell-mode-hook #'hindent-mode)

(use-package haskell-mode)
(use-package hindent)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ; one line at a time    
(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ; scroll window under mouse
(setq scroll-step 1) ; keyboard scroll one line at a time

;; Don't know what this does exactly.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-safe-themes
   '("81c3de64d684e23455236abde277cda4b66509ef2c28f66e059aa925b8b12534" default))
 '(package-selected-packages
   '(smex gruber-darker-theme dirtree ivy use-package hindent haskell-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
