#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
   	rm -f /usr/bin/sparky-aptus-extra
	rm -rf /usr/lib/sparky-aptus-extra/bin
	rm -r /usr/lib/sparky-aptus/inst/sparky-aptus-extra.desktop
	rm -f /usr/share/applications/sparky-aptus-extra.desktop
	rm -f /usr/share/menu/sparky-aptus-extra
	rm -rf /usr/share/sparky/sparky-aptus-extra
else
	cp bin/sparky-aptus-extra /usr/bin/sparky-aptus-extra
	if [ ! -d /usr/lib/sparky-aptus-extra/bin ]; then
		mkdir -p /usr/lib/sparky-aptus-extra/bin
	fi
	cp bin/install-chrome /usr/lib/sparky-aptus-extra/bin/install-chrome
	cp bin/install-earth /usr/lib/sparky-aptus-extra/bin/install-earth
	if [ ! -d /usr/lib/sparky-aptus/inst ]; then
		mkdir -p /usr/lib/sparky-aptus/inst
	fi
	cp lib/sparky-aptus-extra.desktop /usr/lib/sparky-aptus/inst/sparky-aptus-extra.desktop
	cp lib/sparky-aptus-extra.desktop /usr/share/applications/sparky-aptus-extra.desktop
	cp menu/sparky-aptus-extra /usr/share/menu/sparky-aptus-extra
	if [ ! -d /usr/share/sparky/sparky-aptus-extra ]; then
		mkdir -p /usr/share/sparky/sparky-aptus-extra
	fi
	cp lang/* /usr/share/sparky/sparky-aptus-extra/
fi
