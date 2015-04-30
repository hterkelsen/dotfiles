(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; add settings to load-path
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

;; set up appearance
(require 'appearance)

;; set up package configuration
(require 'setup-company)
(require 'setup-flycheck)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-rainbow-delimiters)
(require 'setup-smartparens)
(require 'setup-ycmd)

;; Functions (load all files in defuns-dir)
(setq defuns-dir (expand-file-name "defuns" user-emacs-directory))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; load keybindings mostly stolen from the 'emacs rocks' guy
(require 'key-bindings)

;; Remove text in active region if inserting text
(delete-selection-mode 1)
