# This Makefile can be used with GNU Make or BSD Make

LIB=libkyber1024_clean.a
HEADERS=api.h cbd.h indcpa.h kem.h ntt.h params.h poly.h polyvec.h reduce.h symmetric.h verify.h 
OBJECTS=cbd.o indcpa.o kem.o ntt.o poly.o polyvec.o reduce.o symmetric-shake.o verify.o 

CFLAGS=-O2 -Wall -Wextra -Wpedantic -Werror -Wmissing-prototypes -Wredundant-decls -std=c99 -I../../../common $(EXTRAFLAGS)

all: $(LIB)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(LIB): $(OBJECTS)
	$(AR) -r $@ $(OBJECTS)

clean:
	$(RM) $(OBJECTS)
	$(RM) $(LIB)
