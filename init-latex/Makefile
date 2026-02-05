
MAIN := main

default: build

rebuild:
	pdflatex -interaction=batchmode $(MAIN)

build: clean
	pdflatex $(MAIN)
	bibtex -terse $(MAIN)
	pdflatex -interaction=batchmode $(MAIN)
	pdflatex -interaction=batchmode $(MAIN)

.PHONY: clean
clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.out
	rm -f *.toc
	rm -f $(MAIN).pdf

.PHONY: hooks
hooks:
	rm -rf .git/hooks
	cd .git; ln -s ../.hooks hooks

