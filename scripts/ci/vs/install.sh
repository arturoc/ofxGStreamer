#!/usr/bin/env bash
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-devel-x86_64-1.10.2.msi
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-x86_64-1.10.2.msi
msiexec /package gstreamer-1.0-devel-x86_64-1.10.2.msi /quite /norestart
msiexec /package gstreamer-1.0-x86_64-1.10.2.msi /quite /norestart
