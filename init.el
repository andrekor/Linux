(add-hook 'c-mode-common-hook
 (lambda()
    (local-set-key (kbd "C-c <right>") 'hs-show-block)
    (local-set-key (kbd "C-c <left>")  'hs-hide-block)
    (local-set-key (kbd "C-c <up>")    'hs-hide-all)
    (local-set-key (kbd "C-c <down>")  'hs-show-all)
    (hs-minor-mode t)))

;;Remove's the velkome screen
(setq inhibit-splash-screen t)

;;Shortcuts
(define-abbrev-table 'java-mode-abbrev-table '(
("psv" "public static void main(String[] args) {\n\n}" nil 0)
("sop" "System.out.println" nil 0)
("{" "{ }" nil 0)
))
(abbrev-mode 1)

(setq frame-title-format '("%b"))
(add-hook 'find-file-hook (lambda () (linum-mode 1)))

;;===== Set the background color ====
 ;; background to black, and foreground to white

(set-background-color "grey22")
(set-foreground-color "white")

;; ===== Set the highlight current line minor mode ===== 
 ;; In every buffer, the line which contains the cursor will be fully
 ;; highlighted
(global-hl-line-mode 1)

;;replace "yes or no" with y or n
(fset 'yes-or-no-p 'y-or-n-p)

(setq asm-comment-char ?#)

;; Use spaces rather than tabs
(setq-default indent-tabs-mode nil)

;; Resize buffers
(global-set-key (kbd "<M-left>")
(lambda () (interactive)
(shrink-window-horizontally 1)))
(global-set-key (kbd "<M-right>")
(lambda () (interactive)
(shrink-window-horizontally -1)))
(global-set-key (kbd "<M-up>")
(lambda () (interactive)
(shrink-window 1)))
(global-set-key (kbd "<M-down>")
(lambda () (interactive)
(shrink-window -1)))

;;Date and Time in statusbar
(setq display-time-day-and-date t
                display-time-24hr-format t)
             (display-time)


;;remove menubar
(tool-bar-mode 0)

;;remove scrollbar
(scroll-bar-mode 0)

