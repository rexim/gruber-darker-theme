;;; gruber-darker-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-darker-theme
;; Version: 0.7

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Gruber Darker color theme for Emacs by Jason Blevins. A darker
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme and extended by Alexey Kutepov a.k.a. rexim.


(deftheme gruber-darker
  "Gruber Darker color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-darker-fg        "#e4e4ef")
      (gruber-darker-fg+1      "#f4f4ff")
      (gruber-darker-fg+2      "#f5f5f5")
      (gruber-darker-white     "#ffffff")
      (gruber-darker-black     "#000000")
      (gruber-darker-bg-1      "#101010")
      (gruber-darker-bg        "#181818")
      (gruber-darker-bg+1      "#282828")
      (gruber-darker-bg+2      "#453d41")
      (gruber-darker-bg+3      "#484848")
      (gruber-darker-bg+4      "#52494e")
      (gruber-darker-red-1     "#c73c3f")
      (gruber-darker-red       "#f43841")
      (gruber-darker-red+1     "#ff4f58")
      (gruber-darker-green     "#73c936")
      (gruber-darker-yellow    "#ffdd33")
      (gruber-darker-brown     "#cc8c3c")
      (gruber-darker-quartz    "#95a99f")
      (gruber-darker-niagara-2 "#303540")
      (gruber-darker-niagara-1 "#565f73")
      (gruber-darker-niagara   "#96a6c8")
      (gruber-darker-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'gruber-darker
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-darker

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-darker-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-darker-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-darker-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-darker-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-darker-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-darker-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-darker-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-darker-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-darker-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-darker-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-darker-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-darker-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-darker-bg-1
                       :foreground gruber-darker-bg+2))))
   `(cursor ((t (:background ,gruber-darker-yellow))))
   `(default ((t ,(list :foreground gruber-darker-fg
                        :background gruber-darker-bg))))
   `(fringe ((t ,(list :background gruber-darker-bg-1
                       :foreground gruber-darker-bg+2))))
   `(link ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-darker-wisteria :underline t))))
   `(match ((t (:background ,gruber-darker-bg+4))))
   `(shadow ((t (:foreground ,gruber-darker-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-darker-niagara))))
   `(region ((t (:background ,gruber-darker-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background gruber-darker-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground gruber-darker-black
                                    :background gruber-darker-red))))
   `(tooltip ((t ,(list :background gruber-darker-bg+4
                        :foreground gruber-darker-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-darker-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-darker-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-darker-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-darker-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-darker-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-darker-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-darker-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-darker-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground gruber-darker-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-darker-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-darker-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-darker-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-darker-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-darker-green))))
   `(egg-diff-del ((t (:foreground ,gruber-darker-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-darker-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-darker-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-darker-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-darker-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-darker-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-darker-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-darker-fg))))
   `(egg-term ((t (:foreground ,gruber-darker-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-darker-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-darker-green))))
   `(erc-input-face ((t (:foreground ,gruber-darker-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-darker-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-darker-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-darker-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-darker-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-darker-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-darker-yellow))))
   `(font-lock-comment-face ((t (:foreground ,gruber-darker-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-darker-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-darker-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-darker-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-darker-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-darker-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-darker-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-darker-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-darker-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-red) :inherit unspecified))
      (t (:foreground ,gruber-darker-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-yellow) :inherit unspecified))
      (t (:foreground ,gruber-darker-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-darker-bg+2
                                      :foreground gruber-darker-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-darker-niagara
                                  :background gruber-darker-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-darker-green))))
   `(helm-ff-file ((t (:foreground ,gruber-darker-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-darker-bg
                                        :background gruber-darker-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-darker-yellow :bold t))))
   `(helm-selection-line ((t (:background ,gruber-darker-bg+1))))
   `(helm-selection ((t (:background ,gruber-darker-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-darker-yellow
                                   :background gruber-darker-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-darker-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-darker-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-darker-niagara))))
   `(info-visited ((t (:foreground ,gruber-darker-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-darker-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-darker-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-darker-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-darker-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-darker-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-darker-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-darker-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-darker-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background gruber-darker-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-darker-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-darker-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-darker-quartz
                      :background gruber-darker-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-darker-niagara))))
   `(magit-diff-hunk-header ((t (:background ,gruber-darker-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-darker-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-darker-red+1))))
   `(magit-log-author ((t (:foreground ,gruber-darker-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-darker-green
                                            :background gruber-darker-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-darker-niagara
                                           :background gruber-darker-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-darker-yellow
                                          :background gruber-darker-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-darker-fg
                                          :background gruber-darker-bg+1))))
   `(magit-item-highlight ((t (:background ,gruber-darker-bg+1))))
   `(magit-tag ((t ,(list :foreground gruber-darker-yellow
                          :background gruber-darker-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-darker-bg+1
                                    :foreground gruber-darker-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-darker-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-darker-bg+1
                          :foreground gruber-darker-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-darker-bg+1
                                    :foreground gruber-darker-white))))
   `(mode-line-inactive ((t ,(list :background gruber-darker-bg+1
                                   :foreground gruber-darker-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-darker-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,gruber-darker-niagara))))
   `(org-column ((t (:background ,gruber-darker-bg-1))))
   `(org-column-title ((t (:background ,gruber-darker-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,gruber-darker-green))))
   `(org-todo ((t (:foreground ,gruber-darker-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-darker-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-darker-black
                        :background gruber-darker-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-darker-black
                             :background gruber-darker-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-darker-fg+1
                                       :background gruber-darker-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-darker-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-darker-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-darker-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-darker-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-darker-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-darker-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-darker-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-darker-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-darker-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-darker-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-darker-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-darker-bg
                                 :foreground gruber-darker-bg+1))))
   `(whitespace-tab ((t ,(list :background gruber-darker-bg
                               :foreground gruber-darker-bg+1))))
   `(whitespace-hspace ((t ,(list :background gruber-darker-bg
                                  :foreground gruber-darker-bg+2))))
   `(whitespace-line ((t ,(list :background gruber-darker-bg+2
                                :foreground gruber-darker-red+1))))
   `(whitespace-newline ((t ,(list :background gruber-darker-bg
                                   :foreground gruber-darker-bg+2))))
   `(whitespace-trailing ((t ,(list :background gruber-darker-red
                                    :foreground gruber-darker-red))))
   `(whitespace-empty ((t ,(list :background gruber-darker-yellow
                                 :foreground gruber-darker-yellow))))
   `(whitespace-indentation ((t ,(list :background gruber-darker-yellow
                                       :foreground gruber-darker-red))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-darker-yellow
                                           :foreground gruber-darker-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-darker-brown
                                            :foreground gruber-darker-brown))))

   ;;;;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-darker-brown :background ,gruber-darker-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-darker-brown :background ,gruber-darker-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg-1))))
   `(company-tooltip-mouse ((t (:background ,gruber-darker-bg-1))))
   `(company-tooltip-common ((t (:foreground ,gruber-darker-green))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-darker-green))))
   `(company-scrollbar-fg ((t (:background ,gruber-darker-bg-1))))
   `(company-scrollbar-bg ((t (:background ,gruber-darker-bg+2))))
   `(company-preview ((t (:background ,gruber-darker-green))))
   `(company-preview-common ((t (:foreground ,gruber-darker-green :background ,gruber-darker-bg-1))))

   ;;;;; Proof General
   `(proof-locked-face ((t (:background ,gruber-darker-niagara-2))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-darker)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruber-darker-theme.el ends here.
