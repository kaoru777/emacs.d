(require 'package)

(setq package-archives (append package-archives
       '(("melpa" . "http://melpa.org/packages/")
       ("gnu" . "http://elpa.gnu.org/packages/"))))

(package-initialize)
(package-refresh-contents) ;; updates all packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
  (setq use-package-always-ensure t)
;; (setenv "SHELL" "/bin/zsh")
(add-to-list 'auto-mode-alist '("zshrc$" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.zsh$" . sh-mode))

(load "server")
(unless (server-running-p) (server-start))

(setq
  inhibit-startup-screen t
  inhibit-startup-message t
  initial-scratch-message nil
  visible-bell t
  use-dialog-box nil)

(setq package-check-signature nil)

(setq large-file-warning-threshold nil)

(setq shell-command-switch "-ic")

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)
(setq-default line-spacing 0.3)
(set-frame-font "Comic Code 12")
(set-face-attribute 'default nil :height 120)
(save-place-mode t)

(add-to-list 'default-frame-alist '(height . 64))
(add-to-list 'default-frame-alist '(width . 128))

(setq-default
  indent-tabs-mode nil ;; use space instead of tabs
  tab-width 4 ;; make tabs 4 spaces wide
  fill-column 80)

(setq scroll-step 1
  scroll-conservatively 10000 ;; or most-positive-fixnum
  scroll-margin 3 ;; 10
  )

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(defalias 'yes-or-no-p 'y-or-n-p)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-arguments
   '("--ignore-dir" "test" "--ignore-dir" "*migrations*" "--ignore-dir" "node_modules" "--ignore-dir" "elpa" "--ignore-dir" "lib" "--ignore-dir" "build" "--ignore" "*.min.js" "--ignore" "*.min.css"))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(beacon-color "#cc6666")
 '(custom-safe-themes
   '("fe6b6d4be494bd23c360115ab703985b6366ab766800c9d9b960b0da113123e9" "09fcace336d09b96ef82209890c4503708c65f9d8ce020617327182ec559e6cd" "b7b9a74d248fdf304bc7207dc78c10b2fd632974e6f2d3d50ea4258859472581" "a53f00556ab4c81a0618ab6589053d9e351312d37d9c9cf544e0c8edac2b63ab" "0feb7052df6cfc1733c1087d3876c26c66410e5f1337b039be44cb406b6187c6" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "7675ffd2f5cb01a7aab53bcdd702fa019b56c764900f2eea0f74ccfc8e854386" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358"))
 '(fci-rule-color "#373b41")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(git-gutter:added-sign "+")
 '(git-gutter:deleted-sign "-")
 '(git-gutter:modified-sign "~")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(vterm eat yasnippet-snippets yasnippet rubocop robe yaml-mode inf-ruby flycheck dap-mode highlight-indent-guides dashboard devdocs sqlformat ace-window amx flx counsel-projectile counsel avy ivy helm-swoop helm-ag helm-projectile helm which-key web-mode web-beautify use-package-ensure-system-package ruby-hash-syntax ruby-compilation rspec-mode rainbow-delimiters projectile org-contrib moe-theme markdown-mode magit json-mode indent-guide hl-todo gruvbox-theme gnu-elpa-keyring-update fzf expand-region exec-path-from-shell dockerfile-mode docker-compose-mode csv-mode company ansible ag))
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(recentf-exclude
   '((expand-file-name package-user-dir)
     ".cache" "cache" "recentf" "COMMIT_EDITMSG\\'"))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-types '((perspective) (perspective)))
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:added ((((class color) (min-colors 89)) (:weight normal :foreground "#859900" :background "#fdf6e3"))))
 '(git-gutter:deleted ((((class color) (min-colors 89)) (:weight normal :foreground "#dc322f" :background "#fdf6e3"))))
 '(git-gutter:modified ((((class color) (min-colors 89)) (:weight normal :foreground "#268bd2" :background "#fdf6e3")))))


(setq-default
;; debug-on-error t ;; backtrace
;; debug-on-quit t ;; to debug when C-g is pressed
 auto-window-vscroll nil
 confirm-kill-emacs 'yes-or-no-p
 cursor-in-non-selected-windows nil
 mouse-yank-at-point t
 tooltip-mode nil
 ns-use-srgb-colorspace nil
 select-enable-clipboard t
 sentence-end-double-space nil
 show-trailing-whitespace nil
 scroll-bar-mode nil
 uniquify-buffer-name-style 'forward
 tool-bar-mode nil
 window-combination-resize t
 backup-directory-alist '(("." . "~/.emacs.d/backups"))
 x-stretch-cursor t)
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))
;; Tramp password expire
(setq password-cache-expiry nil)
(global-hl-line-mode +1)
(line-number-mode +1)
(column-number-mode t)
(size-indication-mode t)

