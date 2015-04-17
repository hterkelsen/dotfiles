;; Helm

;; First disable ido since better-defaults enables it
(setq ido-mode nil)

(require 'helm-config)
(helm-mode 1)

(provide 'setup-helm)
