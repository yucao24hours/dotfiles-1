(quelpa 'migemo)

(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  (setq migemo-options '("-q" "--emacs"))

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (load-library "migemo")
  (migemo-init)
)

(setq migemo-command "cmigemo")
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
