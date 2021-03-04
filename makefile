
all:
	rm -f index*html sitemap*xml static/*html sitemap/*xml
	time -p php php/program.php

