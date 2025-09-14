
SHELL=/bin/bash
RED=\033[0;31m
GREEN=\033[0;32m
YELLOW=\033[0;33m
BLUE=\033[0;34m
NONE=\033[0m

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

check:
	@echo -n convert:" "; which convert > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n enc2ly:" "; which enc2ly > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n lame:" "; which lame > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n lilypond:" "; which lilypond > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n musescore4portable:" "; which musescore4portable > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n pdftocairo:" "; which pdftocairo > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n pdfunite:" "; which pdfunite > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n pngnq:" "; which pngnq > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n timeout:" "; which timeout > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
	@echo -n timidity:" "; which timidity > /dev/null && echo -e "$(GREEN)OK$(NONE)" || echo -e "$(RED)KO$(NONE)"
