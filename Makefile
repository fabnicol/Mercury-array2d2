MMC = /usr/local/mercury-DEV/bin/mmc
PARALLEL =
files = test1.m array2d2.m


test1: $(files) Mercury.options 
	@$(MMC) --make $(PARALLEL) $@ && touch $@

clean: 
	git clean -dfx
