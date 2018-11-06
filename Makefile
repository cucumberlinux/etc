INSTALL=install
DESTDIR=

install:
	$(INSTALL) -d -o root -g root -m 755 $(DESTDIR)/etc/modprobe.d
	$(INSTALL) -d -o root -g root -m 755 $(DESTDIR)/etc/profile.d
	$(INSTALL) -d -o root -g root -m 755 $(DESTDIR)/etc/skel
	$(INSTALL) -o root -g root -m 644 src/inittab "$(DESTDIR)/etc"
	$(INSTALL) -o root -g root -m 644 src/profile "$(DESTDIR)/etc"
	$(INSTALL) -o root -g root -m 644 src/inputrc "$(DESTDIR)/etc"
	$(INSTALL) -o root -g root -m 644 src/shells "$(DESTDIR)/etc"
	$(INSTALL) -o root -g root -m 644 src/modprobe.d/usb.conf "$(DESTDIR)/etc/modprobe.d"
	$(INSTALL) -o root -g root -m 644 src/skel/.bashrc "$(DESTDIR)/etc/skel"

