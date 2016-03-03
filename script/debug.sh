#!/bin/sh
mount -o remount,rw /
dmesg > /shutdown.txt
mount -o remount,ro /
