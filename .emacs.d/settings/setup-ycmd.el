(require 'ycmd)
(ycmd-setup)
(set-variable 'ycmd-server-command '("python" "~/git/ycmd/ycmd"))

(require 'company-ycmd)
(company-ycmd-setup)

(provide 'setup-ycmd)
