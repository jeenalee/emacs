;; Only load and save desktops to the home dir.
(setq desktop-path (list (expand-file-name "~/")))
(setq desktop-dirname (expand-file-name "~/"))
(setq desktop-base-file-name ".emacs.desktop")
(add-hook 'auto-save-hook (lambda ()
                            (desktop-save-in-desktop-dir)))
(desktop-save-mode t)
