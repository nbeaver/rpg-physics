NAME = rpg-physics

$(NAME).pdf: $(NAME).tex
	pdflatex $(NAME).tex

$(NAME).html: $(NAME).tex
	hevea $(NAME).tex

clean:
	rm --force $(NAME).dvi
	rm --force $(NAME).pdf
	rm --force $(NAME).html
	rm --force $(NAME).log
	rm --force $(NAME).aux
