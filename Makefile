%.html: %.md _layouts/webpage.html
	kramdown --template _layouts/webpage.html $< > $@

all: docs

docs: README.html

check:
	cmudict-tools validate -Wall en-GB-x-rp.dict
