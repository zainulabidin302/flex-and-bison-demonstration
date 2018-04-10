# Author: Zain Ulabidin
# Email : zainulabidin302@gmail.com
# Git   : zainulabidin302

CC    = gcc
FLEX  = flex
BISON = bison
SRC   = ./src
BUILD = ./build

OUTPUT = $(BUILD)/calc

FLEX_FLAGS = --outfile=./build/exp.yy.c
BISON_FLAGS = -dy --output=./build/exp.tab.c
COMPILER_FLAGS = -o $(OUTPUT) 

all: compile 

compile: flexout bisonout 
	$(CC) $(BUILD)/exp.yy.c $(BUILD)/exp.tab.c $(COMPILER_FLAGS)  
bisonout: $(SRC)/exp.y
	bison $(BISON_FLAGS) $(SRC)/exp.y
flexout: $(SRC)/exp.l
	flex $(FLEX_FLAGS) $(SRC)/exp.l 

clean:
	$(RM) $(BUILD)/*
