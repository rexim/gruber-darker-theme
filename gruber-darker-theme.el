;;; gruber-darker-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2009-2013 Jason R. Blevins

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-darker-theme
;; Version: 0.3

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

(deftheme gruber-darker
  "Gruber Darker color theme for Emacs by Jason Blevins.
A darker variant of the Gruber Dark theme for BBEdit by John
Gruber. Adapted for deftheme and extended by Alexey Kutepov
a.k.a. rexim.")

;; Install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-darker-black    "black")
      (gruber-darker-black+1  "#111")
      (gruber-darker-white    "white")
      (gruber-darker-fg       "#e4e4ef")
      (gruber-darker-fg+1     "#f4f4ff")
      (gruber-darker-fg+2     "#f5f5f5")
      (gruber-darker-gray     "#444")
      (gruber-darker-gray+1   "#999")
      (gruber-darker-bg       "#181818")
      (gruber-darker-bg+1     "#282828")
      (gruber-darker-bg+2     "#453d41")
      (gruber-darker-bg+3     "#484848")
      (gruber-darker-bg+4     "#52494e")
      (gruber-darker-red-1    "#c73c3f")
      (gruber-darker-red      "#f43841")
      (gruber-darker-green    "#73c936")
      (gruber-darker-yellow   "#ffdd33")
      (gruber-darker-brown    "#cc8c3c")
      (gruber-darker-sea-wave "#5f627f")
      (gruber-darker-quartz   "#95a99f")
      (gruber-darker-quartz+1 "#96a6c8")
      (gruber-darker-quartz+2 "#9e95c7")
      )
  (custom-theme-set-variables
   'gruber-darker
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-darker

   ;; Standard font lock faces
   `(default ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg))))
   `(cursor ((t (:foreground ,gruber-darker-yellow))))
   `(font-lock-comment-face ((t (:foreground ,gruber-darker-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-darker-brown))))
   `(font-lock-doc-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-darker-yellow :bold t))))
   `(font-lock-builtin-face ((t (:foreground ,gruber-darker-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-darker-quartz+1))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-darker-fg+1))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-constant-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-type-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-warning-face ((t (:foreground ,gruber-darker-red))))
   `(font-lock-reference-face ((t (:foreground ,gruber-darker-quartz))))
   `(trailing-whitespace ((t (:foreground ,gruber-darker-black :background ,gruber-darker-red))))
   `(link ((t (:foreground ,gruber-darker-quartz+1 :underline t))))
   `(link-visited ((t (:foreground ,gruber-darker-quartz+2 :underline t))))

   ;; Search
   `(isearch ((t (:foreground ,gruber-darker-black :background ,gruber-darker-fg+2))))
   `(isearch-lazy-highlight-face ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-sea-wave))))
   `(isearch-fail ((t (:foreground ,gruber-darker-black :background ,gruber-darker-red))))

   ;; User interface
   `(fringe ((t (:background ,gruber-darker-black+1 :foreground ,gruber-darker-gray))))
   `(border ((t (:background ,gruber-darker-black+1 :foreground ,gruber-darker-gray))))
   `(mode-line ((t (:background ,gruber-darker-bg+2 :foreground ,gruber-darker-white))))
   `(mode-line-buffer-id ((t (:background ,gruber-darker-bg+2 :foreground ,gruber-darker-white))))
   `(mode-line-inactive ((t (:background ,gruber-darker-bg+2 :foreground ,gruber-darker-gray+1))))
   `(minibuffer-prompt ((t (:foreground ,gruber-darker-quartz+1))))
   `(region ((t (:background ,gruber-darker-bg+3))))
   `(secondary-selection ((t (:background ,gruber-darker-bg+3 :foreground ,gruber-darker-fg+1))))
   `(tooltip ((t (:background ,gruber-darker-bg+4 :foreground ,gruber-darker-white))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-darker-green))))

   ;; Parenthesis matching
   `(show-paren-match-face ((t (:background ,gruber-darker-bg+4 :foreground ,gruber-darker-fg+1))))
   `(show-paren-mismatch-face ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-red-1))))

   ;; Line highlighting
   `(highlight ((t (:background ,gruber-darker-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t (:background ,gruber-darker-bg+1 :foreground nil))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-darker-red))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-darker-quartz+1))))
   `(info-visited ((t (:foreground ,gruber-darker-quartz+2))))

   ;; AUCTeX
   `(font-latex-sectioning-5-face ((t (:foreground ,gruber-darker-quartz+1 :bold t))))
   `(font-latex-bold-face ((t (:foreground ,gruber-darker-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-darker-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-darker-green))))
   `(font-latex-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-darker-red))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-darker-quartz+1))))

   ;; EShell
   `(eshell-ls-directory ((t (:foreground ,gruber-darker-quartz+1))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-darker-yellow))))
   `(eshell-ls-backup ((t (:foreground ,gruber-darker-quartz))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-darker-quartz+1 :weight bold))))
   `(dired-ignored ((t (:foreground ,gruber-darker-quartz :inherit nil))))

   ;; ido-mode
   `(ido-first-match ((t (:foreground ,gruber-darker-green :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-darker-green))))
   `(ido-subdir ((t (:foreground ,gruber-darker-quartz+1 :weight bold))))

   ;; Compilation
   `(compilation-info ((t (:foreground ,gruber-darker-green :inherit nil))))

   ;; egg
   `(egg-text-base ((t (:foreground ,gruber-darker-fg))))
   `(egg-help-header-1 ((t (:foreground ,gruber-darker-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-darker-quartz+1))))
   `(egg-branch ((t (:foreground ,gruber-darker-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-darker-yellow))))
   `(egg-term ((t (:foreground ,gruber-darker-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-darker-green))))
   `(egg-diff-del ((t (:foreground ,gruber-darker-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-darker-quartz+2))))
   `(egg-section-title ((t (:foreground ,gruber-darker-yellow))))

   ;; message
   `(message-header-name ((t (:foreground ,gruber-darker-green))))
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
