;;; .emacs --- 
;; 
;; Description: 
;; Author: David Hou(侯英伟)
;; Created: 三 4月 26 10:17:28 2017 (+0800)
;; Last-Updated: 二 12月 31 20:55:07 2019 (+0800)
;;           By: David(侯英伟)
;;     Update #: 134
;; URL:http://125.223.127.17:1118/wordpress/index.php/author/yingwei1990/ 

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq frame-title-format "%b - David@HEU")


;; For my language code setting (UTF-8)
(setq current-language-environment "UTF-8")
(setq default-input-method "chinese-py")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(inhibit-startup-screen t)
 '(ocus-enabled-utils
   '(org-cdlatex clean-headline-space clean-paragraph-space align-babel-table smart-truncate-lines show-babel-image visual-line-mode) t)
 '(package-check-signature 'allow-unsigned)
 '(package-enable-at-startup t)
 '(package-selected-packages
   '(ahungry-theme airline-themes auto-complete-auctex auto-complete-c-headers auto-complete-clang auto-complete gnu-elpa-keyring-update org org2blog auctex random-splash-image htmlize yasnippet-bundle org-ac org-pdfview org-preview-html auto-package-update auto-install auto-org-md chess nlinum ox-latex-chinese org-chinese-utils markdown-preview-mode markdown-mode header2 cdlatex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (package-initialize)
(require 'package)
(add-to-list 'package-archives '("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))
(add-to-list 'package-archives '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
(add-to-list 'package-archives '("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/"))
(add-to-list 'package-archives '("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))
;; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;                          ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
;;                          ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
;; (package-initialize) ;; You might already have this line
;; (package-initialize)
;; (require 'package)
;; (add-to-list 'package-archives
;; 	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; (add-to-list 'package-archives'
;; 	     ("elpa" . "http://tromey.com/elpa/") t)
;; (add-to-list 'package-archives'
;; 	     ("melpa" . "http://melpa.milkbox.net/packages/") t)

;;自动补全
;; change the path to where your dict fold locates,
;; and note that the trailing '/' must present.
;; (add-to-list 'load-path "/home/David/.emacs.d/elpa/auto-complete-20170125.245/")
(require 'auto-complete)
(require 'auto-complete-config)
(require 'auto-complete-clang)  
(ac-config-default)
;; (setq ac-auto-start t)
;; (setq ac-quick-help-delay 0.5)
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)

;;显示匹配的括号
(show-paren-mode t) 

;;光标显示为一竖线
(setq-default cursor-type 'bar)

;; ;;鼠标指针避光标
;; (mouse-avoidance-mode 'animate)
;; (mouse-avoidance-mode 'cat-and-mouse)

;;开启语法高亮。
(global-font-lock-mode 1)

;;自动补全
;; (add-to-list 'load-path "~/.emacs.d/plugins")
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/ac-dict")
;; (ac-config-default)

;;设置个人信息
(setq user-full-name "David(侯英伟)")
(setq user-mail-address "yingwei.1990@hotmail.com")

;;模板调用
;; (require 'yasnippet-bundle) 
;; (setq yas/root-directory "~/.emacs.d/elpa/yasnippet-0.11.0/snippets/")
;; (yas/load-directory yas/root-directory)

(require 'yasnippet)
;; (setq yas/root-directory "~/.emacs.d/elpa/yasnippet-20170418.351/snippets/")
;; (yas/load-directory yas/root-directory)
(yas/global-mode t)
;; (yas/reload-all t)
;; (yas/load-directory yas/root-directory)
;; ;; (add-to-list 'yas-snippet-dirs "~/.emacs.d/elpa/yasnippet-0.11.0/snippets/")
;; (setq yas/prompt-functions 
;;       '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
(yas/minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用
;; (yas/global-mode t)

;;加载header2.el文件,自动添加文件头
(require 'header2)
(autoload 'auto-update-file-header "header2")
(add-hook 'write-file-hooks 'auto-update-file-header)
(autoload 'auto-make-header "header2")
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-common-hook   'auto-make-header) 
(add-hook 'c++-mode-common-hook   'auto-make-header)
(add-hook 'text-mode-hook   'auto-make-header)
(add-hook 'matlab-mode-hook 'auto-make-header)
(add-hook 'latex-mode-hook 'auto-make-header)
(add-hook 'fortran-mode-hook 'auto-make-header)
(add-hook 'f90-mode-hook 'auto-make-header)
(add-hook 'python-mode-hook 'auto-make-header)
(add-hook 'Markdown-mode-hook 'auto-make-header)
(add-hook 'Org-mode-hook 'auto-make-header)

;;代码折叠
(load-library "hideshow")
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'matlab-mode-hook 'hs-minor-mode)
(add-hook 'fortran-mode-hook 'hs-minor-mode)
(add-hook 'f90-mode-hook 'hs-minor-mode)
(add-hook 'markdown-mode-hook 'hs-minor-mode)
(add-hook 'org-mode-hook 'hs-minor-mode)


;; markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; org2blog
(require  'metaweblog)
(require 'org2blog-autoloads)
;; (require 'org2blog-autoloads)
(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://125.223.127.17:1118/wordpress/xmlrpc.php"
         :username "yingwei1990"
	 :password "9874123"
         :default-title "Hello World"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)
        ))

;;  org-mode 8.0
(setq org-support-shift-select t)
;; (setq org-latex-pdf-process
;;       '("xelatex -interaction nonstopmode %f"
;; 	"xelatex -interaction nonstopmode %f"))
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode %f"
	"xelatex -interaction nonstopmode %f"))
;; (setq org-latex-default-packages-alist
;;       (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist)
;;       )

;; (require 'ibus)
;; ;; Turn on ibus-mode automatically after loading .emacs
;; (add-hook 'after-init-hook 'ibus-mode-on)
;; ;; Use C-SPC to toggle input status
(global-set-key (kbd "C-SPC") 'ibus-toggle)
;; ;; Use s-SPC to set mark
(global-set-key (kbd "s-SPC") 'set-mark-command)

;; (global-set-key [?/S- ] 'set-mark-command) 

;;;;;;;;;;;;;;;;;
;auctex
;;;;;;;;;;;;;;;;;
(load "auctex.el" nil t t)
(load "preview.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(mapc (lambda (mode)
(add-hook 'LaTeX-mode-hook mode))
      (list 'auto-complete-mode
   'auto-fill-mode
   'LaTeX-math-mode
   'turn-on-reftex
   'linum-mode))
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))
; set pdf view tool
(setq TeX-view-program-list '(("Evince" "evince %o")))
(cond
 ((eq system-type 'windows-nt)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "SumatraPDF")
                                                 (output-dvi "Yap"))))))

 ((eq system-type 'gnu/linux)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "Evince")
                                                 (output-dvi "Evince")))))))
; XeLaTeX
(add-hook 'LaTeX-mode-hook (lambda()
    (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
    (setq TeX-command-default "XeLaTeX")
    (setq TeX-save-query  nil )
    (setq TeX-show-compilation t)
    ))

;;;中文与英文字体设置
;; Setting English Font
;; (set-face-attribute
;; 'default nil :font "Monaco 14")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "WenQuanYi Micro Hei Mono" :size 16)))
;; ;;中文与外文字体设置
;; ;; Setting English Font
;; (set-face-attribute
;; 'default nil :font "monofur 12")
;; ;; Chinese Font
;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;; (set-fontset-font (frame-parameter nil 'font)
;; charset
;; (font-spec :family "WenQuanYi Zen Hei Mono" :size 14)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; .emacs ends here
