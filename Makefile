PREFIX ?= /usr/local

all: help

help:
	@echo Run 'sudo make install' to install all FPGA tools

install: all
	mkdir -p $(PREFIX)/bin
	cp bin/fpga-wrapper $(PREFIX)/bin/fpga-wrapper
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/icebram
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/icemulti
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/icepack
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/icepll
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/iceprog
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/icetime
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/iceunpack
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/arachne-pnr
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/nextpnr-ice40
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/yosys
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/yosys-abc
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/yosys-config
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/yosys-filterlib
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/yosys-smtbmc
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/iverilog
	ln -sf $(PREFIX)/bin/fpga-wrapper $(PREFIX)/bin/vvp

uninstall:
	rm -f $(PREFIX)/bin/fpga-wrapper
	rm -f $(PREFIX)/bin/icebram
	rm -f $(PREFIX)/bin/icemulti
	rm -f $(PREFIX)/bin/icepack
	rm -f $(PREFIX)/bin/icepll
	rm -f $(PREFIX)/bin/iceprog
	rm -f $(PREFIX)/bin/icetime
	rm -f $(PREFIX)/bin/iceunpack
	rm -f $(PREFIX)/bin/arachne-pnr
	rm -f $(PREFIX)/bin/nextpnr-ice40
	rm -f $(PREFIX)/bin/yosys
	rm -f $(PREFIX)/bin/yosys-abc
	rm -f $(PREFIX)/bin/yosys-config
	rm -f $(PREFIX)/bin/yosys-filterlib
	rm -f $(PREFIX)/bin/yosys-smtbmc
	rm -f $(PREFIX)/bin/iverilog
	rm -f $(PREFIX)/bin/vvp

.PHONY: all help install uninstall

