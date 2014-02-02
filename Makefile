all:thesis.pdf

%.pdf:%.tex
	if pdflatex $<; then $(MAKE) cleantemp; else $(MAKE) clean; fi

.PHONY:cleantemp
cleantemp:
	rm -f *.aux
	rm -f *.log

clean:cleantemp
	rm -f *.pdf