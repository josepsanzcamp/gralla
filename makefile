
all:
	rm -f index*html sitemap*xml static/*html
	time -p php php/program.php

