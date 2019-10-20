(after [evil cider]
  (evil-define-key 'normal clojure-mode-map (kbd ", E") #'cider-eval-last-sexp)
  (evil-define-key 'visual clojure-mode-map (kbd ", e") #'cider-eval-region)
  (evil-define-key 'normal clojure-mode-map (kbd ", e") #'cider-eval-defun-at-point)
  )

(provide 'config-bindings-cider)
