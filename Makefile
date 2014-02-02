.PHONY:all
all:thesis.pdf

%.pdf:%.tex
	xelatex $(basename $@ .pdf)
	bibtex  $(basename $@ .pdf)
	xelatex $(basename $@ .pdf)
	xelatex $(basename $@ .pdf)
	$(MAKE) cleantemp

.PHONY:cleantemp
cleantemp:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg

.PHONY:clean
clean:cleantemp
	rm -f *.pdf