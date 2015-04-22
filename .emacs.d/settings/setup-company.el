(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'company-dabbrev-code)
(add-to-list 'company-dabbrev-code-modes 'dart-mode)

(provide 'setup-company)
