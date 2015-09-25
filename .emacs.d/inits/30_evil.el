;; =====================================================================
;;  ________  ____   ____  _____  _____
;; |_   __  ||_  _| |_  _||_   _||_   _|
;;   | |_ \_|  \ \   / /    | |    | |
;;   |  _| _    \ \ / /     | |    | |   _
;;  _| |__/ |    \ ' /     _| |_  _| |__/ |
;; |________|     \_/     |_____||________|
;; =====================================================================
;; Turn off IME when exiting insert state
;(add-hook 'evil-normal-state-entry-hook 'mac-change-language-to-us)

(setq evil-want-C-u-scroll t
      Evil-search-module 'evil-search
      evil-ex-search-vim-style-regexp t)

(evil-mode 1)

;; Enable Emacs key-bindings on insert state
(setcdr evil-insert-state-map nil)

;; ESC to exit insert state
(define-key evil-insert-state-map [escape] 'evil-normal-state)

;; evil-surround
(global-evil-surround-mode 1)
;; evil-matchit
(global-evil-matchit-mode 1)
;; evil-search-highlight-persist
(global-evil-search-highlight-persist t)
