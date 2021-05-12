# Add this path to preferred shell's path
INSTALL_DIR = ~/.pandoc-notes

install:
	mkdir -p $(INSTALL_DIR)/config
	cp compile.sh $(INSTALL_DIR)/compile-notes
	chmod +x $(INSTALL_DIR)/compile-notes
	cp config/* $(INSTALL_DIR)/config

uninstall:
	rm -rf $(INSTALL_DIR)

