# Application name
APP := main

# Directory Locations
SRC_DIR := src
OBJ_DIR := obj

# File Lists
CPP_FILES := $(wildcard $(SRC_DIR)/*.cc)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(CPP_FILES))

# Compiler options
LD_FLAGS  := $(LDFLAGS)
CPPFLAGS  := $(CPPFLAGS)
CFLAGS    := $(CFLAGS) -Wall -Wextra -Wpedantic

all: $(OBJ_DIR) $(APP)

$(APP): $(OBJ_FILES)
	$(CXX) $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CXX) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(APP)
	$(RM) -rf $(OBJ_DIR)

$(OBJ_DIR):
	mkdir -p $@