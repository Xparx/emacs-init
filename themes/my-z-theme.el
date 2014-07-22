;;; my-z-theme.el --- A low contrast color theme for Emacs. Modified
;;; from zenburn-theme for emacs

;; Copyright (C) 2011 Bozhidar Batsov

;; Author: Bozhidar Batsov <bozhidar.batsov@gmail.com>
;; URL: http://github.com/bbatsov/zenburn-emacs
;; Version: 1.5

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A port of the popular Vim theme Zenburn for Emacs 24, built on top
;; of the new built-in theme support in Emacs 24. There exists one
;; other version of the theme by Daniel Brockman. My version was
;; originally based on it, but it was in such a disarray, that I
;; decided to rewrite it from scratch in a more maintainable manner
;; (hopefully).
;;
;;; Installation:
;;
;;   Drop the theme in a folder that is on `custom-theme-load-path'
;; and enjoy!
;;
;; Don't forget that the theme requires Emacs 24.
;;
;;; Bugs
;;
;; None that I'm aware of.
;;
;;; Credits
;;
;; Jani Nurminen created the original theme for vim on such this port
;; is based.
;;
;;; Code
(deftheme my-z "The My-Z color theme")

(let ((class '((class color) (min-colors 89)))
      ;; My-Z palette
      ;; colors with +x are lighter, colors with -x are darker
      (my-z-fg "#dcdccc")
      (my-z-fg-1 "#656555")
      (my-z-bg-1 "#2C2B27")
      (my-z-bg-05 "#363636")
      (my-z-bg "#3C3B37")
      (my-z-bg+1 "#4C4B47")
      (my-z-bg+2 "#5C5B57")
      (my-z-bg+3 "#6C6B67")
      (my-z-red+1 "#dca3a3")
      (my-z-red "#E2725B")
      (my-z-red-1 "#bc8383")
      (my-z-red-2 "#ac7373")
      (my-z-red-3 "#9c6363")
      (my-z-red-4 "#8c5353")
      (my-z-orange "#dd4814")
      (my-z-yellow "#f0dfaf")
      (my-z-yellow-1 "#e0cf9f")
      (my-z-yellow-2 "#d0bf8f")
      (my-z-green-1 "#5f7f5f")
      (my-z-green "#7f9f7f")
      (my-z-green+1 "#8fb28f")
      (my-z-green+2 "#9fc59f")
      (my-z-green+3 "#afd8af")
      (my-z-green+4 "#bfebbf")
      (my-z-cyan "#93e0e3")
      (my-z-blue+1 "#94bff3")
      (my-z-blue "#8cd0d3")
      (my-z-blue-1 "#7cb8bb")
      (my-z-blue-2 "#6ca0a3")
      (my-z-blue-3 "#5c888b")
      (my-z-blue-4 "#4c7073")
      (my-z-blue-5 "#366060")
      (my-z-magenta "#772953"))
  (custom-theme-set-faces
   'my-z
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,my-z-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,my-z-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((,class (:foreground ,my-z-fg :background ,my-z-bg))))
   `(cursor ((,class (:foreground ,my-z-fg))))
   `(escape-glyph-face ((,class (:foreground ,my-z-red))))
   `(fringe ((,class (:foreground ,my-z-fg :background ,my-z-bg))))
   `(header-line ((,class (:foreground ,my-z-yellow
                                       :background ,my-z-bg-1
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,my-z-bg-05))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,my-z-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,my-z-green))))
   `(compilation-error-face ((,class (:foreground ,my-z-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,my-z-fg))))
   `(compilation-info-face ((,class (:foreground ,my-z-blue))))
   `(compilation-info ((,class (:foreground ,my-z-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,my-z-green))))
   `(compilation-line-face ((,class (:foreground ,my-z-yellow))))
   `(compilation-line-number ((,class (:foreground ,my-z-yellow))))
   `(compilation-message-face ((,class (:foreground ,my-z-blue))))
   `(compilation-warning-face ((,class (:foreground ,my-z-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,my-z-fg))))
   `(grep-error-face ((,class (:foreground ,my-z-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,my-z-blue))))
   `(grep-match-face ((,class (:foreground ,my-z-orange :weight bold))))
   `(match ((,class (:background ,my-z-bg-1 :foreground ,my-z-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,my-z-yellow :background ,my-z-bg-1))))
   `(isearch-fail ((,class (:foreground ,my-z-fg :background ,my-z-red-4))))
   `(lazy-highlight ((,class (:foreground ,my-z-yellow :background ,my-z-bg+2))))

   `(menu ((,class (:foreground ,my-z-fg :background ,my-z-bg))))
   `(minibuffer-prompt ((,class (:foreground ,my-z-yellow))))
   `(mode-line
     ((,class (:foreground ,my-z-green+1
                           :background ,my-z-bg-1
                           :box (:line-width -1 :style released-button)))))
   `(mode-line-buffer-id ((,class (:foreground ,my-z-yellow :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,my-z-green-1
                           :background ,my-z-bg-05
                           :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,my-z-bg-1))))
   `(secondary-selection ((,class (:background ,my-z-bg+2))))
   `(trailing-whitespace ((,class (:background ,my-z-red))))
   `(vertical-border ((,class (:foreground ,my-z-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,my-z-blue))))
   `(font-lock-comment-face ((,class (:foreground ,my-z-red-4))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,my-z-red-4))))
   `(font-lock-constant-face ((,class (:foreground ,my-z-green+4))))
   `(font-lock-doc-face ((,class (:foreground ,my-z-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,my-z-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,my-z-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,my-z-yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,my-z-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,my-z-blue))))
   `(font-lock-string-face ((,class (:foreground ,my-z-red))))
   `(font-lock-type-face ((,class (:foreground ,my-z-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,my-z-orange))))
   `(font-lock-warning-face ((,class (:foreground ,my-z-yellow-1 :weight bold :underline t))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; newsticker
   `(newsticker-date-face ((,class (:foreground ,my-z-fg))))
   `(newsticker-default-face ((,class (:foreground ,my-z-fg))))
   `(newsticker-enclosure-face ((,class (:foreground ,my-z-green+3))))
   `(newsticker-extra-face ((,class (:foreground ,my-z-bg+2 :height 0.8))))
   `(newsticker-feed-face ((,class (:foreground ,my-z-fg))))
   `(newsticker-immortal-item-face ((,class (:foreground ,my-z-green))))
   `(newsticker-new-item-face ((,class (:foreground ,my-z-blue))))
   `(newsticker-obsolete-item-face ((,class (:foreground ,my-z-red))))
   `(newsticker-old-item-face ((,class (:foreground ,my-z-bg+3))))
   `(newsticker-statistics-face ((,class (:foreground ,my-z-fg))))
   `(newsticker-treeview-face ((,class (:foreground ,my-z-fg))))
   `(newsticker-treeview-immortal-face ((,class (:foreground ,my-z-green))))
   `(newsticker-treeview-listwindow-face ((,class (:foreground ,my-z-fg))))
   `(newsticker-treeview-new-face ((,class (:foreground ,my-z-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((,class (:foreground ,my-z-red))))
   `(newsticker-treeview-old-face ((,class (:foreground ,my-z-bg+3))))
   `(newsticker-treeview-selection-face ((,class (:foreground ,my-z-yellow))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,my-z-fg))))
   `(ack-file ((,class (:foreground ,my-z-blue))))
   `(ack-line ((,class (:foreground ,my-z-yellow))))
   `(ack-match ((,class (:foreground ,my-z-orange :background ,my-z-bg-1 :weigth bold))))

   ;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,my-z-yellow :weight bold ))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,my-z-bg+3 :foreground "black"))))
   `(ac-selection-face ((,class (:background ,my-z-blue-4 :foreground ,my-z-fg))))
   `(popup-tip-face ((,class (:background ,my-z-yellow-2 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,my-z-blue-5))))
   `(popup-scroll-bar-background-face ((,class (:background ,my-z-bg-1))))
   `(popup-isearch-match ((,class (:background ,my-z-bg :foreground ,my-z-fg))))

   ;; diff
   `(diff-added ((,class (:foreground ,my-z-green+4))))
   `(diff-changed ((,class (:foreground ,my-z-yellow))))
   `(diff-removed ((,class (:foreground ,my-z-red))))
   `(diff-header ((,class (:background ,my-z-bg+2))))
   `(diff-file-header
     ((,class (:background ,my-z-bg+2 :foreground ,my-z-fg :bold t))))

   ;; ert
   `(ert-my-z-result-expected ((,class (:foreground ,my-z-green+4 :background ,my-z-bg))))
   `(ert-my-z-result-unexpected ((,class (:foreground ,my-z-red :background ,my-z-bg))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,my-z-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,my-z-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,my-z-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,my-z-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,my-z-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,my-z-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,my-z-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,my-z-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,my-z-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,my-z-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,my-z-red-1 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,my-z-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,my-z-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,my-z-yellow))))
   `(erc-keyword-face ((,class (:foreground ,my-z-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,my-z-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,my-z-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,my-z-green))))
   `(erc-pal-face ((,class (:foreground ,my-z-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,my-z-orange :background ,my-z-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,my-z-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-from))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((,class (:foreground ,my-z-orange))))
   `(gnus-summary-high-ancient ((,class (:foreground ,my-z-blue))))
   `(gnus-summary-high-read ((,class (:foreground ,my-z-green :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,my-z-orange :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,my-z-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,my-z-blue))))
   `(gnus-summary-low-read ((t (:foreground ,my-z-green))))
   `(gnus-summary-low-ticked ((,class (:foreground ,my-z-orange :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,my-z-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,my-z-blue))))
   `(gnus-summary-normal-read ((,class (:foreground ,my-z-green))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,my-z-orange :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,my-z-fg))))
   `(gnus-summary-selected ((,class (:foreground ,my-z-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,my-z-blue))))
   `(gnus-cite-10 ((,class (:foreground ,my-z-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,my-z-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,my-z-blue-1))))
   `(gnus-cite-3 ((,class (:foreground ,my-z-blue-2))))
   `(gnus-cite-4 ((,class (:foreground ,my-z-green+2))))
   `(gnus-cite-5 ((,class (:foreground ,my-z-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,my-z-green))))
   `(gnus-cite-7 ((,class (:foreground ,my-z-red))))
   `(gnus-cite-8 ((,class (:foreground ,my-z-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,my-z-red-2))))
   `(gnus-group-news-1-empty ((,class (:foreground ,my-z-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,my-z-green+3))))
   `(gnus-group-news-3-empty ((,class (:foreground ,my-z-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,my-z-blue-2))))
   `(gnus-group-news-5-empty ((,class (:foreground ,my-z-blue-3))))
   `(gnus-group-news-6-empty ((,class (:foreground ,my-z-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,my-z-bg+2))))
   `(gnus-signature ((,class (:foreground ,my-z-yellow))))
   `(gnus-x ((,class (:background ,my-z-fg :foreground ,my-z-bg))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,my-z-green
                           :background ,my-z-bg
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,my-z-yellow
                           :background ,my-z-bg-1
                           :underline nil
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,my-z-bg+1 :underline nil))))
   `(helm-selection-line ((,class (:background ,my-z-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,my-z-bg :background ,my-z-yellow-2))))
   `(helm-candidate-number ((,class (:foreground ,my-z-green+4 :background ,my-z-bg-1))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,my-z-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,my-z-yellow :weight bold))))
   `(ido-only-match ((,class (:foreground ,my-z-orange :weight bold))))
   `(ido-subdir ((,class (:foreground ,my-z-yellow))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,my-z-orange))))
   `(js2-error-face ((,class (:foreground ,my-z-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,my-z-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,my-z-green+2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,my-z-green+3))))
   `(js2-function-param-face ((,class (:foreground, my-z-green+3))))
   `(js2-external-variable-face ((,class (:foreground ,my-z-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,my-z-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,my-z-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,my-z-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,my-z-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,my-z-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,my-z-red+1))))
   `(jabber-activity-face((,class (:foreground ,my-z-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,my-z-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,my-z-green+2 :background ,my-z-bg))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,my-z-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,my-z-orange :weight bold))))
   `(magit-item-highlight ((,class (:background ,my-z-bg+1 :weight bold))))
   `(magit-diff-add ((,class (:foreground ,my-z-green+4 :weight bold))))
   `(magit-diff-del ((,class (:foreground ,my-z-red :weight bold))))

   ;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,my-z-green+1))))
   `(message-header-other ((,class (:foreground ,my-z-green))))
   `(message-header-to ((,class (:foreground ,my-z-yellow :weight bold))))
   `(message-header-from ((,class (:foreground ,my-z-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,my-z-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,my-z-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,my-z-orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,my-z-green))))
   `(message-mml ((,class (:foreground ,my-z-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,my-z-orange))))
   `(mew-face-header-from ((,class (:foreground ,my-z-yellow))))
   `(mew-face-header-date ((,class (:foreground ,my-z-green))))
   `(mew-face-header-to ((,class (:foreground ,my-z-red))))
   `(mew-face-header-key ((,class (:foreground ,my-z-green))))
   `(mew-face-header-private ((,class (:foreground ,my-z-green))))
   `(mew-face-header-important ((,class (:foreground ,my-z-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,my-z-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,my-z-red))))
   `(mew-face-header-xmew ((,class (:foreground ,my-z-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,my-z-red))))
   `(mew-face-body-url ((,class (:foreground ,my-z-orange))))
   `(mew-face-body-comment ((,class (:foreground ,my-z-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,my-z-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,my-z-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,my-z-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,my-z-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,my-z-red))))
   `(mew-face-mark-review ((,class (:foreground ,my-z-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,my-z-green))))
   `(mew-face-mark-delete ((,class (:foreground ,my-z-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,my-z-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,my-z-green))))
   `(mew-face-mark-unread ((,class (:foreground ,my-z-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,my-z-green))))
   `(mew-face-eof-part ((,class (:foreground ,my-z-yellow))))

   ;; mic-paren
   `(paren-face-match ((,class (:foreground ,my-z-cyan :background ,my-z-bg :weight bold))))
   `(paren-face-mismatch ((,class (:foreground ,my-z-bg :background ,my-z-magenta :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,my-z-bg :background ,my-z-red :weight bold))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background nil))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,my-z-bg-1))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,my-z-yellow))))
   `(nav-face-button-num ((,class (:foreground ,my-z-cyan))))
   `(nav-face-dir ((,class (:foreground ,my-z-green))))
   `(nav-face-hdir ((,class (:foreground ,my-z-red))))
   `(nav-face-file ((,class (:foreground ,my-z-fg))))
   `(nav-face-hfile ((,class (:foreground ,my-z-red-4))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background nil))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,my-z-bg-1))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,my-z-bg+2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,my-z-bg+3))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,my-z-bg+1))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,my-z-fg :weight bold))))
   `(org-checkbox ((,class (:background ,my-z-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,my-z-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,my-z-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,my-z-green+3))))
   `(org-formula ((,class (:foreground ,my-z-yellow-2))))
   `(org-headline-done ((,class (:foreground ,my-z-green+3))))
   `(org-hide ((,class (:foreground ,my-z-bg-1))))
   `(org-level-1 ((,class (:foreground ,my-z-orange))))
   `(org-level-2 ((,class (:foreground ,my-z-green+1))))
   `(org-level-3 ((,class (:foreground ,my-z-blue-1))))
   `(org-level-4 ((,class (:foreground ,my-z-yellow-2))))
   `(org-level-5 ((,class (:foreground ,my-z-cyan))))
   `(org-level-6 ((,class (:foreground ,my-z-green-1))))
   `(org-level-7 ((,class (:foreground ,my-z-red-4))))
   `(org-level-8 ((,class (:foreground ,my-z-blue-4))))
   `(org-link ((,class (:foreground ,my-z-yellow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,my-z-green+4))))
   `(org-scheduled-previously ((,class (:foreground ,my-z-red-4))))
   `(org-scheduled-today ((,class (:foreground ,my-z-blue+1))))
   `(org-special-keyword ((,class (:foreground ,my-z-yellow-1))))
   `(org-table ((,class (:foreground ,my-z-green+2))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,my-z-orange))))
   `(org-todo ((,class (:bold t :foreground ,my-z-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,my-z-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,my-z-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,my-z-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,my-z-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,my-z-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,my-z-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,my-z-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,my-z-green+4))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,my-z-red-3))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,my-z-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,my-z-green+2))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,my-z-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,my-z-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,my-z-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,my-z-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,my-z-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,my-z-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,my-z-red))))
   `(rpm-spec-package-face ((,class (:foreground ,my-z-red))))
   `(rpm-spec-section-face ((,class (:foreground ,my-z-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,my-z-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,my-z-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,my-z-orange))))
   `(rst-level-2-face ((,class (:foreground ,my-z-green+1))))
   `(rst-level-3-face ((,class (:foreground ,my-z-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,my-z-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,my-z-cyan))))
   `(rst-level-6-face ((,class (:foreground ,my-z-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,my-z-red-3 :background ,my-z-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,my-z-blue-1 :background ,my-z-bg :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,my-z-red))))

   ;; volatile-highlights
   `(vhl/default-face ((,class (:background ,my-z-bg+1))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,my-z-bg :foreground ,my-z-bg+1))))
   `(whitespace-hspace ((,class (:background ,my-z-bg :foreground ,my-z-bg+1))))
   `(whitespace-tab ((,class (:background ,my-z-bg :foreground ,my-z-red))))
   `(whitespace-newline ((,class (:foreground ,my-z-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,my-z-red :background ,my-z-bg))))
   `(whitespace-line ((,class (:background ,my-z-bg-05 :foreground ,my-z-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,my-z-orange :foreground ,my-z-orange))))
   `(whitespace-indentation ((,class (:background ,my-z-yellow :foreground ,my-z-red))))
   `(whitespace-empty ((,class (:background ,my-z-yellow :foreground ,my-z-red))))
   `(whitespace-space-after-tab ((,class (:background ,my-z-yellow :foreground ,my-z-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,my-z-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,my-z-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,my-z-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,my-z-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,my-z-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,my-z-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,my-z-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,my-z-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,my-z-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,my-z-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,my-z-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,my-z-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,my-z-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,my-z-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,my-z-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,my-z-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,my-z-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,my-z-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,my-z-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,my-z-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,my-z-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,my-z-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,my-z-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,my-z-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,my-z-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,my-z-green+4))))

   ;; yascroll
   `(yascroll:thumb-text-area ((,class (:background ,my-z-bg-1))))
   `(yascroll:thumb-fringe ((,class (:background ,my-z-bg-1 :foreground ,my-z-bg-1))))
   )

  ;;; custom theme variables
  (custom-theme-set-variables
   'my-z
   `(ansi-color-names-vector [,my-z-bg ,my-z-red ,my-z-green ,my-z-yellow
                                          ,my-z-blue ,my-z-magenta ,my-z-cyan ,my-z-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,my-z-bg-05)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'my-z)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; my-z-theme.el ends here.
