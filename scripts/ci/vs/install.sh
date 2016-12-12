#!/usr/bin/env bash
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-devel-x86_64-1.10.2.msi 2> /dev/null
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-x86_64-1.10.2.msi 2> /dev/null
msiexec /package gstreamer-1.0-devel-x86_64-1.10.2.msi /quiet /norestart
msiexec /package gstreamer-1.0-x86_64-1.10.2.msi /quiet /norestart
