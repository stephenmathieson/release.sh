
PREFIX ?= /usr/local

install:
	cp -f release.sh $(PREFIX)/bin/release

uninstall:
	rm -f $(PREFIX)/bin/release
