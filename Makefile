all:thesis.pdf

%.pdf:%.tex
	if pdflatex $<; then $(MAKE) cleantemp; else $(MAKE) clean; fi

.PHONY:cleantemp
cleantemp:
	rm -f *.aux *.log *.out

clean:cleantemp
	rm -f *.pdf