ACLOCAL_AMFLAGS = -I m4

BINARCHDIR = bin/$(GAPARCH)
GAPINSTALLLIB = $(abs_top_srcdir)/$(BINARCHDIR)/zeromq.so

lib_LTLIBRARIES = zeromq.la

zeromq_la_SOURCES = \
    src/zmqgap.c \
    src/zmqgap.h
zeromq_la_CPPFLAGS = $(GAP_CPPFLAGS) -DCONFIG_H
# Note that the latter is only for GAP 4.4.12
zeromq_la_LDFLAGS = -module -avoid-version -Bsymbolic -lzmq -Lextern/zeromq-3.2.3/src/.libs 
if SYS_IS_CYGWIN
zeromq_la_LDFLAGS += -no-undefined -version-info 0:0:0 -Wl,$(GAPROOT)/bin/$(GAPARCH)/gap.dll
endif

all-local: zeromq.la
	$(mkdir_p) $(top_srcdir)/$(BINARCHDIR)
if SYS_IS_CYGWIN
	cp .libs/zeromq.dll $(GAPINSTALLLIB)
else
	cp .libs/zeromq.so $(GAPINSTALLLIB)
endif
	@echo "SUCCESS!"

distclean-local:
	rm -rf bin/*
	(cd doc ; ./clean)

doc:	doc/manual.six

doc/manual.six: doc/*.xml PackageInfo.g
	($(GAPROOT)/bin/gap.sh -A makedoc.g)
