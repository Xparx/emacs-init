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
(setq-default fill-column 70)                 ;; Make newline insertion in the right place
(column-number-mode 1)                        ;; Show column-number in the mode line
(scroll-bar-mode -1)                          ;; Removes the scroll bar
(tool-bar-mode -1)                            ;; Hide toolbar in graphics mode
(menu-bar-mode -1)                            ;; Remove the menu bar, Remove this when menu becomes part of the global menu.
(global-set-key [f1] 'menu-bar-mode)          ;; Toggle menu bar mode with f1
(global-set-key [f12] 'toggle-truncate-lines) ;; Toggle-truncate-lines keybinding
(global-set-key [f11] 'visual-line-mode)      ;; Toggle nice soft line wrapping
(setq blink-matching-delay .1)                ;; Matching parenthesis timer default 1
(setq-default indent-tabs-mode nil)           ;; Make sure no tabs are present.
(setq-default tab-width 4)

;; load el-get here.
(setq el-get-dir (expand-file-name "el-get" emacs-init-dir))
(add-to-list 'load-path (concat emacs-init-dir "el-get/el-get"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'el-get-recipe-path (concat emacs-init-dir "recipes"))
(el-get 'sync)

;; load up emacs init
(message "Loading emacs-init")

(if (el-get-package-exists-p "org-mode")
    (org-babel-load-file (expand-file-name "emacs-init.org" emacs-init-dir)))

(message "init.el has loaded in %ds" (destructuring-bind (hi lo ms) (current-time) (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))

;;; init.el ends here
