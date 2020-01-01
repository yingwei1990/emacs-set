;;; org-chinese-utils-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "org-chinese-utils" "org-chinese-utils.el"
;;;;;;  (22783 19551 266457 169000))
;;; Generated autoloads from org-chinese-utils.el

(defalias 'org-chinese-utils 'ocus)

(autoload 'ocus "org-chinese-utils" "\


\(fn &optional BUFFER)" t nil)

(autoload 'ocus-activate "org-chinese-utils" "\
Activate certain utils of org-chinese-utils.

UTILS-LIST should be a list of utils which should be activated.

\(fn UTILS-LIST)" nil nil)

(autoload 'ocus-deactivate "org-chinese-utils" "\
Deactivate certain utils of org-chinese-utils.

This function is the opposite of `ocus-deactive'.  UTILS-LIST
should be a list of utils which should be activated.

\(fn &optional UTILS-LIST)" nil nil)

(defalias 'org-chinese-utils-enable 'ocus-enable)

(autoload 'ocus-enable "org-chinese-utils" "\
Enable all org-chinese-utils, when DISABLE is t, disable all utils.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("org-chinese-utils-pkg.el") (22783 19531
;;;;;;  892679 774000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; org-chinese-utils-autoloads.el ends here
