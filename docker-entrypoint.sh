#!/bin/sh
set -e

WORKDIR="/MessageBridge"

# execute myHouse (through entrypoint)
if [ "$1" = 'MessageBridge' ]; then
	cd $WORKDIR/
	if [ "$SERIAL_PORT" ]; then
		echo -e "[\e[33mmyHouse\e[0m] Setting serial port to $SERIAL_PORT"
		cat MessageBridge_defaults.cfg |awk "{gsub(/port = \/dev\/ttyAMA0/, \"port = $SERIAL_PORT\"); print }" > MessageBridge.cfg
	else
		cp MessageBridge_defaults.cfg MessageBridge.cfg
	fi
	exec python MessageBridge.py -d
fi

# execute the provided command
exec "$@"
