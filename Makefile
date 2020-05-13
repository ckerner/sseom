CURDIR=$(shell pwd)
LOCL_DIR=/usr/local/bin

install: sseom

sseom:   .FORCE
	cp -pf $(CURDIR)/sseom $(LOCL_DIR)/sseom
	chmod +x $(LOCL_DIR)/sseom

clean:
	rm -f $(LOCL_DIR)/sseom

.FORCE:


