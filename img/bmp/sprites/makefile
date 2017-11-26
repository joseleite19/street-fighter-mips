CPP_FILE = bmp2oac2.cpp
EXEC = _bmp2oac2

BIN_PATH = ../../bin/sprites/
MIF_PATH = ../../mif/sprites/

BMP_FILES = $(wildcard */*.bmp)
BIN_FILES = $(addprefix $(BIN_PATH),$(BMP_FILES:.bmp=.bin))
MIF_FILES = $(addprefix $(MIF_PATH),$(BMP_FILES:.bmp=.mif))
FILES = $(basename $(BMP_FILES))


all: $(EXEC)
$(EXEC): $(CPP_FILE)
	g++ -std=c++14 -Wall -O2 $(CPP_FILE) -o $(EXEC) -Wno-unused-result -Wno-strict-aliasing
clear:
	clear && clear
run: clear all
	$(foreach var,$(FILES),./$(EXEC) $(var);)


debug:
	@echo "BMP_FILES: " $(BMP_FILES)
	@echo " "
	@echo "BIN_FILES: " $(BIN_FILES)
	@echo " "
	@echo "MIF_FILES: " $(MIF_FILES)
	@echo " "
	@echo "FILES: " $(FILES)