(global-set-key (kbd "M-r")     'rename-file)
(setq ns-use-native-fullscreen nil) ; Not Lion style
(bind-key "<s-return>" 'toggle-frame-fullscreen)
(setq ns-function-modifier 'hyper)


;; Show path if names are same
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(global-visual-line-mode 1)
(when (version<= "26.0.50" emacs-version )
    (global-display-line-numbers-mode))

(setq vc-follow-symlinks nil)

;; http://elpa.gnu.org/packages/gnu-elpa-keyring-update.html
(use-package gnu-elpa-keyring-update)

;; keep packages up to date
;; (use-package auto-package-update
;;   :config
;;   (setq auto-package-update-delete-old-versions t)
;;   (setq auto-package-update-hide-results t)
;;   (auto-package-update-maybe))

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

(use-package use-package-ensure-system-package)

;; https://www.emacswiki.org/emacs/SqlMode
(defun my-sql-save-history-hook ()
  (let ((lval 'sql-input-ring-file-name)
        (rval 'sql-product))
    (if (symbol-value rval)
        (let ((filename 
               (concat "~/.emacs.d/sql/"
                       (symbol-name (symbol-value rval))
                       "-history.sql")))
          (set (make-local-variable lval) filename))
      (error
       (format "SQL history will not be saved because %s is nil"
               (symbol-name rval))))))

(add-hook 'sql-interactive-mode-hook 'my-sql-save-history-hook)

;; https://github.com/Wilfred/ag.el
(use-package ag
  :config
  (setq-default ag-reuse-window 't)
  (setq-default ag-reuse-buffers 't)
  (global-set-key "\C-c\C-g" 'ag-project)
  (customize-set-variable 'ag-arguments
                          (quote
                           ("--ignore-dir" "test" "--ignore-dir" "*migrations*" "--ignore-dir" "node_modules" "--ignore-dir" "elpa" "--ignore-dir" "lib" "--ignore-dir" "build" "--ignore" "*.min.js" "--ignore" "*.min.css")
                           ))
  )

;; https://github.com/bbatsov/projectile
(use-package projectile
  :diminish projectile-mode
  :commands (projectile-mode projectile-switch-project)
  :bind (("C-c p p" . projectile-switch-project)
         ("C-c p s s" . projectile-ag)
         ("C-c p s r" . projectile-ripgrep))
  :config
  (setq projectile-keymap-prefix (kbd "C-c p"))
  (projectile-global-mode t)
  (setq projectile-enable-caching t)
  (setq projectile-switch-project-action 'projectile-dired))


(use-package exec-path-from-shell
  :if (memq window-system '(mac ns x))
  :ensure t
  :init
  (setq exec-path-from-shell-variables '("PATH"))
  :config
  (exec-path-from-shell-initialize))

(use-package which-key
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config (which-key-mode))

;; https://magit.vc
;; https://github.com/magit/magit
;; http://whattheemacsd.com/setup-magit.el-01.html
(use-package magit
  :defer t
  :bind (("C-c g" . magit-status)
         ("C-c G" . magit-dispatch)
         ("C-c m l" . magit-log-buffer-file)
         ("C-c m b" . magit-blame))
  :config
  (setq magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
  (setq magit-diff-refine-hunk t))
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

;;(use-package magit-todos)

(use-package robe
  :ensure t
  :bind ("C-M-." . robe-jump)

  :init
  (add-hook 'ruby-mode-hook 'robe-mode)

  :config
  (defadvice inf-ruby-console-auto
    (before activate-rvm-for-robe activate)
    (rvm-activate-corresponding-ruby)))

(use-package company
  :no-require t
  :config
  (push 'company-robe company-backends))


;; https://github.com/tarsius/hl-todo
(use-package hl-todo
  :config
  (setq hl-todo-highlight-punctuation ":")
  (global-hl-todo-mode))


;; https://github.com/kuanyui/moe-theme.el
(use-package moe-theme
  :config (load-theme 'moe-light))

;; https://github.com/bbatsov/solarized-emacs
;; (use-package solarized-theme)

;; (use-package gruvbox-theme
  ;; :config (load-theme 'gruvbox-dark-soft t))

;; https://github.com/vutran1710/Ayu-Theme-Emacs
;;(use-package ayu-theme
;;  :config (load-theme 'ayu-dark t))

;; https://github.com/purcell/color-theme-sanityinc-tomorrow
;; (use-package color-theme-sanityinc-tomorrow
;;   :config (load-theme 'sanityinc-tomorrow-day))

;; https://github.com/Fanael/rainbow-delimiters
(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'yaml-mode-hook #'rainbow-delimiters-mode))

(use-package prog-mode
  :ensure nil
  :hook ((prog-mode . rainbow-delimiters-mode)))

;; https://github.com/k1LoW/emacs-ansible
(use-package ansible)

;; https://github.com/jrblevin/markdown-mode
(use-package markdown-mode
    :mode (("README\\.md\\'" . gfm-mode)
    ("\\.md\\'" . markdown-mode)
    ("\\.markdown\\'" . markdown-mode))
  :init
  (setq markdown-asymmetric-header t)
  :config
  (add-hook 'markdown-mode-hook 'auto-fill-mode))

;; https://github.com/bling/fzf.el
(use-package fzf
  :commands fzf/start
  :bind
  (("C-c f" . fzf)))

;; web
(use-package web-mode
  :mode (
         ("\\.tpl\\.php$" . web-mode)
         ("\\.php$" .  web-mode)
         ("\\.html?$" .  web-mode)
         ("\\.mustache$" .  web-mode)
         ("\\.css$". web-mode)
         ("\\.erb$". web-mode)
         ("\\.jsx$". web-mode)
         ("\\.tsx$". web-mode)
         ("\\.djhtml$" .  web-mode))
  :hook (web-mode . dg/web-mode-hook)
  :config
  (defun dg/web-mode-hook()))

(use-package web-beautify)

;; ruby
(use-package enh-ruby-mode
  :disabled t
   :mode   (("\\.rb$" . ruby-mode)
	   ("Capfile$" . ruby-mode)
	   ("Gemfile$" . ruby-mode)
	   ("[Rr]akefile$" . ruby-mode))
  :config
  (defvaralias 'ruby-indent-level 'tab-width))

(use-package ruby-end
  :disabled t
  :config
  (add-hook 'ruby-mode-hook 'ruby-end-mode))

(use-package ruby-hash-syntax)

;; (use-package goto-gem)

(use-package rspec-mode)

(use-package inf-ruby)

(use-package ruby-compilation)

;; Markdown
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :bind ("C-c C-e" . markdown-export-and-preview)
  :config (setq markdown-command "kramdown"))

(use-package dockerfile-mode
  :mode ("Dockerfile\\'" . dockerfile-mode))

;; csv
(use-package csv-mode
  :mode ("\\.csv\\'"))

;; lisp
(add-to-list 'auto-mode-alist '("emacs$" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy))



;; yaml
(use-package yaml-mode
    :mode (("\\.yaml$" . yaml-mode))
    )

;; https://github.com/meqif/docker-compose-mode
(use-package docker-compose-mode)

;; json
(use-package json-mode
  :mode ("\\.json\\'"))

;; https://github.com/zk-phi/indent-guide
(use-package indent-guide
  :config
  (setq indent-guide-delay 0.1)
  (setq indent-guide-recursive nil)
  ;; (set-face-foreground 'indent-guide-face "cyan")
  (add-hook 'prog-mode-hook 'indent-guide-mode))

(use-package expand-region
  :bind ("M-m" . er/expand-region))

(use-package tramp)


;; reload files if they have been modified externally
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

;; (use-package bug-hunter)

(use-package vterm)

(use-package org
  :ensure org-contrib)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (C . t)
   (calc . t)
   (latex . t)
   (java . t)
   (ruby . t)
   (lisp . t)
   (scheme . t)
   (shell . t)
   (js . t)
   (ledger . t)))

(defun my-org-confirm-babel-evaluate (lang body)
  "Do not confirm evaluation for these languages."
  (not (or (string= lang "C")
           (string= lang "java")
           (string= lang "python")
           (string= lang "emacs-lisp"))))
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

(setq org-src-fontify-natively t
      org-src-window-setup 'current-window
      org-src-strip-leading-and-trailing-blank-lines t
      org-src-preserve-indentation t
      org-src-tab-acts-natively t)

(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))
(add-to-list 'org-structure-template-alist '("sh" . "src sh"))
(add-to-list 'org-structure-template-alist '("md" . "src markdown"))
(add-to-list 'org-structure-template-alist '("gq" . "src graphql"))

;; (use-package pandoc)
;; (use-package ox-pandoc
;;   :no-require t
;;   :defer 10)

(setq org-latex-pdf-process (list "latexmk -pdf %f"))

(use-package helm
  :diminish helm-mode
  :bind (("C-c h" . helm-command-prefix)
         ("C-x b" . helm-mini)
         ("C-`" . helm-resume)
         ("C-c o" . helm-occur)
         ("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x C-r" . helm-recentf))
  :config
  (setq helm-locate-command "mdfind -interpret -name %s %s"
        helm-ff-newfile-prompt-p nil
        helm-M-x-fuzzy-match t)
  (setq helm-completion-style 'helm-fuzzy)
  (helm-mode))

(use-package helm-projectile
  :after helm-mode
  :commands helm-projectile
  :bind ("C-c p h" . helm-projectile))

(use-package helm-ag
  :after helm-mode)

(use-package helm-swoop
  :after helm-mode
  :bind ("H-w" . helm-swoop))

(use-package ivy
  :diminish (ivy-mode . "")
  :bind
  (:map ivy-mode-map
   ("C-'" . ivy-avy))
  :config
  (ivy-mode 1)
  (avy-setup-default)
  ;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
  (setq ivy-use-virtual-buffers t)
  ;; number of result lines to display
  (setq ivy-height 10)
  ;; Show candidate index and total count
  (setq ivy-count-format "(%d/%d) ")
  ;; no regexp by default
  (setq ivy-initial-inputs-alist nil)
  ;; configure regexp engine.
  (setq ivy-re-builders-alist
	;; allow input not in order
        '((t   . ivy--regex-ignore-order))))

(use-package avy
  :bind ("C-S-s" . avy-goto-char))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x C-r" . counsel-recentf)
         ("C-h v" . counsel-describe-variable)
         ("C-h f" . counsel-describe-function)))

(use-package counsel-projectile
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (counsel-projectile-mode)
  (setq counsel-projectile-switch-project-action 'dired))

(use-package swiper
  :bind (("C-c s" . swiper)))


;; Enhance fuzzy matching
(use-package flx)
;; Enhance M-x
(use-package amx)


;; https://github.com/astoff/devdocs.el
(use-package devdocs
  :ensure t)
(global-set-key (kbd "C-h D") 'devdocs-lookup)


(defun bjm/kill-this-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer))
  (delete-window))

(global-set-key (kbd "C-x k") 'bjm/kill-this-buffer)

(use-package ace-window
  :ensure t
  :init (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)
              aw-char-position 'left
              aw-ignore-current nil
              aw-leading-char-style 'char
              aw-scope 'frame)
  :bind (("M-o" . ace-window)
         ("M-O" . ace-swap-window)))

(defun my-kill-this-buffer ()
  (interactive)
  (catch 'quit
    (save-window-excursion
      (let (done)
        (when (and buffer-file-name (buffer-modified-p))
          (while (not done)
            (let ((response (read-char-choice
                             (format "Save file %s? (y, n, d, q) " (buffer-file-name))
                             '(?y ?n ?d ?q))))
              (setq done (cond
                          ((eq response ?q) (throw 'quit nil))
                          ((eq response ?y) (save-buffer) t)
                          ((eq response ?n) (set-buffer-modified-p nil) t)
                          ((eq response ?d) (diff-buffer-with-file) nil))))))
        (kill-buffer (current-buffer))))))

(use-package sqlformat
    :ensure t
    :defer t
    :config
    (setq sqlformat-command 'pgformatter)
    ;; (setq sqlformat-args '("-s4" "-g")))
    ;; (setq sqlformat-command 'sqlfluff)    
    :commands (sqlformat sqlformat-buffer sqlformat-region)
    :hook (sql-mode . sqlformat-on-save-mode)
    :bind
    (:map sql-mode-map ("C-c b" . sqlformat-buffer)))

;; https://github.com/emacs-dashboard/emacs-dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))


(use-package highlight-indent-guides
  :ensure t
  :delight highlight-indent-guides-mode
  :init
  (setq highlight-indent-guides-method 'character
        ;; default is \x2502 but it is very slow on Mac
        highlight-indent-guides-character ?\xFFE8
        highlight-indent-guides-responsive 'top))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; gem install pry pry-doc
(use-package robe
  :ensure t
  :bind ("C-M-." . robe-jump)

  :init
  (add-hook 'ruby-mode-hook 'robe-mode)

  :config
  (defadvice inf-ruby-console-auto
    (before activate-rvm-for-robe activate)
    (rvm-activate-corresponding-ruby)))

(use-package ruby-mode
  :ensure t
  :mode "\\.rb\\'"
  :mode "Rakefile\\'"
  :mode "Gemfile\\'"
  :mode "Berksfile\\'"
  :mode "Vagrantfile\\'"
  :interpreter "ruby"

  :init
  (setq ruby-indent-level 2
        ruby-indent-tabs-mode nil)
  (add-hook 'ruby-mode 'superword-mode)

  :bind
  (([(meta down)] . ruby-forward-sexp)
   ([(meta up)]   . ruby-backward-sexp)
   (("C-c C-e"    . ruby-send-region))))  ;; Rebind since Rubocop uses C-c C-r

(use-package inf-ruby
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode))

(use-package rubocop
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'rubocop-mode)
  :diminish rubocop-mode)


(use-package yasnippet
  :ensure t
  :config
  (validate-setq
   yas-verbosity 1
   yas-wrap-around-region t)

  (with-eval-after-load 'yasnippet
    (validate-setq yas-snippet-dirs '(yasnippet-snippets-dir)))

  (yas-reload-all)
  (yas-global-mode))

(use-package yasnippet-snippets
  :ensure t)

(use-package eat
  :ensure t)

