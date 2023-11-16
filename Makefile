CC ?= gcc

SRC_DIR = ./src
BUILD_DIR = .
NAME = app.elf

CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/array/*.c)

CFLAGS += -I$(SRC_DIR)/array
CFLAGS += -Wall

LDFLAGS +=

.PHONY: all
all: $(NAME)

.PHONY: $(NAME)
$(NAME):
	$(CC) $(CFLAGS) $(CSOURCES) -o $(BUILD_DIR)/$(NAME) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(BUILD_DIR)/$(NAME)
