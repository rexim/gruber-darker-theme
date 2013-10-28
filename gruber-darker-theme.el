;;; gruber-darker-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2013 Alexey Kutepov a.k.a rexim

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-darker-theme
;; Version: 0.6

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
      (gruber-darker-red-2     "#501515")
      (gruber-darker-red-1     "#c73c3f")
      (gruber-darker-red       "#f43841")
      (gruber-darker-red+1     "#ff4f58")
      (gruber-darker-green     "#73c936")
      (gruber-darker-yellow    "#ffdd33")
      (gruber-darker-brown     "#cc8c3c")
      (gruber-darker-quartz    "#95a99f")
      (gruber-darker-niagara-1 "#5f627f")
      (gruber-darker-niagara   "#96a6c8")
      (gruber-darker-wisteria  "#9e95c7")
      (gruber-darker-blue-2    "#202050")
      )
  (custom-theme-set-variables
   'gruber-darker
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-darker

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
   `(minibuffer-prompt ((t (:foreground ,gruber-darker-niagara))))
   `(region ((t (:background ,gruber-darker-bg+3))))
   `(secondary-selection ((t ,(list :background gruber-darker-bg+3
                                    :foreground gruber-darker-fg+1))))
   `(trailing-whitespace ((t ,(list :foreground gruber-darker-black
                                    :background gruber-darker-red))))
   `(tooltip ((t ,(list :background gruber-darker-bg+4
                        :foreground gruber-darker-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-darker-red))))

   ;; Compilation
   `(compilation-info ((t (:foreground ,gruber-darker-green :inherit nil))))
   `(compilation-warning ((t ,(list :foreground gruber-darker-brown
                                    :bold t
                                    :inherit nil))))
   `(compilation-error ((t (:foreground ,gruber-darker-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-darker-red
                                           :weight 'bold
                                           :inherit nil))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-darker-green
                                           :weight 'bold
                                           :inherit nil))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-darker-green))))

   ;; Diff
   `(diff-removed ((t (:foreground ,gruber-darker-red))))
   `(diff-added ((t (:foreground ,gruber-darker-green))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(dired-ignored ((t (:foreground ,gruber-darker-quartz :inherit nil))))

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
   `(flymake-errline ((t (:background ,gruber-darker-red-2))))
   `(flymake-warnline ((t (:background ,gruber-darker-blue-2))))

   ;; Flyspell
   `(flyspell-incorrect ((t (:foreground ,gruber-darker-red))))
   `(flyspell-duplicate ((t (:foreground ,gruber-darker-yellow))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-darker-bg+2
                                      :foreground gruber-darker-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-darker-niagara
                                  :background gruber-darker-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-darker-green))))
   `(helm-ff-file ((t (:foreground ,gruber-darker-fg :inherit nil))))
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

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-darker-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background gruber-darker-bg+1
                                            :foreground nil))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-darker-quartz
                      :background gruber-darker-bg))))

   ;; Magit
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
   `(magit-diff-hunk-header ((t (:background ,gruber-darker-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-darker-bg+4))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-darker-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-darker-bg+1
                          :foreground gruber-darker-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-darker-bg+1
                                    :foreground gruber-darker-white))))
   `(mode-line-inactive ((t ,(list :background gruber-darker-bg+1
                                   :foreground gruber-darker-quartz))))

   ;; Org Mode
   `(org-done ((t (:foreground ,gruber-darker-green))))
   `(org-todo ((t (:foreground ,gruber-darker-red-1))))

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
