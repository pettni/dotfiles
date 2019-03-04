;; Variables and systemwide paths
(setq backup_dir "~/.saves" )

;; Turn off menu bar
(menu-bar-mode -1)

;; Disable startup stuff
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message 1)

;; Save backup and autosave files in backup dir
(setq backup-directory-alist `((".*" . ,backup_dir)))
(setq auto-save-file-name-transforms `((".*" ,backup_dir t)))
(setq version-control t
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 4
      kept-old-versions 2)
;; Packages
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Multiple cursors bindings
(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-M-d") 'mc/mark-next-like-this-word)

;; Latex settings
(require `tex-site)
(require `tex-style)
(add-hook `latex-mode-hook `flyspell-mode)
(add-hook `tex-mode-hook `flyspell-mode)
(add-hook `bibtex-mode-hook `flyspell-mode)
(line-number-mode 1)
(column-number-mode 1)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook `LaTeX-mode-hook `turn-on-reftex)

;; mouse scrolling
(mouse-wheel-mode t)

;; Autocompletion
(ac-config-default)
(set-default 'ac-sources
             '(ac-source-abbrev ac-source-dictionary
               ac-source-yasnippet
               ac-source-words-in-same-mode-buffers)
)
(add-to-list 'ac-modes 'latex-mode)

;; Highlight matching parentheses
(show-paren-mode 1)

;; Insert parentheses in pair
(autopair-global-mode 1)

;; Tabs
(setq tab-width 2
      indent-tabs-mode nil)

;; Configure options
(setq suggest-key-bindings t)
(setq vc-follow-symlinks t)
(setq column-number-mode t)
(put 'downcase-region 'disabled nil)	;; Disable commands
(put 'upcase-region 'disabled nil)

;; Disable startup stuff
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message 1)

;; Save backup and autosave files in backup dir
(setq backup-directory-alist `((".*" . ,backup_dir)))
(setq auto-save-file-name-transforms `((".*" ,backup_dir t)))
(setq version-control t
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 4
kept-old-versions 2)
