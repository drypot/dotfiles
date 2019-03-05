(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)
;;(unless package-archive-contents
;;  (package-refresh-contents))

;;

(use-package nord-theme
  :config
  (load-theme 'nord t))

(use-package counsel
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-re-builders-alist
        '((t . ivy--regex-fuzzy)))
  (setq ivy-height 16)
;; (setq ivy-height-alist
;;       '((t
;;          lambda (_caller)
;;          (* (frame-height) 0.8))))
  (ivy-mode 1)
  )

;;

(set-frame-font "Hack-18" nil t)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;

(setq default-input-method "korean-hangul")
(global-set-key (kbd "<f17>") 'toggle-input-method)

;;(when (eq system-type 'darwin)
;;  (setq mac-command-modifier 'meta))

