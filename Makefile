#run convert.sh first (not needed every time you run make, because you may need to change order in hierachy.tex)
convert: 
	bash convert.sh

pdf:
	mkdir -p output/logs
	pdflatex -output-directory=output/ main.tex
	mv output/*.log output/logs/

clean:
	rm -rf output/*
