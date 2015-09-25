(add-hook 'elixir-mode-hook '(lambda ()
			       (local-set-key "\\t" 'elixir-mode-indent-line)
			       (make-local-variable 'default-tab-width)
			       (setq default-tab-width 2)
			       (setq indent-tabs-mode nil)
			       (local-set-key "\C-c\C-l" 'elixir-mode-iex)))
(add-to-list 'auto-mode-alist '("\\.ex$" . elixir-mode))
(add-to-list 'auto-mode-alist '("\\.exs$" . elixir-mode))
