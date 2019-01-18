;;; package --- Summary
;;; Commentary:
;;;
;;; Code:
(prelude-require-package 'cquery)

(require 'prelude-programming)
(require 'lsp-mode)
(require 'lsp-ui)
(require 'cquery)


(setq cquery-executable "/usr/bin/cquery")
(with-eval-after-load 'projectile
  (setq projectile-project-root-files-top-down-recurring
        (append '("compile_commands.json"
                  ".cquery")
                projectile-project-root-files-top-down-recurring)))
(with-eval-after-load 'projectile
  (setq projectile-project-root-files-bottom-up
        (append '("compile_commands.json"
                  ".cquery")
                projectile-project-root-files-bottom-up)))

(defun cquery//enable ()
  (c-set-style "stroustrup")
  (lsp)
  (user-error nil))

(add-hook 'c-mode-hook 'cquery//enable)
(add-hook 'c++-mode-hook 'cquery//enable)

(provide 'prelude-cquery)
;;; prelude-cquery.el ends here
