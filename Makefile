all:thesis.pdf

%.toc:%.tex
	xelatex $<;
	
%.pdf:%.tex %.toc
	if xelatex $<; then $(MAKE) cleantemp; else $(MAKE) clean; fi

.PHONY:cleantemp
cleantemp:
	rm -f *.aux *.log *.out *.toc

clean:cleantemp
	rm -f *.pdf