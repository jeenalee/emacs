;; Start the emacs server, so that programs that need to open $EDITOR
;; open emacs.
(require 'server)
(setq server-socket-dir (format "/tmp/emacs%d" (user-uid)))
(server-start)

;; Scrolling settings
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

;; GIANT HACK: Emacs tries to build a function that doesn't exist,
;; called `tramp-tramp-file-p`
;; This hack creates that function, and set it to return `nil`.
(defun tramp-tramp-file-p (filename)
  nil)
