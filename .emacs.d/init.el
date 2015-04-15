;; load custom stuff
(setq custom-file "~/.emacs.d/custom.el")
(if (file-readable-p custom-file)
    (load-file custom-file))

;; load packages
(load "~/.emacs.d/my-loadpackages.el")

;; remove scroll bar, menu bar, tool bar
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my-noexternals.el")
))

;; Enable column numbers
(column-number-mode)

;; Hippie-expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Use directory names to uniquify buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Return to the last location when opening a killed buffer
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

;; Use regexp for forward and backward search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-r") 'isearch-backward)

;; Highlight matching parens
(show-paren-mode 1)

;; Turn off indent tabs mode
(setq-default indent-tabs-mode nil)

;; Use X clipboard
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t)

;; Apropos commands do more extensive searches than default
(setq apropos-do-all t)

;; Mouse yanking inserts at point rather than the location of the click
(setq mouse-yank-at-point t)

;; Ediff do not open new frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; Put backups in the emacs directory
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

;; Org mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"))
;; Set auto-fill for org-mode
(add-hook 'org-mode-hook (lambda ()
  (auto-fill-mode)
  (set-fill-column 66)))

;; Steve Yegge stuff
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
