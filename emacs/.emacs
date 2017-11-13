;;;; тема настроенная в самом emacs'е, мне нравится =)
(custom-set-variables
   '(ansi-color-faces-vector
      [default default default italic underline success warning error])
   '(custom-enabled-themes (quote (tango-dark)))
   '(tool-bar-mode nil))
(custom-set-faces)
(setq default-directory "~/" )
;;;; Делаем так, чтобы при открытии emacs'а не было мусора, а был открыт только один буфер *scratch*
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
;;;; Убеждаемся, что .emacs редактируется в elisp-mode'е
(setq auto-mode-alist (cons '("/home/ozo/.emacs" . lisp-mode) auto-mode-alist))
;; Папка с временными файлами
(setq temporary-file-directory "/tmp/")
;;;; Отключить звуковой сигнал(надоел этот бип)
(setq ring-bell-function 'ignore)
;;;; Не надо набирать 'yes' или 'no'. Теперь 'y' либо 'n'
(fset 'yes-or-no-p 'y-or-n-p)
;;;; Показывать номер колонки
(column-number-mode t)
;;;; Включить выделение выражений между {},[],()
(show-paren-mode t)
(setq show-paren-style 'expression)
;; Автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-pair-mode 1) ;; автозакрытие {},[],() с переводом курсора внутрь скобок
;;;; Удаляем текст при вводе в выделенном
(delete-selection-mode t)
;;;; Плавный скроллинг
;; Вверх-вниз по 1 строке
(setq scroll-step 1)
;; Сдвигать буфер верх/вниз когда курсор в 10 шагах от верхней/нижней границы
(setq scroll-margin 10)
(setq scroll-conservatively 10000)
;;;; Табуляция по-умолчанию - 4 пробела
(setq tab-width 4)
;; Пробелы вместо табубляции
(setq c-basic-indent 4)
(setq c-basic-offset 4)
(setq indent-tabs-mode t)
(setq-default indent-tabs-mode t)
;;;; Немного удобства(для меня =) )
;;Навигация между окнами при помощи M-стрелки
(windmove-default-keybindings 'meta)
;; Запуск терминала
(global-set-key (kbd "C-t") 'shell)
;; открыть файл
(global-set-key (kbd "C-o") 'find-file)
;; выйти из emacs
(global-set-key (kbd "C-q") 'kill-emacs)
;; сохранить буфер
(global-set-key (kbd "C-s") 'save-buffer)
;; закрыть буфер
(global-set-key (kbd "C-w") 'kill-buffer)
;; поиск с C-s на С-x C-s
(global-set-key (kbd "C-x C-s") 'isearch-forward)

;; Ctrl-V вставить
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-м") 'yank)
;; Ctrl-C + Ctrl-C копировать
(global-set-key (kbd "C-c C-c") 'kill-ring-save)
(global-set-key (kbd "C-с") 'kill-ring-save)
;; Ctrl-X + Crtl-X вырезать
(global-set-key (kbd "C-x C-x") 'kill-region)
(global-set-key (kbd "C-ч") 'kill-region)

;; Ctrl-o открыть файл
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-щ") 'find-file)
;; Ctrl-q выйти из emacs
(global-set-key (kbd "C-q") 'kill-emacs)
(global-set-key (kbd "C-й") 'kill-emacs)
;; Ctrl-s сохранить буфер
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-ы") 'save-buffer)
;; Ctrl-w закрыть буфер
(global-set-key (kbd "C-w") 'kill-buffer)
(global-set-key (kbd "C-ц") 'kill-buffer)
;; Ctrl-f поиск
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-а") 'isearch-forward)
;; Ctrl-Z отменить
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-я") 'undo)

(global-hl-line-mode t)

(add-to-list 'load-path "~/.emacs.d/lua/")

(add-hook 'lua-mode-hook
              (lambda () (setq indent-tabs-mode t)))
(setq tab-width 4
      ;; this will make sure that tabs are used instead of spaces
				        indent-tabs-mode t)
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook
              (lambda () (setq indent-tabs-mode t)))

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(add-hook 'lua-mode-hook
              (lambda () (setq indent-tabs-mode t
			       tab-width lua-indent-level)))
