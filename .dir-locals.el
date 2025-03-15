((nil . ((org-html-toplevel-hlevel . 1)
	 (eval . (let ((proot (project-root (project-current)))) ;vc-root-dir function doesn't work maybe because vc elisp files have not been loaded.
		   (setq org-publish-project-alist
			 `(("mypage" :components ("root" "posts"))
			   ("root"
			    :base-directory ,proot
			    :publishing-directory ,proot
			    :publishing-function org-html-publish-to-html
			    :exclude "README"
			    :body-only t)
			   ("posts"
			    :base-directory ,(concat proot "_org/")
			    :publishing-directory ,(concat proot "_posts")
			    :publishing-function org-html-publish-to-html
			    :body-only t))))
	       ))))
