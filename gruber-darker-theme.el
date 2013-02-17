;;; gruber-darker-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2009-2013 Jason R. Blevins

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-darker-theme
;; Version: 0.1

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
Gruber. Adapted for deftheme by Alexey Kutepov a.k.a. rexim.")

(custom-theme-set-variables
 'gruber-darker
 '(frame-brackground-mode (quote dark)))

(custom-theme-set-faces
 'gruber-darker

 ;; Standard font lock faces
 `(default ((t (:foreground "#e4e4ef" :background "#181818"))))
 `(cursor ((t (:foreground "#ffdd33"))))
 `(font-lock-comment-face ((t (:foreground "#cc8c3c"))))
 `(font-lock-comment-delimiter-face ((t (:foreground "#cc8c3c"))))
 `(font-lock-doc-face ((t (:foreground "#73c936"))))
 `(font-lock-doc-string-face ((t (:foreground "#73c936"))))
 `(font-lock-string-face ((t (:foreground "#73c936"))))
 `(font-lock-keyword-face ((t (:foreground "#ffdd33"))))
 `(font-lock-builtin-face ((t (:foreground "#ffdd33"))))
 `(font-lock-function-name-face ((t (:foreground "#96a6c8"))))
 `(font-lock-variable-name-face ((t (:foreground "#f4f4ff"))))
 `(font-lock-preprocessor-face ((t (:foreground "#95a99f"))))
 `(font-lock-constant-face ((t (:foreground "#95a99f"))))
 `(font-lock-type-face ((t (:foreground "#95a99f"))))
 `(font-lock-warning-face ((t (:foreground "#f43841"))))
 `(font-lock-reference-face ((t (:foreground "#95a99f"))))
 `(trailing-whitespace ((t (:foreground "#000" :background "#f43841"))))
 `(link ((t (:foreground "#96A6C8" :underline t))))

 ;; Search
 `(isearch ((t (:foreground "#000" :background "#f5f5f5"))))
 `(isearch-lazy-highlight-face ((t (:foreground "#f4f4ff" :background "#5f627f"))))
 `(isearch-fail ((t (:foreground "#000" :background "#f43841"))))

 ;; User interface
 `(fringe ((t (:background "#111" :foreground "#444"))))
 `(border ((t (:background "#111" :foreground "#444"))))
 `(mode-line ((t (:background "#453d41" :foreground "#fff"))))
 `(mode-line-buffer-id ((t (:background "#453d41" :foreground "#fff"))))
 `(mode-line-inactive ((t (:background "#453d41" :foreground "#999"))))
 `(minibuffer-prompt ((t (:foreground "#96A6C8"))))
 `(region ((t (:background "#484848"))))
 `(secondary-selection ((t (:background "#484951" :foreground "#F4F4FF"))))
 `(tooltip ((t (:background "#52494e" :foreground "#fff"))))

 ;; Parenthesis matching
 `(show-paren-match-face ((t (:background "#52494e" :foreground "#f4f4ff"))))
 `(show-paren-mismatch-face ((t (:foreground "#f4f4ff" :background "#c73c3f"))))

 ;; Line highlighting
 `(highlight ((t (:background "#282828" :foreground nil))))
 `(highlight-current-line-face ((t (:background "#282828" :foreground nil))))

 ;; Calendar
 `(holiday-face ((t (:foreground "#f43841"))))

 ;; Info
 `(info-xref ((t (:foreground "#96a6c8"))))
 `(info-visited ((t (:foreground "#9e95c7"))))

 ;; AUCTeX
 `(font-latex-sectioning-5-face ((t (:foreground "#96a6c8" :bold t))))
 `(font-latex-bold-face ((t (:foreground "#95a99f" :bold t))))
 `(font-latex-italic-face ((t (:foreground "#95a99f" :italic t))))
 `(font-latex-math-face ((t (:foreground "#73c936"))))
 `(font-latex-string-face ((t (:foreground "#73c936"))))
 `(font-latex-warning-face ((t (:foreground "#f43841"))))
 `(font-latex-slide-title-face ((t (:foreground "#96a6c8")))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-darker)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; gruber-darker-theme.el ends here.
