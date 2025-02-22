# Makefile for Thesis

all: pdf open

pdf:
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -f -use-make GarrettJ_DPhilThesis.tex

open:
	open -a "Preview" GarrettJ_DPhilThesis.pdf

clean:
	find . -name '*.aux' -exec rm -f {} +
	find . -name '*.log' -exec rm -f {} +
	find . -name '*.blg' -exec rm -f {} +
	find . -name '*.lof' -exec rm -f {} +
	find . -name '*.out' -exec rm -f {} +
	find . -name '*.upa' -exec rm -f {} +
	find . -name '*.upb' -exec rm -f {} +
	find . -name '*.synctex.gz' -exec rm -f {} +
	find . -name '*.synctex(busy)' -exec rm -f {} +
	find . -name '*.lot' -exec rm -f {} +
	find . -name '*.toc' -exec rm -f {} +
	find . -name '*.fls' -exec rm -f {} +
	find . -name '*.fdb_latexmk' -exec rm -f {} +
	find . -name '*.toc' -exec rm -f {} +

sublime:
	find . -name '*chp_*tex' -exec open -a 'Sublime Text' {} +