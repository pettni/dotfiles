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

;; Multiple cursors bindings
(use-package multiple-cursors
  :ensure t
  :bind (("C-c m c" . 'mc/edit-lines)
	 ("C-M-d" . 'mc/mark-next-like-this-word)))

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
  (autopair-global-mode 1))

;; Tabs
(setq tab-width 2
      indent-tabs-mode nil)

;; Configure options
(setq suggest-key-bindings t)
(setq vc-follow-symlinks t)
(setq column-number-mode t)

;; Latex settings
(use-package tex-site
  :ensure auctex
  :config

  (use-package latex
    :config
    (add-hook `latex-mode-hook `flyspell-mode)
    (add-hook `tex-mode-hook `flyspell-mode)
    (add-hook `bibtex-mode-hook `flyspell-mode)
    (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
    (add-hook `LaTeX-mode-hook `turn-on-reftex)))
