# Source files
SRCS = main.c

# Output files
TARGET = main

.PHONY: all clean

all: $(TARGET).hex

$(TARGET).hex: $(TARGET).ihx
	packihx $< > $@

	
$(TARGET).ihx: $(SRCS)
	sdcc -mmcs51 --std-c99 $^

clean:
	rm -f $(TARGET).ihx $(TARGET).hex
