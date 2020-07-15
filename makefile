SHELL=/bin/bash

OPT     := -O3 -DNDEBUG
LIBS	:= -pthread
ifeq ($(mode),debug)
    OPT     := -O0 -g
else
ifeq ($(mode),release)
	OPT     += -static
	LIBS	= -Wl,--whole-archive -lpthread -Wl,--no-whole-archive
endif
endif

target = ./

WFLAG 	= -Wall
DEPFLAG = -MMD -MP

CC		= g++ -std=c++11 $(OPT) $(WFLAG) $(DEPFLAG) $(INCLUDE)

INCLUDE = -I.

CC_OBJS = main

OBJS = 	$(addsuffix .o, $(CC_OBJS)) 

BFILE = exe

TAR_FILES = $(BFILE)

.PHONY: all clean tags
all: $(BFILE)
	@date +'%D %T'

$(BFILE): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS)

%.o : %.cpp
	$(CC) -o $@ -c $<

-include $(OBJS:.o=.d)

clean:
	rm -f {*,*/*,*/*/*}.{o,d} $(BFILE)

tags:
	cscope -Rbq
	ctags -R *.cpp *.h