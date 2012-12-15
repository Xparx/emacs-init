;;; init.el --- Where all the magic begins
;;
;; This is the first thing to get loaded.
;;
(require 'cl) ; a rare necessary use of REQUIRE, this is for common lisp!
(defvar *emacs-load-start* (current-time))


;; remember this directory
(setq emacs-init-dir
      (file-name-directory (or load-file-name (buffer-file-name))))

;; ========== Essential settings ==========
(setq inhibit-startap-message t)
(setq inhibit-startup-screen t)
(blink-cursor-mode t)
(set-face-attribute 'default nil :height 110) ;; This makes it so that emacs scale pixels correct. It doesn't in v 24 right now.
(setq-default fill-column 70) ;; make newline insertion in the right place
(column-number-mode 1) ;; Show column-number in the mode line
(scroll-bar-mode -1) ;; Removes the scroll bar
(tool-bar-mode -1) ;; Hide toolbar in graphics mode
(menu-bar-mode -1) ;; Remove the menu bar, Remove this when menu becomes part of the global menu.
(global-set-key [f1] 'menu-bar-mode) ;; Toggle menu bar mode with f1
(global-set-key [f12] 'toggle-truncate-lines) ;; toggle-truncate-lines keybinding
(setq blink-matching-delay .1) ;; matching parenthesis timer default 1

;; load up emacs init
(message "Loading emacs-init")
(require 'org)
(org-babel-load-file (expand-file-name "emacs-init.org" emacs-init-dir))

(message "init.el has loaded")

;; This didn't work with the version of emacs at work. may change later.
;; (message "My init.el loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
;; 			     (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))

;;; init.el ends here
