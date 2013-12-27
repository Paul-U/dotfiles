;; ------------------------------------------------------------------------
;; @ Font

;; abcdefghijklmnopqrstuvwxyz 
;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
;; `1234567890-=\[];',./
;; ~!@#$%^&*()_+|{}:"<>?
;;
;; 壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五
;; 123456789012345678901234567890123456789012345678901234567890
;; ABCdeＡＢＣｄｅ
;;
;; ┌─────────────────────────────┐
;; │　　　　　　　　　　　　　罫線                            │
;; └─────────────────────────────┘

(defun apply-font-settings ()
  "(defun apply-font-settings ()
  \"~~~~\"
  (interactive)
  (set-frame-font \"Inconsolata:pixelsize=16:spacing=0\")
  (set-face-font \'variable-pitch \"Inconsolata\")
  (set-fontset-font (frame-parameter nil 'font)
		    'japanese-jisx0208
		    '(\"Takaoゴシック\" . \"unicode-bmp\")
		    )
  )
"
  (interactive)
  (set-frame-font "Inconsolata:pixelsize=16:spacing=0")
  (set-face-font 'variable-pitch "Inconsolata")
  (set-fontset-font (frame-parameter nil 'font)
		    'japanese-jisx0208
		    '("Takaoゴシック" . "unicode-bmp")
		    )
  )

(when (window-system) (apply-font-settings))