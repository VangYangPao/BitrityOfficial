
Debian
====================
This directory contains files used to package bitrityd/bitrity-qt
for Debian-based Linux systems. If you compile bitrityd/bitrity-qt yourself, there are some useful files here.

## bitrity: URI support ##


bitrity-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitrity-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitrity-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitrity128.png` to `/usr/share/pixmaps`

bitrity-qt.protocol (KDE)

