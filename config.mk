# dmenu version
VERSION = 5.4

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

# freebsd
#X11INC = /usr/local/include
#X11LIB = /usr/local/lib
# linux (uncomment)
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
#FREETYPELIBS = -lfontconfig -lXft
#FREETYPEINC = /usr/local/include/freetype2
# linux (uncomment)
FREETYPEINC = /usr/include/freetype2

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC) -I/usr/include -I/usr/local/include
LIBS = -L$(X11LIB) -lX11 $(XINERAMALIBS) $(FREETYPELIBS) -lm -L/usr/lib -L/usr/local/lib -lXft -lfontconfig

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\" $(XINERAMAFLAGS)
CFLAGS   = -std=c99 -pedantic -Wall -Os $(INCS) $(CPPFLAGS)
LDFLAGS  = $(LIBS)

# compiler and linker
CC = cc
