(deftheme gruber-darker
  "Gruber Darker color theme for Emacs by Jason Blevins.
A darker variant of the Gruber Dark theme for BBEdit by John
Gruber.")

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
