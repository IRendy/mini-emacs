;;; init-email.el --- tools                          -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Copy from https://emacs-china.org/t/emacs-send-mail-rmail-and-gnus/11730?page=2
;; And add some customs.

;; Sending Email

(require 'auth-source);; probably not necessary
(setq auth-sources '("~/.emacs.d/.authinfo" "~/.emacs.d/.authinfo.gpg"))
;; (customize-variable 'auth-sources) ;; optional, do it once

(setq message-send-mail-function 'smtpmail-send-it)
(setq user-mail-address "irendy@qq.com")
(setq user-full-name "IRendy")

(setq smtpmail-smtp-user "irendy@qq.com"
      smtpmail-smtp-server "smtp.qq.com"
      smtpmail-smtp-service 587
      smtpmail-starttls-credentials '(("smtp.qq.com" 587 nil nil))
      smtpmail-stream-type nil)

;;Debug
(setq smtpmail-debug-info nil)
(setq smtpmail-debug-verb nil)

(provide 'init-email)
;;; init-email.el ends here
