.PHONY: all clean wordcount

LATEX = $(wildcard *.tex)
PDF=$(patsubst %.tex, %.pdf, $(LATEX))

all : $(PDF)

%.pdf : %.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $<

project.zip : Makefile $(LATEX)
	zip $@ $^

wordcount : $(TEX)
	texcount $(TEX)

clean :
	latexmk -C
	rm -f project.zip
