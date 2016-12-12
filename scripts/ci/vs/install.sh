#!/usr/bin/env bash
echo "Downloading https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-devel-x86_64-1.10.2.msi"
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-devel-x86_64-1.10.2.msi 2> /dev/null
echo "Downloading https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-x86_64-1.10.2.msi"
wget https://gstreamer.freedesktop.org/data/pkg/windows/1.10.2/gstreamer-1.0-x86_64-1.10.2.msi 2> /dev/null
echo "Installing gstreamer-1.0-devel-x86_64-1.10.2.msi"
cmd /c "msiexec /L* install_devel.log /i gstreamer-1.0-devel-x86_64-1.10.2.msi /quiet"
cat install_devel.log
echo "Installing gstreamer-1.0-x86_64-1.10.2.msi"
cmd /c "msiexec /L* install.log /i gstreamer-1.0-x86_64-1.10.2.msi /quiet"
cat install.log

