#!/bin/sh

gov=performance

stat() {
	grep MHz /proc/cpuinfo
}

if [ "$1" == "stat" ]; then
	stat
	exit
fi

if [ $# -gt 0 ]; then
	gov=powersave
fi

sudo cpupower frequency-set -g ${gov}

sleep 0.5
stat
