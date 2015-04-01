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
