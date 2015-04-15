;; loading package
(load "~/.emacs.d/my-packages.el")

;; Helm
(require 'helm-config)
(helm-mode 1)

;; Projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)
(require 'helm-projectile)
(helm-projectile-on)

;; Company + YCMD
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'ycmd)
(ycmd-setup)
(set-variable 'ycmd-server-command '("python" "~/Code/ycmd/ycmd"))

(require 'company-ycmd)
(company-ycmd-setup)
