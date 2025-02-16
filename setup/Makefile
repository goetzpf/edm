TOP=..

all: $(TOP)/bin/$(EPICS_HOST_ARCH)/edm

install: all

$(TOP)/bin/$(EPICS_HOST_ARCH)/edm:
	mkdir -p $(@D)
	rm -f $@
	. ./setup.sh >/dev/null && env | grep EDM | sed -e 's/^/export /' > $@
	echo "export LD_LIBRARY_PATH=\$$EDM_LD_LIBRARY_PATH:\$$LD_LIBRARY_PATH" >> $@
	echo "\$$EDM \$$@" >> $@
	chmod a+x $@

clean:
	rm -f edmObjects* edmPvObjects*
	rm -f $(TOP)/bin/$(EPICS_HOST_ARCH)/edm
