(require 'prelude-programming)

(prelude-require-packages '(haskell-mode shm shakespeare-mode))

(eval-after-load 'haskell-mode
  '(progn
     (defun prelude-haskell-mode-defaults ()
       (subword-mode +1)
       (haskell-doc-mode)
       (structured-haskell-mode)
       (interactive-haskell-mode +1))

     (setq prelude-haskell-mode-hook 'prelude-haskell-mode-defaults)

     (add-hook 'haskell-mode-hook (lambda ()
                                    (run-hooks 'prelude-haskell-mode-hook)))))

(custom-set-variables '(haskell-process-type 'stack-ghci))
