REM clean
rmdir /S /Q build
rmdir /S /Q output
	
REM install
mkdir -p output
mkdir -p build
latexmk -pdf -bibtex -outdir=../build -cd src/paper.tex
move build\paper.pdf output