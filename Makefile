PREFIX=/usr/local

SCRIPTS =\
	card2html\
	fetchcard\
	furigana\
	gencard\
	nextcardid\
	omoidasu\
	review\
	rubify

default:
	@echo "usage: make [install|uninstall]"

install:
	mkdir -p $(PREFIX)/bin
	install -m 0755 $(SCRIPTS) $(PREFIX)/bin

uninstall:
	rm $(SCRIPTS:%=$(PREFIX)/bin/%)
