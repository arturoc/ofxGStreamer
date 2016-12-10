#!/usr/bin/env bash

wget https://gstreamer.freedesktop.org/data/pkg/osx/1.9.90/gstreamer-1.0-devel-1.9.90-x86_64.pkg
sudo installer -pkg gstreamer-1.0-devel-1.9.90-x86_64.pkg -target /
wget https://gstreamer.freedesktop.org/data/pkg/osx/1.9.90/gstreamer-1.0-1.9.90-x86_64.pkg
sudo installer -pkg gstreamer-1.0-1.9.90-x86_64.pkg -target /
ls /Library/Frameworks/GStreamer.framework/Headers

if [ "$OF_BRANCH" == "stable" ]; then
    sed "s/$(CXX) -c $(OPTIMIZATION_CFLAGS) $(CFLAGS) $(CXXFLAGS) $(OF_CORE_INCLUDES_CFLAGS) -MMD/$(CXX) -c $(OPTIMIZATION_CFLAGS) $(CFLAGS) $(CXXFLAGS) $(OF_CORE_INCLUDES_CFLAGS) $(ADDON_INCLUDE_CFLAGS) -MMD/g;" ~/openFrameworks/libs/openFrameworksCompiled/project/makefileCommon/compile.project.mk
fi
