
SHELL := /bin/bash

all: clean
	time -p php scripts/converter.php
	time -p php php/program.php

clean:
	rm -f index* lib/all* sitemap/* static/* sitemap.xml 404.html

test:
	php scripts/helper_check_hash.php
	php scripts/helper_check_header_ly.php
	php scripts/helper_check_falta.php

csv:
	php scripts/helper_make_csv.php
