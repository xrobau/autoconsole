PACKAGE=$(shell grep Package: */DEBIAN/control | cut -d: -f2 | tr -d '[:space:]')
VERS=$(shell grep Version: */DEBIAN/control | cut -d: -f2 | tr -d '[:space:]')
all:
	dpkg-deb -b $(PACKAGE) $(PACKAGE)-$(VERS).deb
