#!/usr/bin/env bash
echo "Downloading https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-devel-x86_64-1.10.2.msi"
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-devel-x86_64-1.10.2.msi 2> /dev/null
echo "Downloading https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-x86_64-1.10.2.msi"
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-x86_64-1.10.2.msi 2> /dev/null
msiexec /i gstreamer-1.0-devel-x86_64-1.10.2.msi /qn
msiexec /i gstreamer-1.0-x86_64-1.10.2.msi /qn
