all: draft-ietf-dnsop-resolver-information.txt

.PRECIOUS: draft-ietf-dnsop-resolver-information.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc2629 $< >$@.new
	# -diff $@ $@.new
	mv $@.new $@
