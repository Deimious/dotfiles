;;; dired-git-info-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "dired-git-info" "dired-git-info.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from dired-git-info.el

(autoload 'dired-git-info-mode "dired-git-info" "\
Toggle git message info in current dired buffer.

\(fn &optional ARG)" t nil)

(autoload 'dired-git-info-auto-enable "dired-git-info" "\
Enable `dired-git-info-mode' if current dired buffer is in a git repo.

Add this function to `dired-after-readin-hook' to enable the mode
automatically inside git repos.

\(fn)" nil nil)

;;;***

(provide 'dired-git-info-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dired-git-info-autoloads.el ends here
