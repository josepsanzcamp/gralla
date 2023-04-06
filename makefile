
all:
	rm -f index.html index.??.html 404.html sitemap.xml static/*html sitemap/*xml
	time -p php scripts/converter.php
	time -p php php/program.php

test:
	php scripts/helper_check_hash.php
	php scripts/helper_check_header_ly.php
	php scripts/helper_check_falta.php

csv:
	php scripts/helper_make_csv.php
