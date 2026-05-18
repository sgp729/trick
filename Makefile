
### Makefile specific
.RECIPEPREFIX = >
.DEFAULT_GOAL = all

### Directories
BUILD_DIR = ./build
$(BUILD_DIR):
>       mkdir $@

MODULES_DIR = gcm.cache
$(MODULES_DIR):
>       mkdir $@

### CXX specific
CXX = g++
CXXFLAGS = -std=c++26 -lstdc++ -Wall -Wextra -Wpedantic -fmodules -freflection -g3
PCM = gcm

### Subdirectory includes
include macros.mk
include std.mk

### Top-level Makefile
.PHONY: all
all: $(BUILD_DIR) $(MODULES_DIR) $(SUBDIR_TARGETS)
clean:
>       rm -r $(BUILD_DIR)
>       rm -r $(MODULES_DIR)
