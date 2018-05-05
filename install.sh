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
	rm -rf /usr/share/sparky/sparky-aptus-extra
	rm -f /usr/lib/sparky-aptus/audio/*
	rm -r /usr/lib/sparky-aptus/email/*
	rm -f /usr/lib/sparky-aptus/filetranfer/*
	rm -f /usr/lib/sparky-aptus/graphics/*
	rm -f /usr/lib/sparky-aptus/messenger/*
	rm -f /usr/lib/sparky-aptus/rss/*
	rm -f /usr/lib/sparky-aptus/video/*
else
	cp bin/sparky-aptus-extra /usr/bin/sparky-aptus-extra
	if [ ! -d /usr/share/sparky/sparky-aptus-extra ]; then
		mkdir -p /usr/share/sparky/sparky-aptus-extra
	fi
	cp lang/* /usr/share/sparky/sparky-aptus-extra/
	if [ ! -d /usr/lib/sparky-aptus/audio ]; then
		mkdir -p /usr/lib/sparky-aptus/audio
	fi
	cp -a sparky-aptus/audio/* /usr/lib/sparky-aptus/audio/
	if [ ! -d /usr/lib/sparky-aptus/email ]; then
		mkdir -p /usr/lib/sparky-aptus/email
	fi
	cp -a sparky-aptus/email/* /usr/lib/sparky-aptus/email/
	if [ ! -d /usr/lib/sparky-aptus/filetransfer ]; then
		mkdir -p /usr/lib/sparky-aptus/filetransfer
	fi
	cp -a sparky-aptus/filetransfer/* /usr/lib/sparky-aptus/filetransfer/
	if [ ! -d /usr/lib/sparky-aptus/graphics ]; then
		mkdir -p /usr/lib/sparky-aptus/graphics
	fi
	cp -a sparky-aptus/graphics/* /usr/lib/sparky-aptus/graphics/
	if [ ! -d /usr/lib/sparky-aptus/messenger ]; then
		mkdir -p /usr/lib/sparky-aptus/messenger
	fi
	cp -a sparky-aptus/messenger/* /usr/lib/sparky-aptus/messenger/
	if [ ! -d /usr/lib/sparky-aptus/rss ]; then
		mkdir -p /usr/lib/sparky-aptus/rss
	fi
	cp -a sparky-aptus/rss/* /usr/lib/sparky-aptus/rss/
	if [ ! -d /usr/lib/sparky-aptus/video ]; then
		mkdir -p /usr/lib/sparky-aptus/video
	fi
	cp -a sparky-aptus/video/* /usr/lib/sparky-aptus/video/
fi
