PDF=cv.pdf

LATEX=latex
DVI2PDF=dvipdfm

TEX=$(PDF:.pdf=.tex)
DVI=$(PDF:.pdf=.dvi)

$(SOURCE): $(TEX)
	$(LATEX) $(SOURCE)

dvi:
	@echo "Creating the dvi file."
	$(LATEX) $(TEX)

pdf: 
	@echo "Creating the pdf file."
	$(LATEX) $(TEX) && $(DVI2PDF) $(DVI)
	rm -f *.dvi *.mt* *.aux *.log *.maf *.out

clean:
	@echo "Cleaning the directory"
	rm -f *.dvi *.mt* *.aux *.log *.maf *.out

