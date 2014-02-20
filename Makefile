.PHONY:all
all:thesis.pdf

thesis.pdf:*.tex
	xelatex thesis
	bibtex  thesis
	xelatex thesis
	xelatex thesis
	$(MAKE) cleantemp

.PHONY:cleantemp
cleantemp:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg

.PHONY:clean
clean:cleantemp
	rm -f *.pdf