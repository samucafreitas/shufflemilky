PROJECT_NAME := $(shell python setup.py --name)
PROJECT_VERSION := $(shell python setup.py --version)

# Escape Sequences - Colors
PURPLEf := \033[38;5;140m
YELLOWf := \033[33m

#Escape Sequences - Control
BOLD := \033[1m
RESET := \033[0m
BLINK := \033[5m
DIM := \033[2m

.PHONY: all
all: uninstall install clean

.PHONY: install
install:
	@echo -e "$(BOLD)Installing $(PURPLEf)$(BLINK)$(PROJECT_NAME)$(RESET) $(YELLOWf)$(PROJECT_VERSION)$(RESET)"
	@echo -e -n "$(DIM)"
	@pip install .
	@echo -e -n "$(RESET)"

.PHONY: uninstall
uninstall:
	@echo -e "$(BOLD)Uninstalling '$(PURPLEf)$(BLINK)$(PROJECT_NAME)$(RESET)'"
	@pip uninstall -y $(PROJECT_NAME) 2> /dev/null

.PHONY: clean
clean:
	rm -rf shufflemilky.egg-info dist build

