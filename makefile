
all:
	rm -f index.html index.??.html 404.html sitemap.xml static/*html sitemap/*xml
	time -p php scripts/converter.php
	time -p php php/program.php

falta:
	php scripts/falta.php
