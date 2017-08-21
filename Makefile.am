ACLOCAL_AMFLAGS = -I m4

BINARCHDIR = bin/$(GAPARCH)
GAPINSTALLLIB = $(abs_top_srcdir)/$(BINARCHDIR)/zeromqinterface.so

lib_LTLIBRARIES = zeromqinterface.la

zeromqinterface_la_SOURCES = \
    src/zmqgap.c \
    src/zmqgap.h
zeromqinterface_la_CPPFLAGS = $(GAP_CPPFLAGS) -DCONFIG_H $(ZMQ_CPPFLAGS)
zeromqinterface_la_LDFLAGS = -module -avoid-version
if SYS_IS_CYGWIN
zeromqinterface_la_LDFLAGS += -no-undefined -version-info 0:0:0 -Wl,$(GAPROOT)/bin/$(GAPARCH)/gap.dll
endif
zeromqinterface_la_LDFLAGS += $(ZMQ_LDFLAGS) $(ZMQ_LIBS)


all-local: zeromqinterface.la
	$(mkdir_p) $(top_srcdir)/$(BINARCHDIR)
if SYS_IS_CYGWIN
	cp .libs/zeromqinterface.dll $(GAPINSTALLLIB)
else
	cp .libs/zeromqinterface.so $(GAPINSTALLLIB)
endif
	@echo "SUCCESS!"

distclean-local:
	rm -rf bin
	(cd doc ; ./clean)

doc:	doc/manual.six

doc/manual.six: doc/*.xml PackageInfo.g
	($(GAPROOT)/bin/gap.sh -A makedoc.g)
