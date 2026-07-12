TECTONIC := $(HOME)/.local/bin/tectonic

# Build the resume and refresh the copy that GitHub Pages serves
all: RyanRamboerResume.pdf

resume.pdf: resume.tex
	$(TECTONIC) --synctex resume.tex

RyanRamboerResume.pdf: resume.pdf
	cp resume.pdf RyanRamboerResume.pdf

clean:
	rm -f resume.pdf resume.synctex.gz *.aux *.log *.out *.fls *.xdv

.PHONY: all clean
