((nil . ((org-html-toplevel-hlevel . 2)
	 (org-export-with-toc . nil)
	 (eval . (let ((proot (project-root (project-current)))) ;vc-root-dir function doesn't work maybe because vc elisp files have not been loaded.
		   (setq org-publish-project-alist
			 `(("mypage" :components ("root" "posts" "software-posts"))
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
			    :body-only t)
			   ("software-posts"
			    :base-directory ,(concat proot "_org/software/")
			    :publishing-directory ,(concat proot "software/_posts")
			    :publishing-function org-html-publish-to-html
			    :body-only t)
			   )))
	       ))))
