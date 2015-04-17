;; no splash screen
(setq inhibit-startup-message t)

;; Highlight matching parens
(show-paren-mode 1)

(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; Highlight current line
(global-hl-line-mode 1)

;; Enable column numbers
(column-number-mode)

;; Monokai color theme
(load-theme 'monokai t)

(provide 'appearance)
