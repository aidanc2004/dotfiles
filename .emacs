;; Remove welcome screen
(setq inhibit-startup-screen t)

(set-face-attribute 'default nil :font "Menlo" :height 160) ;; Font

(global-display-line-numbers-mode 1) ;; Line numbers

;; Make indent commands use space only instead of tabs)
(setq-default indent-tabs-mode nil)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruber-darker t)

(tool-bar-mode 0)
(show-paren-mode 1)
(column-number-mode 1)

;; Perl
(fset 'perl-mode 'cperl-mode)

(setq cperl-indent-level 2)
(setq cperl-invalid-face nil)

(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset (- cperl-indent-level))

;; Ivy (for finding files)
(ivy-mode)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Init package sources
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

;; Emacs stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(ns-command-modifier 'meta)
 '(package-selected-packages '(smex lua-mode markdown-mode ivy gruber-darker-theme))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
