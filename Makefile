SOURCES := $(shell find . -mindepth 2 -type f -name '*.md' -not -path './reveal.js/*')
EXPORTS = $(SOURCES:.md=.html)

%.html : %.md revealjs-template.html
	pandoc \
		--to=revealjs \
		--template=revealjs-template.html \
		--standalone \
		--mathjax \
		--no-highlight \
		--section-divs \
		--variable theme="lvh" \
		--variable revealjspath="../reveal.js/" \
		--variable transition="none" \
		--output=$@ \
		$<

.PHONY: all clean

all : $(EXPORTS)

clean:
	rm $(EXPORTS)
