(add-to-list 'load-path "~/.emacs.d/lisp")

;; 启动color-theme
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-classic)

;; 启动tabbar
(require 'tabbar)
(tabbar-mode)

(global-set-key (kbd "M-3")    'tabbar-backward-group)
(global-set-key (kbd "M-4")  'tabbar-forward-group)
(global-set-key (kbd "M-1")  'tabbar-backward-tab)
(global-set-key (kbd "M-2") 'tabbar-forward-tab)

;; cscope
(require 'xcscope)
(global-set-key (kbd "<f4>")    'imenu)
(global-set-key (kbd "<f5>")    'cscope-find-global-definition)
(global-set-key (kbd "<f5>")    'cscope-find-global-definition)
(global-set-key (kbd "<f8>")    'cscope-find-functions-calling-this-function)

;; windmove
(global-set-key (kbd "<S-up>")    'windmove-up)
(global-set-key (kbd "<S-down>")  'windmove-down)
(global-set-key (kbd "<S-left>")  'windmove-left)
(global-set-key (kbd "<S-right>") 'windmove-right)


;关闭开机画面
(setq inhibit-startup-message t)

;最大化启动
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))

;平滑显示
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(column-number-mode t)

;标题栏显示文件的完整路径
(setq frame-title-format '("%S" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; 关闭menu-bar
(menu-bar-mode -1)

;; 去掉工具栏
(tool-bar-mode -1)

;; 去掉滚动栏
(scroll-bar-mode -1)

;; 光标禁止闪烁
(blink-cursor-mode -1)

;; 设置字体

(defun my-split3 () (interactive)
  (progn (delete-other-windows)
         (split-window-right)
         (split-window-right)
         (balance-windows)))
(global-set-key (kbd "<f9>") 'my-split3)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(display-time-mode t)
 '(gud-pdb-command-name "/usr/lib/python3.3/pdb.py")
 '(scheme-program-name "c:/Program Files (x86)/MIT-GNU Scheme/bin/mit-scheme.exe")
 '(indent-tabs-mode nil)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t)))
 '(verilog-auto-newline nil))

(set-default-font "YaHei Consolas Hybrid-11")
(show-paren-mode 1)
(setq c-default-style "linux")
(setq-default c-basic-offset 8)


(cd "d:/")
