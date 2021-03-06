;; Configuration

;;;; -------------------------------------
;;;; Bundle
(load (concat cabbage-bundle-dir "ergonomic/enlarge"))

(defun move-cursor-next-pane ()
  "Move cursor to the next pane."
  (interactive)
  (other-window 1))

(defun move-cursor-previous-pane ()
  "Move cursor to the previous pane."
  (interactive)
  (other-window -1))


(global-unset-key (kbd "C-b")) ; backward-char
(global-unset-key (kbd "C-f")) ; forward-char
(global-unset-key (kbd "C-p")) ; previous-line
(global-unset-key (kbd "C-n")) ; next-line
(global-unset-key (kbd "C-M-i"))
(cabbage-global-set-key (kbd "M-j") 'backward-char)
(cabbage-global-set-key (kbd "M-l") 'forward-char)
(cabbage-global-set-key (kbd "M-i") 'previous-line)
(cabbage-global-set-key (kbd "M-I") 'scroll-down)
(cabbage-global-set-key (kbd "M-C-i") 'scroll-down)
(cabbage-global-set-key (kbd "M-k") 'next-line)
(cabbage-global-set-key (kbd "M-K") 'scroll-up)
(cabbage-global-set-key (kbd "M-C-k") 'scroll-up)
(cabbage-global-set-key (kbd "M-L") 'end-of-line)
(cabbage-global-set-key (kbd "M-C-l") 'end-of-line)
(cabbage-global-set-key (kbd "M-J") 'beginning-of-line)
(cabbage-global-set-key (kbd "M-C-j") 'beginning-of-line)

(global-unset-key (kbd "M-b")) ; backward-word
(global-unset-key (kbd "M-f")) ; forward-word
(cabbage-global-set-key (kbd "M-u") 'backward-word)
(cabbage-global-set-key (kbd "M-o") 'forward-word)
(cabbage-global-set-key (kbd "M-U") 'backward-paragraph)
(cabbage-global-set-key (kbd "M-O") 'forward-paragraph)
(cabbage-global-set-key (kbd "M-C-o") 'forward-paragraph)
(cabbage-global-set-key (kbd "M-C-u") 'backward-paragraph)
(cabbage-global-set-key (kbd "M-b") 'pop-to-mark-command)

(global-unset-key (kbd "C-<backspace>")) ; backward-kill-word
(global-unset-key (kbd "M-d")) ; kill-word

(global-unset-key (kbd "C-d")) ; delete-char
(cabbage-global-set-key (kbd "M-d") 'delete-backward-char)
(cabbage-global-set-key (kbd "M-f") 'delete-char)
(cabbage-global-set-key (kbd "M-D") 'backward-kill-word)
(cabbage-global-set-key (kbd "M-F") 'kill-word)
(cabbage-global-set-key (kbd "<delete>") 'delete-char)

(global-unset-key (kbd "M-<")) ; beginning-of-buffer
(global-unset-key (kbd "M->")) ; end-of-buffer
(cabbage-global-set-key (kbd "M-h") 'beginning-of-buffer)
(cabbage-global-set-key (kbd "M-H") 'end-of-buffer)
(cabbage-global-set-key (kbd "M-RET") 'cabbage-next-line)

(global-unset-key (kbd "C-x 1")) ; delete-other-windows
(global-unset-key (kbd "C-x 0")) ; delete-window
(cabbage-global-set-key (kbd "M-1") 'cabbage-enlargement-enlarge)
(cabbage-global-set-key (kbd "M-C-1") 'cabbage-enlargement-restore)
(cabbage-global-set-key (kbd "M-0") 'delete-window)
(cabbage-global-set-key (kbd "M-2") 'split-window-vertically)
(cabbage-global-set-key (kbd "M-3") 'split-window-horizontally)
(cabbage-global-set-key (kbd "M-4") 'balance-windows)
(cabbage-global-set-key (kbd "M-5") 'delete-other-windows)
(cabbage-global-set-key (kbd "M-+") 'balance-windows)

(global-unset-key (kbd "M-x")) ; execute-extended-command
(cabbage-global-set-key (kbd "M-a") 'execute-extended-command)
(cabbage-global-set-key (kbd "M-q") 'shell-command)
(cabbage-global-set-key (kbd "M-e") 'cabbage-testing-execute-test)


(global-unset-key (kbd "C-d"))
(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "C-s"))
(global-unset-key (kbd "C-a"))
(cabbage-global-set-key (kbd "C-d") 'windmove-right)
(cabbage-global-set-key (kbd "C-s") 'windmove-down)
(cabbage-global-set-key (kbd "C-a") 'windmove-left)
(cabbage-global-set-key (kbd "C-w") 'windmove-up)
(cabbage-global-set-key (kbd "M-s") 'move-cursor-next-pane)
(cabbage-global-set-key (kbd "M-S") 'move-cursor-previous-pane)

(global-unset-key (kbd "C-/")) ; undo
(global-unset-key (kbd "C-_")) ; undo
(cabbage-global-set-key (kbd "M-z") 'undo)

(cabbage-global-set-key (kbd "M-SPC") 'set-mark-command)
(cabbage-global-set-key (kbd "M-S-SPC") 'mark-paragraph)

(global-unset-key (kbd "M-w")) ; kill-ring-save
(global-unset-key (kbd "C-y")) ; yank
(global-unset-key (kbd "M-y")) ; yank-pop
(global-unset-key (kbd "C-r")) ; yank-pop
(cabbage-global-set-key (kbd "M-x") 'kill-region)
(cabbage-global-set-key (kbd "M-c") 'kill-ring-save)
(cabbage-global-set-key (kbd "M-v") 'yank)
(cabbage-global-set-key (kbd "M-V") 'yank-pop)
(cabbage-global-set-key (kbd "C-r d") 'kill-rectangle)

(global-unset-key (kbd "C-x C-f")) ; find-file
(global-unset-key (kbd "C-x h")) ; mark-whole-buffer
(global-unset-key (kbd "C-x C-w")) ; write-file
(cabbage-global-set-key (kbd "C-o") 'find-file)
(cabbage-global-set-key (kbd "C-S-n") 'write-file)
(cabbage-global-set-key (kbd "C-S-a") 'mark-whole-buffer)

;; Help should search more than just commands
(cabbage-global-set-key (kbd "C-h a") 'apropos)

;; general
(cabbage-global-set-key (kbd "C-c e") 'eval-and-replace)
(cabbage-global-set-key (kbd "C-x C-m") 'execute-extended-command)
(cabbage-global-set-key (kbd "C-c C-m") 'execute-extended-command)
(cabbage-global-set-key (kbd "M-r") 'replace-string)
(cabbage-global-set-key [C-return] 'cabbage-duplicate-line)
(cabbage-global-set-key (kbd "C-$") 'cabbage-kill-buffer)
(cabbage-global-set-key (kbd "C-c i") 'indent-buffer)
(cabbage-global-set-key (kbd "C-c n") 'cabbage-cleanup-buffer)
(cabbage-global-set-key (kbd "C-x C-b") 'ibuffer)

(cabbage-global-set-key (kbd "C-c C-k") 'cabbage-comment-or-uncomment-region-or-line)
(cabbage-global-set-key (kbd "C-c k") 'kill-compilation)
(cabbage-global-set-key (kbd "C-c w") 'remove-trailing-whitespace-mode)

;;;; Searching

;; Use regex searches by default.
(global-unset-key (kbd "C-M-r")) ;; isearch-backwards
(cabbage-global-set-key (kbd "C-f") 'isearch-forward-regexp)
(cabbage-global-set-key (kbd "C-*") 'isearch-forward-at-point)

;; File finding
(cabbage-global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(when (fboundp 'recentf-ido-find-file)
  (cabbage-global-set-key (kbd "C-x f") 'recentf-ido-find-file))
(cabbage-global-set-key (kbd "C-c r") 'revert-buffer)

;;;; isearch
(define-key isearch-mode-map (kbd "M-s") 'move-cursor-next-pane)
(define-key isearch-mode-map (kbd "M-v") 'isearch-yank-kill)
(define-key isearch-mode-map (kbd "M-w") 'isearch-query-replace)
(define-key isearch-mode-map (kbd "M-o") 'isearch-yank-word)
(define-key isearch-mode-map (kbd "M-l") 'isearch-yank-char)
(define-key isearch-mode-map (kbd "M-j") 'isearch-delete-char)
(define-key isearch-mode-map (kbd "M-u") 'isearch-delete-char)
(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)
;; TODO: find a suitable binding to use the search ring
;; (define-key isearch-mode-map (kbd "C-i") 'isearch-ring-retreat)
;; (define-key isearch-mode-map (kbd "C-k") 'isearch-ring-advance)
