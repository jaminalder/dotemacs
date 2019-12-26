(after [evil cider]
  (evil-define-key 'normal clojure-mode-map (kbd ", E") #'cider-eval-last-sexp)
  (evil-define-key 'visual clojure-mode-map (kbd ", e") #'cider-eval-region)
  (evil-define-key 'normal clojure-mode-map (kbd ", e") #'cider-eval-defun-at-point))

(defun quil-eval-defn-and-redraw ()
  "Evaluates the current defun and redraws the static quil sketch"
  (interactive)
  (cider-eval-defun-at-point)
  (cider-interactive-eval "(.redraw staticart.core/staticart) nil nil nil"))

(defun cider-full-restart ()
  "quits and jacks in cider"
  (interactive)
  (cider-quit)
  (cider-jack-in-clj nil))

(global-set-key (kbd "<f8>") 'quil-eval-defn-and-redraw)
(global-set-key (kbd "<f9>") 'cider-full-restart)

(provide 'config-bindings-cider)
