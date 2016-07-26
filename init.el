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
             
;; then we trigger package initialization
;; normally this would only be triggered after this init file is fully loaded
(package-initialize) 

;; we refresh the package archive
;; this will create a a directory named "elpa" (if not present)
;; and a directory named "archives" within it which will contain
;; the package archive downloaded form the repositories above
(when (not package-archive-contents)
  (package-refresh-contents))            
