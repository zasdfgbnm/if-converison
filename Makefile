all:thesis.pdf

%.pdf:%.tex
	pdflatex $<
	$(MAKE) cleantemp

.PHONY:cleantemp
cleantemp:
	rm -f *.aux
	rm -f *.log

clean:cleantemp
	rm -f *.pdf