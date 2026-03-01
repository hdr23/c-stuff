CC = gcc
CFLAGS = -std=c11 -Wall -Iinclude
LDFLAGS =

SRC = src/main.c
BUILD_DIR = build
TARGET = $(BUILD_DIR)/sandbox

.PHONY: all clean debug

all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

debug: CFLAGS += -g -O0
debug: clean $(TARGET)

clean:
	rm -f $(TARGET)
