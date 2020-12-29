;; customize go-mode
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (lsp)
            (global-set-key (kbd "C-x t 0") 'treemacs-select-window)
            (remove-hook 'flymake-diagnostic-functions 'flymake-proc-legacy-flymake)
            (setenv "GOPROXY" "https://goproxy.io")))
