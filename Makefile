all:
	make pdf &&\
	rm -f _book/*.html &&\
	Rscript --quiet _render.R

pdf:
	Rscript --quiet _render.R "bookdown::pdf_book" 

gitbook:
	Rscript --quiet _render.R "bookdown::gitbook"

deploy:
	/bin/bash _deploy.sh
	
clean:
	rm -rf _book
