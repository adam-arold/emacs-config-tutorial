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
  
;; then we define a list of packages which are useful for Clojure
;; development 
(defvar my-packages
  '(paredit                          ;; provides easy paren editing functionality
    clojure-mode                     ;; emacs mode for Clojure development
    clojure-mode-extra-font-locking  ;; provides syntax highlight for Clojure
    cider                            ;; Clojure Interactive Development Environment that Rocks for Emacs
    ido-ubiquitous                   ;; Fancy completion all over Emacs, not just for buffers and files.
    smex                             ;; Built on top of Ido, it provides a convenient interface to your recently and most frequently used commands.
    projectile                       ;; a project interaction library for Emacs
    rainbow-delimiters               ;; provides rainbow-colored parentheses (eyecandy)
    tagedit                          ;; A collection of paredit-like functions for editing in html-mode.
    which-key                        ;; a minor mode for Emacs that displays the key bindings following your currently entered incomplete command
    company                          ;; a text completion framework for Emacs
    project-explorer                 ;; a project explorer sidebar
    elscreen))                       ;; tabs for emacs
    
;; and install them all if they are not already installed
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))    
;; if you see 
;; "error: Trying to parse HTTP response code in odd buffer:  *http elpa.gnu.org:80*"
;; at this point restart Emacs and it should go away.
    
