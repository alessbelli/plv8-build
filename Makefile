EXTENSION = plv8

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

install:
	cp -R ./pkglibdir/. $(pkglibdir)
	cp -R ./datamoduledir/. $(datadir)/$(datamoduledir)
