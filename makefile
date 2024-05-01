
SHELL := /bin/bash

all: clean
	time -p php scripts/converter.php
	time -p php php/program.php

clean:
	rm -f index*
	rm -f sitemap.xml
	rm -f 404.html
	rm -f lib/all*
	rm -f sitemap/*
	rm -f static/*

distclean:
	rm -f cache/*

test:
	php scripts/helper_check_hash.php
	php scripts/helper_check_header_ly.php
	php scripts/helper_check_falta.php

csv:
	php scripts/helper_make_csv.php
