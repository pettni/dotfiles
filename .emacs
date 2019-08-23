;; Turn off menu bar
(menu-bar-mode -1)

;; Disable startup stuff
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message 1)

;; Save backup and autosave files in backup dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Autosettings file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file :noerror)
(setq version-control t
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 4
      kept-old-versions 2)

;; Packages
(require 'package)
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; helm
(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
        ("M-y" . helm-show-kill-ring))
  :config (progn
            (setq helm-display-header-line nil)
            (setq helm-mode-line-string nil)
            (setq helm-buffer-fuzzy-matching t)
            (setq helm-M-x-fuzzy-match t)
            (setq helm-recentf-fuzzy-match t)
            (require 'helm-config)
            (helm-mode 1)))

;; Multiple cursors bindings
(use-package multiple-cursors
  :ensure t
  :bind (("C-c m c" . 'mc/edit-lines)
   ("C-M-d" . 'mc/mark-next-like-this-word)))

(use-package hl-line
  :ensure t
  :config
  (global-hl-line-mode 0))

;; mouse scrolling
(mouse-wheel-mode t)

;; darkroom
(use-package darkroom
  :ensure t)

;; Autocompletion
(use-package auto-complete
  :ensure t
  :config
  (ac-config-default)
  (set-default 'ac-sources
               '(ac-source-abbrev ac-source-dictionary
                 ac-source-yasnippet
                 ac-source-words-in-same-mode-buffers)
  )
  (add-to-list 'ac-modes 'latex-mode))

;; Highlight matching parentheses
(show-paren-mode 1)

;; Insert parentheses in pair
(use-package autopair
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'autopair-mode)
)

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; Tabs
(setq-default tab-width 2
              indent-tabs-mode nil)

;; Configure options
(setq suggest-key-bindings t)
(setq vc-follow-symlinks t)
(setq column-number-mode t)

;; Markdown settings
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; Latex settings
(use-package tex-site
  :ensure auctex
  :config
  (use-package latex
    :config
    (add-hook `latex-mode-hook 'flyspell-mode)
    (add-hook `tex-mode-hook 'flyspell-mode)
    (add-hook `bibtex-mode-hook 'flyspell-mode)
    (add-hook `LaTeX-mode-hook 'LaTeX-math-mode)
    (add-hook `LaTeX-mode-hook 'turn-on-reftex)
    (add-hook `LaTeX-mode-hook 'tex-pdf-mode)    
    (add-hook `LaTeX-mode-hook 'TeX-source-correlate-mode t)
    (add-hook `LaTeX-mode-hook 'TeX-source-correlate-start-server t))
    (setq TeX-view-program-selection '((output-pdf "Okular"))))

;; THEMING ;;
(use-package dracula-theme
  :ensure t)
(use-package leuven-theme
  :ensure t)

(load-theme 'dracula t)

(use-package doom-modeline
  :ensure t
  :hook
  (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-icon nil)
  (setq doom-modeline-major-mode-icon nil)
  (setq doom-modeline-major-mode-color-icon nil))

;; disable background after init
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
