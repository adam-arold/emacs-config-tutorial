;; First we define package repositories.
;; Package repositories contain packages which provide functionality to Emacs.

;; require can be used to load packages
(require 'package)

;; we define package-archives which contain the package repositories we want to use
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
