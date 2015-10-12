;;; init-evil.el -- Evil mode setup

;;; Commentary:
;;; Some customization, mainly for letting evil mode to be more like vim.

;;; Code:
(use-package evil
  :bind ("C-z" . evil-local-mode)
  :config
  (setq-default evil-shift-width 2)
  ;; Swap ; and : in evil mode
  (bind-keys :map evil-normal-state-map
             (":" . evil-repeat-find-char)
             (";" . evil-ex))
  (bind-keys :map evil-visual-state-map
             (":" . evil-repeat-find-char)
             (";" . evil-ex))
  ;; jk to exit insert mode in evil-mode
  (key-seq-define evil-insert-state-map "jk" 'evil-normal-state)
  ;; ,q to close the current window in evil-mode
  (key-seq-define evil-normal-state-map ",q" 'delete-window)
  ;; indent entire file with ==
  (key-seq-define evil-normal-state-map "==" 'indent-file)
  ;; save file with ,s
  (key-seq-define evil-insert-state-map ",s" 'evil-save-buffer-and-goto-normal-state)
  (key-seq-define evil-normal-state-map ",s" 'save-buffer)
  :init
  (add-hook 'prog-mode-hook 'evil-local-mode)
  (add-hook 'find-file-hook 'evil-local-mode))
(use-package evil-anzu)
(use-package evil-commentary
  :config
  (evil-commentary-mode 1)
  :diminish evil-commentary-mode)
(use-package evil-exchange
  :commands (evil-exchange)
  :config
  (setq evil-exchange-key (kbd "gx"))
  :init
  (autoload 'evil-exchange "evil-exchange" nil t)
  (key-seq-define evil-visual-state-map "cx" 'evil-exchange)
  :defer t)
(use-package evil-indent-textobject)
(use-package evil-jumper
  :config
  (global-evil-jumper-mode 1))
(use-package evil-matchit
  :defer t
  :config
  (global-evil-matchit-mode 1))
(use-package evil-surround
  :config
  (global-evil-surround-mode 1))
(use-package evil-visualstar
  :config
  (global-evil-visualstar-mode t))

(defun evil-save-buffer-and-goto-normal-state ()
  "Save an evil mode buffer and get back to evil-normal-state."
  (interactive)
  (progn
    (evil-normal-state)
    (save-buffer)))

(defun indent-file ()
  "Indent the entire file."
  (interactive)
  (indent-region (point-min) (point-max)))

(provide 'init-evil)
;;; init-evil.el ends here
