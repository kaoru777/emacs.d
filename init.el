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
(set-frame-font "Monaco 12" nil t)
(set-face-attribute 'default nil :height 120)
(save-place-mode t)

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
   '("a53f00556ab4c81a0618ab6589053d9e351312d37d9c9cf544e0c8edac2b63ab" "0feb7052df6cfc1733c1087d3876c26c66410e5f1337b039be44cb406b6187c6" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "7675ffd2f5cb01a7aab53bcdd702fa019b56c764900f2eea0f74ccfc8e854386" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358"))
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
   '(paredit moe-theme rust-mode counsel ivy helm lua-mode which-key web-mode web-beautify vterm use-package-ensure-system-package tide slime ruby-hash-syntax ruby-compilation rspec-mode rainbow-delimiters python-pytest py-autopep8 prettier-js pipenv phpunit perspective paradox org-contrib omnisharp ob-sql-mode ob-restclient magit latex-preview-pane indent-guide hl-todo helm-swoop helm-projectile helm-ag gruvbox-theme graphql-mode gnu-elpa-keyring-update gdscript-mode fzf flycheck-rust flycheck-pycheckers flycheck-pos-tip flycheck-phpstan flycheck-elixir flycheck-checkbashisms flycheck-cask flx expand-region exec-path-from-shell ess elpy dockerfile-mode docker-compose-mode docker csv-mode counsel-projectile cargo ansible amx alchemist ag ace-window))
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(recentf-exclude
   '((expand-file-name package-user-dir)
     ".cache" "cache" "recentf" "COMMIT_EDITMSG\\'") t)
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
  (setq paradox-github-token "77941fe252414a944b1485d2d8cc303b61a4296c")
  (setq paradox-execute-asynchronously t)
  (setq paradox-automatically-star t)


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

;; don't truncate long sql lines
;; https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(global-subword-mode 1)
(set-locale-environment "en_US.UTF-8")
(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))
(show-paren-mode 1)
(electric-pair-mode 1)
(defun display-startup-echo-area-message ()
  (message ""))

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

;; https://github.com/Malabarba/paradox/
(use-package paradox
  :config
  (paradox-enable))

;; C-q < inserts <
;; (use-package smartparens-config
;;   :ensure smartparens
;;   :config (progn (show-smartparens-global-mode t)))

