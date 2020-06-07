PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man

.PHONY: all install

all:

install:
	install -m 755 carefully $(PREFIX)/bin
	gzip -nk9 carefully.8
	install -m 644 carefully.8.gz $(MANDIR)/man8
	rm carefully.8.gz
