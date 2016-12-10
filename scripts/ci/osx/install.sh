#!/usr/bin/env bash

wget https://gstreamer.freedesktop.org/data/pkg/osx/1.9.90/gstreamer-1.0-devel-1.9.90-x86_64.pkg;
sudo installer -pkg gstreamer-1.0-devel-1.9.90-x86_64.pkg -target /;
wget https://gstreamer.freedesktop.org/data/pkg/osx/1.9.90/gstreamer-1.0-1.9.90-x86_64.pkg;
sudo installer -pkg gstreamer-1.0-1.9.90-x86_64.pkg -target /;
ls /Library/Frameworks/GStreamer.framework/Headers;
