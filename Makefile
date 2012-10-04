exec :
	pdflatex -interaction batchmode master.tex
	bibtex master.aux
	pdflatex -interaction batchmode master.tex
	pdflatex -interaction batchmode master.tex
	latexmk -c master

clean :
	latexmk -c master
#	rm *.toc
#	rm *.aux
#	rm *.out
#	rm *.log
#	rm *.blg
#	rm *.bbl
#	rm sections/*.aux	

cleanall : 
	rm *.toc *.aux *.out *.log *.blg *.bbl sections/*.aux bilag/*.aux sections/rapportmeta/*.aux

flows : 
	./compileflows.sh
