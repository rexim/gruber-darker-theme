;;; gruber-darker-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2009-2013 Jason R. Blevins

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-darker-theme
;; Version: 0.2

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

;;; Use rainbow-mode.
(let ((class '((class color) (min-colors 89)))
      ;; Colors with +x are lighter. Colors with -x are darker.
      (gruber-darker-black    "black")
      (gruber-darker-black+1  "#111")
      (gruber-darker-white    "white")
      (gruber-darker-fg       "#e4e4ef")
      (gruber-darker-fg+1     "#f4f4ff")
      (gruber-darker-fg+2     "#f5f5f5")
      (gruber-darker-gray     "#444")
      (gruber-derker-gray+1   "#999")
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
   `(default ((,class (:foreground ,gruber-darker-fg :background ,gruber-darker-bg))))
   `(cursor ((,class (:foreground ,gruber-darker-yellow))))
   `(font-lock-comment-face ((,class (:foreground ,gruber-darker-brown))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,gruber-darker-brown))))
   `(font-lock-doc-face ((,class (:foreground ,gruber-darker-green))))
   `(font-lock-doc-string-face ((,class (:foreground ,gruber-darker-green))))
   `(font-lock-string-face ((,class (:foreground ,gruber-darker-green))))
   `(font-lock-keyword-face ((,class (:foreground ,gruber-darker-yellow :bold t))))
   `(font-lock-builtin-face ((,class (:foreground ,gruber-darker-yellow))))
   `(font-lock-function-name-face ((,class (:foreground ,gruber-darker-quartz+1))))
   `(font-lock-variable-name-face ((,class (:foreground ,gruber-darker-fg+1))))
   `(font-lock-preprocessor-face ((,class (:foreground ,gruber-darker-quartz))))
   `(font-lock-constant-face ((,class (:foreground ,gruber-darker-quartz))))
   `(font-lock-type-face ((,class (:foreground ,gruber-darker-quartz))))
   `(font-lock-warning-face ((,class (:foreground ,gruber-darker-red))))
   `(font-lock-reference-face ((,class (:foreground ,gruber-darker-quartz))))
   `(trailing-whitespace ((,class (:foreground ,gruber-darker-black :background ,gruber-darker-red))))
   `(link ((,class (:foreground ,gruber-darker-quartz+1 :underline t))))
   `(link-visited ((,class (:foreground ,gruber-darker-quartz+2 :underline t))))

   ;; Search
   `(isearch ((,class (:foreground ,gruber-darker-black :background ,gruber-darker-fg+2))))
   `(isearch-lazy-highlight-face ((,class (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-sea-wave))))
   `(isearch-fail ((,class (:foreground ,gruber-darker-black :background ,gruber-darker-red))))

   ;; User interface
   `(fringe ((,class (:background ,gruber-darker-black+1 :foreground ,gruber-darker-gray))))
   `(border ((,class (:background ,gruber-darker-black+1 :foreground ,gruber-darker-gray))))
   `(mode-line ((,class (:background ,gruber-darker-bg+2 :foreground ,gruber-darker-white))))
   `(mode-line-buffer-id ((,class (:background ,gruber-darker-bg+2 :foreground ,gruber-darker-white))))
   `(mode-line-inactive ((,class (:background ,gruber-darker-bg+2 :foreground ,gruber-derker-gray+1))))
   `(minibuffer-prompt ((,class (:foreground ,gruber-darker-quartz+1))))
   `(region ((,class (:background ,gruber-darker-bg+3))))
   `(secondary-selection ((,class (:background ,gruber-darker-bg+3 :foreground ,gruber-darker-fg+1))))
   `(tooltip ((,class (:background ,gruber-darker-bg+4 :foreground ,gruber-darker-white))))

   ;; Parenthesis matching
   `(show-paren-match-face ((,class (:background ,gruber-darker-bg+4 :foreground ,gruber-darker-fg+1))))
   `(show-paren-mismatch-face ((,class (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-red-1))))

   ;; Line highlighting
   `(highlight ((,class (:background ,gruber-darker-bg+1 :foreground nil))))
   `(highlight-current-line-face ((,class (:background ,gruber-darker-bg+1 :foreground nil))))

   ;; Calendar
   `(holiday-face ((,class (:foreground ,gruber-darker-red))))

   ;; Info
   `(info-xref ((,class (:foreground ,gruber-darker-quartz+1))))
   `(info-visited ((,class (:foreground ,gruber-darker-quartz+2))))

   ;; AUCTeX
   `(font-latex-sectioning-5-face ((,class (:foreground ,gruber-darker-quartz+1 :bold t))))
   `(font-latex-bold-face ((,class (:foreground ,gruber-darker-quartz :bold t))))
   `(font-latex-italic-face ((,class (:foreground ,gruber-darker-quartz :italic t))))
   `(font-latex-math-face ((,class (:foreground ,gruber-darker-green))))
   `(font-latex-string-face ((,class (:foreground ,gruber-darker-green))))
   `(font-latex-warning-face ((,class (:foreground ,gruber-darker-red))))
   `(font-latex-slide-title-face ((,class (:foreground ,gruber-darker-quartz+1))))

   ;; EShell
   `(eshell-ls-directory ((,class (:foreground ,gruber-darker-quartz+1))))
   `(eshell-ls-symlink ((,class (:foreground ,gruber-darker-yellow))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,gruber-darker-quartz+1 :weight bold))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,gruber-darker-green :bold nil))))
   `(ido-only-match ((,class (:foreground ,gruber-darker-green))))
   `(ido-subdir ((,class (:foreground ,gruber-darker-quartz+1 :weight bold))))

   ;; Compilation
   `(compilation-info ((,class (:foreground ,gruber-darker-green :inherit nil))))
   ))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-darker)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; gruber-darker-theme.el ends here.