;; https://github.com/Fuco1/smartparens
;; (use-package smartparens
;;   :hook
;;   (after-init . smartparens-global-mode)
;;   :config
;;   (require 'smartparens-config)
;;   (sp-pair "=" "=" :actions '(wrap))
;;   (sp-pair "+" "+" :actions '(wrap))
;;   (sp-pair "<" ">" :actions '(wrap))
;;   (sp-pair "$" "$" :actions '(wrap)))

;; (add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
;; (add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)

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
  :config
  (setq exec-path-from-shell-variables '("PATH"))
  (exec-path-from-shell-initialize))

(use-package which-key
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config (which-key-mode))

;; ;; https://github.com/sabof/org-bullets
;; (use-package org-bullets
;;   :config
;;   (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; https://github.com/nikclayton/ob-sql-mode
(use-package ob-sql-mode
  :config
  (require 'ob-sql-mode))

;; https://github.com/flycheck/flycheck
(use-package flycheck
  :defer t
  :init (global-flycheck-mode))

(use-package flycheck-rust
  :defer t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
  (with-eval-after-load 'flycheck (flycheck-pos-tip-mode)))

(use-package flycheck-checkbashisms
  :defer t
  :config
  (with-eval-after-load 'flycheck (flycheck-pos-tip-mode)))

(use-package flycheck-pycheckers
  :defer t
  :config
  (with-eval-after-load 'flycheck (flycheck-pos-tip-mode)))

(use-package flycheck-phpstan
  :defer t
  :config
  (with-eval-after-load 'flycheck (flycheck-pos-tip-mode)))

(use-package flycheck-cask)

(use-package flycheck-pos-tip
  :defer t
  :config
  (with-eval-after-load 'flycheck (flycheck-pos-tip-mode)))


(use-package flycheck-elixir
  :defer t
  :config
  (with-eval-after-load 'flycheck (flycheck-pos-tip-mode)))

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

(use-package company
    :defer t
    :init (global-company-mode)
    :bind
    (:map company-active-map
    ("C-n" . company-select-next)
    ("C-p" . company-select-previous)
    ("<tab>" . company-complete-common-or-cycle)
    :map company-search-map
    ("C-p" . company-select-previous)
    ("C-n" . company-select-next))
    :config
    (setq company-tooltip-align-annotations t
          company-idle-delay 0.1
          ;; min prefix of 2 chars
          company-minimum-prefix-length 2
          company-require-match nil))


;; python
(use-package elpy
  :init
  (setq elpy-modules '(elpy-module-company
                       elpy-module-eldoc
                       elpy-module-flymake
                       elpy-module-pyvenv
                       elpy-module-yasnippet
                       elpy-module-sane-defaults))
  (elpy-enable))

;; https://github.com/paetzke/py-autopep8.el
(use-package py-autopep8
  :after elpy
  :hook (elpy-mode . py-autopep8-enable-on-save))

(use-package python-pytest)

(use-package pipenv
  :hook (python-mode . pipenv-mode)
  :init
  (setq
   pipenv-projectile-after-switch-function
   #'pipenv-projectile-after-switch-extended))

(use-package prettier-js
  :config
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook #'(lambda ()
                               (enable-minor-mode
                                '("\\.jsx?\\'" . prettier-js-mode))))
  )
(setq prettier-js-args '(
  "--trailing-comma" "none"
  "--bracket-spacing" "true"
  "--single-quote" "true"
  "--no-semi" "true"
  "--jsx-single-quote" "true"
  "--jsx-bracket-same-line" "true"
  "--print-width" "100"))
;; (use-package pyvenv)

;;(use-package pyenv-mode
;;  :config
;;  (pyenv-mode))

;; (use-package pip-requirements)

;; https://github.com/tarsius/hl-todo
(use-package hl-todo
  :config
  (setq hl-todo-highlight-punctuation ":")
  (global-hl-todo-mode))

;; ;; https://github.com/Malabarba/aggressive-indent-mode
;; (use-package aggressive-indent
;;   :init
;;   (global-aggressive-indent-mode))
;;   ;; (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
;;   ;; (add-hook 'lisp-mode-hook #'aggressive-indent-mode)
;;   ;; (add-hook 'racket-mode-hook #'aggressive-indent-mode))


;; https://github.com/kuanyui/moe-theme.el
(use-package moe-theme
 :config (load-theme 'moe-light))

;; https://github.com/bbatsov/solarized-emacs
;; (use-package solarized-theme)

(use-package gruvbox-theme)
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

;; https://github.com/Silex/docker.el
(use-package docker
  :bind ("C-c d" . docker))

;; https://github.com/k1LoW/emacs-ansible
(use-package ansible)

;; https://github.com/jsinglet/latex-preview-pane
(use-package latex-preview-pane)

;; https://github.com/jrblevin/markdown-mode
(use-package markdown-mode
    :mode (("README\\.md\\'" . gfm-mode)
    ("\\.md\\'" . markdown-mode)
    ("\\.markdown\\'" . markdown-mode))
  :init
  (setq markdown-asymmetric-header t)
  :config
  (add-hook 'markdown-mode-hook 'auto-fill-mode))

;; https://github.com/dgutov/diff-hl
;; (use-package diff-hl)

;; https://github.com/emacs-ess/ESS
;; https://ess.r-project.org
(use-package ess)

;; elixir
(use-package alchemist)

(use-package elixir-mode)

;; php
;; (use-package php-mode
;;   :commands php-mode
;;   :mode "\\.php$"
;; )

(use-package phpunit)

;; typescript
(use-package tide
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

;; https://github.com/bling/fzf.el
(use-package fzf
  :commands fzf/start
  :bind
  (("C-c f" . fzf)))

;; ;; https://github.com/pashky/restclient.el
;; (use-package restclient
;;   :mode (
;;         ("\\.restclient\\'" . restclient-mode)
;;         ("\\.http\\'" . restclient-mode)
;;          ))

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


(use-package slime)

;; emacs lisp
;; (use-package elisp-mode
;;   :bind (("C-c C-f" . find-function)
;;          ("C-c C-v" . find-variable)))

;; latex
;; (setq TeX-PDF-mode t
;;     TeX-parse-self t
;;     TeX-newline-function 'reindent-then-newline-and-indent)
;; 
;; (eval-after-load "tex"
;;     '(setcdr (assoc "LaTeX" TeX-command-list)
;;          '("%`%l%(mode) -shell-escape%' %t"
;;               TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")))
;; 
;; (add-hook 'LaTeX-mode-hook
;;     (lambda ()
;;         (TeX-fold-mode 1)
;;         (auto-fill-mode)
;;         (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t"
;;                                             TeX-run-TeX nil t))))

;; haskell
(use-package haskell-mode
  :disabled t
  :config
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indent))

;; sql
(setq sql-mysql-options '("--local-infile"))

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

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
;; clojure
;; (use-package clojure-mode
;;   :mode "\\.clojure")

;; ;; (defvar my:jupyter_location (executable-find "jupyter"))
;; ;; (defvar my:jupyter_start_dir "~/")
;; ;; (if (and my:jupyter_location
;; ;;          my:jupyter_start_dir)
;; ;;     (use-package ein
;; ;;       :commands (ein:jupyter-server-start)
;; ;;       :defer 5
;; ;;       :config
;; ;;       (require 'ein)
;; ;;       ;; (require 'ein-notebook)
;; ;;       ;; (require 'ein-subpackages)
;; ;;       (defvar my-found-ein-server nil)
;; ;;       (dolist (my-current-process (process-list))
;; ;;         (when (string-match "EIN: Jupyter*" (process-name my-current-process))
;; ;;           (setq my-found-ein-server t))
;; ;;         )
;; ;;       (when (not my-found-ein-server)
;; ;;         (ein:jupyter-server-start my:jupyter_location my:jupyter_start_dir))
;; ;;       )
;; ;;   )
;; 

(use-package expand-region
  :bind ("M-m" . er/expand-region))

(use-package tramp)

;; https://github.com/abo-abo/ace-window
(use-package ace-window
  :config
  (setq aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))
  (ace-window-display-mode)
  :bind ("s-o" . ace-window))

;; https://github.com/davazp/graphql-mode
;; Once the installation is completed, any file with a .graphql extension will be loaded with this mode.
(use-package graphql-mode
  :mode (
         ("\\.q\\'" . graphql-mode)
         ("\\.graphql\\'" . graphql-mode)
         ))

;; reload files if they have been modified externally
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

;; (use-package bug-hunter)

(use-package vterm)

;; (use-package auctex
;; 	:defer t
;; 	:config
;; 	(setq TeX-auto-save t)
;; 	(setq TeX-parse-self t)
;; 	(setq TeX-save-query nil))

;; (use-package tex-mode
;;   :ensure nil
;;   :hook (TeX-mode . latex-electric-env-pair-mode))

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
   (sql-mode . t)
   (sqlite . t)
   (sql . t)
   (js . t)
   (restclient . t)
   (ledger . t)))

(defun my-org-confirm-babel-evaluate (lang body)
  "Do not confirm evaluation for these languages."
  (not (or (string= lang "C")
           (string= lang "java")
           (string= lang "python")
           (string= lang "emacs-lisp")
           (string= lang "sql-mode")
           (string= lang "sql")
           (string= lang "sqlite"))))
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
  :init
  (require 'helm-config)
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

(use-package perspective
  :config
  (persp-mode))

;; rust
(use-package rust-mode)
(setq rust-format-on-save t)

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; Enhance fuzzy matching
(use-package flx)
;; Enhance M-x
(use-package amx)

(use-package lua-mode
  :ensure t
  :mode (("\\.lua\\'" . lua-mode))
  :config
  (add-hook 'lua-mode-hook #'company-mode))

(use-package gdscript-mode)

;; (use-package avy
;; :ensure t
;; :bind ("M-s" . avy-goto-char))

(use-package avy
:ensure t
:config
(avy-setup-default))

(use-package paredit
  :ensure t)

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

