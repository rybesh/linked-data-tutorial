%.dot : %.ttl
	rapper -i turtle -o dot  $< > $@

%.pdf : %.dot
	dot -Tpdf -o$@ $<

.PHONY: clean
clean:
	rm *.dot *.pdf
