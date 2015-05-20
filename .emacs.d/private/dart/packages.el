;;; packages.el --- dart Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar dart-packages
  '(
    dart-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar dart-excluded-packages '()
  "List of packages to exclude.")

(defun dart/init-dart-mode ()
  "Initialize Dart Mode"
  (use-package dart-mode
    :mode ("\\.dart\\'" . dart-mode)
    :config
      (setq dart-debug t))
  )

;; (defun dart/post-init-flycheck ()
;;   (setq dart-enable-analysis-server t)
;;   (add-hook 'dart-mode-hook 'flycheck-mode))
