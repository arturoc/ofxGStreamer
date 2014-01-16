ofxGStreamer
============

openFrameworks addon to use gstreamer under osx and windows. This addon has no code and instead uses the addon_config.mk file to add the needed files from the core + the flags needed to compile using gstreamer

This will only work with the latest version of the project generator from github (10/10/2013)

##Installing gstreamer

This addon depends on the gstreamer SDK. To install it:

###osx

You can download gstreamer v1.0. To install it under osx use the packages from (http://gstreamer.freedesktop.org/data/pkg/osx/1.2.2/)[http://gstreamer.freedesktop.org/data/pkg/osx/1.2.2/]
    
* gstreamer-1.0-1.2.2-universal.pkg installs the necesary libraries for applications to run

* gstreamer-1.0-devel-1.0.8-universal.pkg installs the development files needed to compile gst aplications

* gstreamer-1.0-1.2.2-universal-packages.dmg contains some additional packages that are needed to encode some formats like h264, some of this packages have GPL license or use patented formats. From those this package is needed to do colorspace conversion:

    * gstreamer-1.0-libav-1.0.8-universal.pkg

And these will provide h264 encoding and some network utils to stream h264 and other formats
    
    * gstreamer-1.0-codecs-restricted-1.0.8-universal.pkg
    
    * gstreamer-1.0-net-restricted-1.0.8-universal.pkg

If we only want to run an osx app. The devel package is not needed but by now we need to install the rest of packages

On some systems it seems it's necesary to remove or rename /Library/Frameworks/GStreamer/Headers/assert.h or it'll clash with the assert.h in the system and some projects won't compile. As far as i've tested it's safe to just delete it but it's probably better to keep a copy just in case.

###windows (only tested on visual studio)

You can download gstreamer v1.0. To install it under windows use the packages from (http://gstreamer.freedesktop.org/data/pkg/windows/1.2.2/)[http://gstreamer.freedesktop.org/data/pkg/windows/1.2.2/] any later version from (http://gstreamer.freedesktop.org/data/pkg/windows)[http://gstreamer.freedesktop.org/data/pkg/windows] should work but haven't been tested
    
* gstreamer-1.0-x86-1.2.2.msi installs the necesary libraries for applications to run

* gstreamer-1.0-devel-x86-1.2.2.msi installs the development files needed to compile gst aplications

After installing those 2 packages, you need to add the path to the bin directory of the installation to the PATH environment variable. In windows 8 open the control panel and search for environment variable. There edit the system PATH variable and at the end add a ; and the bin folder in the path where you installed gstreamer, by default:

;C:\gstreamer\1.0\x86\bin

That will allow you to run the gstreamer tools like gst-launch from the command line in any folder and will let the applications know where to find the runtime dll's

