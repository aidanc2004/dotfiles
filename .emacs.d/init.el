;;
;; init.el
;;

;;; Package management

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

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;; Emacs UI

(setq inhibit-startup-screen t) ;; Remove welcome screen

;; Set font to Menlo (Mac)
(set-face-attribute 'default nil
                    :font "Menlo"
                    :height 160
                    :weight 'medium)

;; Relative line numbers
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(tool-bar-mode 0)      ;; Hide tool bar
(scroll-bar-mode 0)    ;; Hide scroll bar
(show-paren-mode 1)    ;; Highlight parenthesis
(column-number-mode 1) ;; Show current column and line number

;; Ivy
(use-package ivy
  :config
  (ivy-mode 1))

;; Smex
(use-package smex
  :config
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))

(use-package dirtree) ;; Dirtree

;; Hide autosave files in /tmp
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Make indent commands use space only instead of tabs)
(setq-default indent-tabs-mode nil)

;; Themes
(add-to-list 'custom-theme-load-path "themes")
(load-theme 'gruber-darker t)

;;; Languages

;; Perl
(use-package cperl-mode
  :config
  (fset 'perl-mode 'cperl-mode)
  (setq cperl-indent-level 2)
  (setq cperl-invalid-face nil)
  (setq cperl-indent-parens-as-block t)
  (setq cperl-close-paren-offset (- cperl-indent-level)))

;; Web Development
(setq js-indent-level 2)

(use-package web-mode
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (emmet-mode))

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)

;;; Automatically generated by Emacs

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(ns-command-modifier 'meta)
 '(package-selected-packages
   '(exec-path-from-shell direx dirtree web-mode emmet-mode rust-mode magit smex lua-mode markdown-mode ivy gruber-darker-theme))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )