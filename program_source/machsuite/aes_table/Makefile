KERN=aes_table
ALG=aes_table

CFLAGS?=-O3 -Wall -Wno-unused-label

SRCS= aes_table.c ../common/support.c support.h
FILES=$(SRCS) aes_table.h ../common/support.h

$(KERN): $(FILES) ../common/harness.c
	$(CC) $(CFLAGS) -I../common -o $(KERN) $(SRCS) ../common/harness.c

run: $(KERN) input.data check.data
	./$(KERN) input.data check.data

generate: $(FILES) generate.c
	$(CC) $(CFLAGS) -I../common -o generate $(SRCS) generate.c
	./generate

hls: $(KERN).c $(KERN).h
	vivado_hls hls.tcl

clean:
	rm -f $(KERN) generate output.data
