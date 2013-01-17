;;; test-theme.el --- A low contrast color theme for Emacs. Modified
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
(deftheme test "The Test color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Test palette
      ;; colors with +x are lighter, colors with -x are darker
      (test-fg "#dcdccc")
      (test-fg-1 "#656555")
      (test-bg-1 "#2C2B27")
      ; (test-bg-1 "#2b2b2b")
      (test-bg-05 "#363636")
      ; (test-bg-05 "#383838")
      (test-bg "#3C3B37")
      ; (test-bg "#3f3f3f")
      (test-bg+1 "#4C4B47")
      ; (test-bg+1 "#4f4f4f")
      (test-bg+2 "#5C5B57")
      ; (test-bg+2 "#5f5f5f")
      (test-bg+3 "#6C6B67")
      ; (test-bg+3 "#6f6f6f")
      (test-red+1 "#dca3a3")
      ; (test-red "#cc9393")
      (test-red "#E2725B")
      (test-red-1 "#bc8383")
      (test-red-2 "#ac7373")
      (test-red-3 "#9c6363")
      (test-red-4 "#8c5353")
      (test-orange "#dd4814")
      ; (test-orange "#dfaf8f")
      (test-yellow "#f0dfaf")
      (test-yellow-1 "#e0cf9f")
      (test-yellow-2 "#d0bf8f")
      (test-green-1 "#5f7f5f")
      (test-green "#7f9f7f")
      (test-green+1 "#8fb28f")
      (test-green+2 "#9fc59f")
      (test-green+3 "#afd8af")
      (test-green+4 "#bfebbf")
      (test-cyan "#93e0e3")
      (test-blue+1 "#94bff3")
      (test-blue "#8cd0d3")
      (test-blue-1 "#7cb8bb")
      (test-blue-2 "#6ca0a3")
      (test-blue-3 "#5c888b")
      (test-blue-4 "#4c7073")
      (test-blue-5 "#366060")
      ; (test-magenta "#dc8cc3")
      (test-magenta "#772953"))
  (custom-theme-set-faces
   'test
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,test-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,test-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((,class (:foreground ,test-fg :background ,test-bg))))
   `(cursor ((,class (:foreground ,test-fg))))
   `(escape-glyph-face ((,class (:foreground ,test-red))))
   `(fringe ((,class (:foreground ,test-fg :background ,test-bg+1))))
   `(header-line ((,class (:foreground ,test-yellow
                                       :background ,test-bg-1
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,test-bg-05))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,test-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,test-green))))
   `(compilation-error-face ((,class (:foreground ,test-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,test-fg))))
   `(compilation-info-face ((,class (:foreground ,test-blue))))
   `(compilation-info ((,class (:foreground ,test-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,test-green))))
   `(compilation-line-face ((,class (:foreground ,test-yellow))))
   `(compilation-line-number ((,class (:foreground ,test-yellow))))
   `(compilation-message-face ((,class (:foreground ,test-blue))))
   `(compilation-warning-face ((,class (:foreground ,test-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,test-fg))))
   `(grep-error-face ((,class (:foreground ,test-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,test-blue))))
   `(grep-match-face ((,class (:foreground ,test-orange :weight bold))))
   `(match ((,class (:background ,test-bg-1 :foreground ,test-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,test-yellow :background ,test-bg-1))))
   `(isearch-fail ((,class (:foreground ,test-fg :background ,test-red-4))))
   `(lazy-highlight ((,class (:foreground ,test-yellow :background ,test-bg+2))))

   `(menu ((,class (:foreground ,test-fg :background ,test-bg))))
   `(minibuffer-prompt ((,class (:foreground ,test-yellow))))
   `(mode-line
     ((,class (:foreground ,test-green+1
                           :background ,test-bg-1
                           :box (:line-width -1 :style released-button)))))
   `(mode-line-buffer-id ((,class (:foreground ,test-yellow :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,test-green-1
                           :background ,test-bg-05
                           :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,test-bg-1))))
   `(secondary-selection ((,class (:background ,test-bg+2))))
   `(trailing-whitespace ((,class (:background ,test-red))))
   `(vertical-border ((,class (:foreground ,test-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,test-blue))))
   `(font-lock-comment-face ((,class (:foreground ,test-red-4))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,test-red-4))))
   `(font-lock-constant-face ((,class (:foreground ,test-green+4))))
   `(font-lock-doc-face ((,class (:foreground ,test-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,test-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,test-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,test-yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,test-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,test-blue))))
   `(font-lock-string-face ((,class (:foreground ,test-red))))
   `(font-lock-type-face ((,class (:foreground ,test-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,test-orange))))
   `(font-lock-warning-face ((,class (:foreground ,test-yellow-1 :weight bold :underline t))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; newsticker
   `(newsticker-date-face ((,class (:foreground ,test-fg))))
   `(newsticker-default-face ((,class (:foreground ,test-fg))))
   `(newsticker-enclosure-face ((,class (:foreground ,test-green+3))))
   `(newsticker-extra-face ((,class (:foreground ,test-bg+2 :height 0.8))))
   `(newsticker-feed-face ((,class (:foreground ,test-fg))))
   `(newsticker-immortal-item-face ((,class (:foreground ,test-green))))
   `(newsticker-new-item-face ((,class (:foreground ,test-blue))))
   `(newsticker-obsolete-item-face ((,class (:foreground ,test-red))))
   `(newsticker-old-item-face ((,class (:foreground ,test-bg+3))))
   `(newsticker-statistics-face ((,class (:foreground ,test-fg))))
   `(newsticker-treeview-face ((,class (:foreground ,test-fg))))
   `(newsticker-treeview-immortal-face ((,class (:foreground ,test-green))))
   `(newsticker-treeview-listwindow-face ((,class (:foreground ,test-fg))))
   `(newsticker-treeview-new-face ((,class (:foreground ,test-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((,class (:foreground ,test-red))))
   `(newsticker-treeview-old-face ((,class (:foreground ,test-bg+3))))
   `(newsticker-treeview-selection-face ((,class (:foreground ,test-yellow))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,test-fg))))
   `(ack-file ((,class (:foreground ,test-blue))))
   `(ack-line ((,class (:foreground ,test-yellow))))
   `(ack-match ((,class (:foreground ,test-orange :background ,test-bg-1 :weigth bold))))

   ;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,test-yellow :weight bold ))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,test-bg+3 :foreground "black"))))
   `(ac-selection-face ((,class (:background ,test-blue-4 :foreground ,test-fg))))
   `(popup-tip-face ((,class (:background ,test-yellow-2 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,test-blue-5))))
   `(popup-scroll-bar-background-face ((,class (:background ,test-bg-1))))
   `(popup-isearch-match ((,class (:background ,test-bg :foreground ,test-fg))))

   ;; diff
   `(diff-added ((,class (:foreground ,test-green+4))))
   `(diff-changed ((,class (:foreground ,test-yellow))))
   `(diff-removed ((,class (:foreground ,test-red))))
   `(diff-header ((,class (:background ,test-bg+2))))
   `(diff-file-header
     ((,class (:background ,test-bg+2 :foreground ,test-fg :bold t))))

   ;; ert
   `(ert-test-result-expected ((,class (:foreground ,test-green+4 :background ,test-bg))))
   `(ert-test-result-unexpected ((,class (:foreground ,test-red :background ,test-bg))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,test-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,test-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,test-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,test-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,test-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,test-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,test-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,test-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,test-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,test-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,test-red-1 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,test-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,test-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,test-yellow))))
   `(erc-keyword-face ((,class (:foreground ,test-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,test-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,test-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,test-green))))
   `(erc-pal-face ((,class (:foreground ,test-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,test-orange :background ,test-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,test-green+1))))
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
   `(gnus-summary-cancelled ((,class (:foreground ,test-orange))))
   `(gnus-summary-high-ancient ((,class (:foreground ,test-blue))))
   `(gnus-summary-high-read ((,class (:foreground ,test-green :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,test-orange :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,test-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,test-blue))))
   `(gnus-summary-low-read ((t (:foreground ,test-green))))
   `(gnus-summary-low-ticked ((,class (:foreground ,test-orange :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,test-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,test-blue))))
   `(gnus-summary-normal-read ((,class (:foreground ,test-green))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,test-orange :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,test-fg))))
   `(gnus-summary-selected ((,class (:foreground ,test-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,test-blue))))
   `(gnus-cite-10 ((,class (:foreground ,test-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,test-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,test-blue-1))))
   `(gnus-cite-3 ((,class (:foreground ,test-blue-2))))
   `(gnus-cite-4 ((,class (:foreground ,test-green+2))))
   `(gnus-cite-5 ((,class (:foreground ,test-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,test-green))))
   `(gnus-cite-7 ((,class (:foreground ,test-red))))
   `(gnus-cite-8 ((,class (:foreground ,test-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,test-red-2))))
   `(gnus-group-news-1-empty ((,class (:foreground ,test-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,test-green+3))))
   `(gnus-group-news-3-empty ((,class (:foreground ,test-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,test-blue-2))))
   `(gnus-group-news-5-empty ((,class (:foreground ,test-blue-3))))
   `(gnus-group-news-6-empty ((,class (:foreground ,test-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,test-bg+2))))
   `(gnus-signature ((,class (:foreground ,test-yellow))))
   `(gnus-x ((,class (:background ,test-fg :foreground ,test-bg))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,test-green
                           :background ,test-bg
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,test-yellow
                           :background ,test-bg-1
                           :underline nil
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,test-bg+1 :underline nil))))
   `(helm-selection-line ((,class (:background ,test-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,test-bg :background ,test-yellow-2))))
   `(helm-candidate-number ((,class (:foreground ,test-green+4 :background ,test-bg-1))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,test-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,test-yellow :weight bold))))
   `(ido-only-match ((,class (:foreground ,test-orange :weight bold))))
   `(ido-subdir ((,class (:foreground ,test-yellow))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,test-orange))))
   `(js2-error-face ((,class (:foreground ,test-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,test-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,test-green+2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,test-green+3))))
   `(js2-function-param-face ((,class (:foreground, test-green+3))))
   `(js2-external-variable-face ((,class (:foreground ,test-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,test-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,test-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,test-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,test-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,test-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,test-red+1))))
   `(jabber-activity-face((,class (:foreground ,test-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,test-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,test-green+2 :background ,test-bg))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,test-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,test-orange :weight bold))))
   `(magit-item-highlight ((,class (:background ,test-bg+1 :weight bold))))
   `(magit-diff-add ((,class (:foreground ,test-green+4 :weight bold))))
   `(magit-diff-del ((,class (:foreground ,test-red :weight bold))))

   ;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,test-green+1))))
   `(message-header-other ((,class (:foreground ,test-green))))
   `(message-header-to ((,class (:foreground ,test-yellow :weight bold))))
   `(message-header-from ((,class (:foreground ,test-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,test-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,test-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,test-orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,test-green))))
   `(message-mml ((,class (:foreground ,test-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,test-orange))))
   `(mew-face-header-from ((,class (:foreground ,test-yellow))))
   `(mew-face-header-date ((,class (:foreground ,test-green))))
   `(mew-face-header-to ((,class (:foreground ,test-red))))
   `(mew-face-header-key ((,class (:foreground ,test-green))))
   `(mew-face-header-private ((,class (:foreground ,test-green))))
   `(mew-face-header-important ((,class (:foreground ,test-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,test-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,test-red))))
   `(mew-face-header-xmew ((,class (:foreground ,test-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,test-red))))
   `(mew-face-body-url ((,class (:foreground ,test-orange))))
   `(mew-face-body-comment ((,class (:foreground ,test-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,test-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,test-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,test-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,test-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,test-red))))
   `(mew-face-mark-review ((,class (:foreground ,test-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,test-green))))
   `(mew-face-mark-delete ((,class (:foreground ,test-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,test-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,test-green))))
   `(mew-face-mark-unread ((,class (:foreground ,test-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,test-green))))
   `(mew-face-eof-part ((,class (:foreground ,test-yellow))))

   ;; mic-paren
   `(paren-face-match ((,class (:foreground ,test-cyan :background ,test-bg :weight bold))))
   `(paren-face-mismatch ((,class (:foreground ,test-bg :background ,test-magenta :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,test-bg :background ,test-red :weight bold))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background nil))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,test-bg-1))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,test-yellow))))
   `(nav-face-button-num ((,class (:foreground ,test-cyan))))
   `(nav-face-dir ((,class (:foreground ,test-green))))
   `(nav-face-hdir ((,class (:foreground ,test-red))))
   `(nav-face-file ((,class (:foreground ,test-fg))))
   `(nav-face-hfile ((,class (:foreground ,test-red-4))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background nil))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,test-bg-1))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,test-bg+2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,test-bg+3))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,test-bg+1))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,test-fg :weight bold))))
   `(org-checkbox ((,class (:background ,test-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,test-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,test-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,test-green+3))))
   `(org-formula ((,class (:foreground ,test-yellow-2))))
   `(org-headline-done ((,class (:foreground ,test-green+3))))
   `(org-hide ((,class (:foreground ,test-bg-1))))
   `(org-level-1 ((,class (:foreground ,test-orange))))
   `(org-level-2 ((,class (:foreground ,test-green+1))))
   `(org-level-3 ((,class (:foreground ,test-blue-1))))
   `(org-level-4 ((,class (:foreground ,test-yellow-2))))
   `(org-level-5 ((,class (:foreground ,test-cyan))))
   `(org-level-6 ((,class (:foreground ,test-green-1))))
   `(org-level-7 ((,class (:foreground ,test-red-4))))
   `(org-level-8 ((,class (:foreground ,test-blue-4))))
   `(org-link ((,class (:foreground ,test-yellow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,test-green+4))))
   `(org-scheduled-previously ((,class (:foreground ,test-red-4))))
   `(org-scheduled-today ((,class (:foreground ,test-blue+1))))
   `(org-special-keyword ((,class (:foreground ,test-yellow-1))))
   `(org-table ((,class (:foreground ,test-green+2))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,test-orange))))
   `(org-todo ((,class (:bold t :foreground ,test-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,test-red :weight bold))))

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
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,test-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,test-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,test-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,test-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,test-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,test-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,test-green+4))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,test-red-3))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,test-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,test-green+2))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,test-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,test-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,test-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,test-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,test-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,test-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,test-red))))
   `(rpm-spec-package-face ((,class (:foreground ,test-red))))
   `(rpm-spec-section-face ((,class (:foreground ,test-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,test-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,test-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,test-orange))))
   `(rst-level-2-face ((,class (:foreground ,test-green+1))))
   `(rst-level-3-face ((,class (:foreground ,test-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,test-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,test-cyan))))
   `(rst-level-6-face ((,class (:foreground ,test-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,test-red-3 :background ,test-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,test-blue-1 :background ,test-bg :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,test-red))))

   ;; volatile-highlights
   `(vhl/default-face ((,class (:background ,test-bg+1))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,test-bg :foreground ,test-bg+1))))
   `(whitespace-hspace ((,class (:background ,test-bg :foreground ,test-bg+1))))
   `(whitespace-tab ((,class (:background ,test-bg :foreground ,test-red))))
   `(whitespace-newline ((,class (:foreground ,test-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,test-red :background ,test-bg))))
   `(whitespace-line ((,class (:background ,test-bg-05 :foreground ,test-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,test-orange :foreground ,test-orange))))
   `(whitespace-indentation ((,class (:background ,test-yellow :foreground ,test-red))))
   `(whitespace-empty ((,class (:background ,test-yellow :foreground ,test-red))))
   `(whitespace-space-after-tab ((,class (:background ,test-yellow :foreground ,test-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,test-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,test-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,test-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,test-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,test-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,test-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,test-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,test-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,test-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,test-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,test-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,test-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,test-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,test-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,test-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,test-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,test-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,test-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,test-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,test-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,test-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,test-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,test-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,test-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,test-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,test-green+4))))

   ;; yascroll
   `(yascroll:thumb-text-area ((,class (:background ,test-bg-1))))
   `(yascroll:thumb-fringe ((,class (:background ,test-bg-1 :foreground ,test-bg-1))))
   )

  ;;; custom theme variables
  (custom-theme-set-variables
   'test
   `(ansi-color-names-vector [,test-bg ,test-red ,test-green ,test-yellow
                                          ,test-blue ,test-magenta ,test-cyan ,test-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,test-bg-05)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'test)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; test-theme.el ends here.
