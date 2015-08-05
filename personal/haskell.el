(prelude-require-package 'shakespeare-mode)
(prelude-require-package 'shm)

(add-hook 'haskell-mode-hook 'structured-haskell-mode)
(custom-set-variables
  '(haskell-process-type 'stack-ghci))
