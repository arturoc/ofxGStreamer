ofxGStreamer
============

ofxGStreamer is part of a toolkit in development called OFStreamer, which is a set of openFrameworks addons designed to make it easier to use GStreamer on OSX and Windows. The toolkit is being developed by [Arturo Castro](http://arturocastro.net/) and [Seth Hunter](http://www.perspectum.com/) for applications that require streaming video, audio and metadata between remote locations. 

This addon has no code and instead uses the addon_config.mk file included here to add the required files from the core + the flags needed to compile programs using [GStreamer](http://gstreamer.freedesktop.org/). Please see [ofxGSTRTP](https://github.com/arturoc/ofxGSTRTP) for examples and implimentation of the toolkit. 

The instructions below will only work with the latest version of the [project generator](https://github.com/ofZach/projectGeneratorSimple) on github. More information about getting OF setup is documented [here](https://github.com/openframeworks/openFrameworks/blob/master/docs/table_of_contents.md). Use the project generater to create template projects after you have installed the GStreamer libraries according to the instructions below.

##Installing gstreamer

This addon depends on the gstreamer SDK. We are using the version 1.0 currently. To install it:

###For OSX (Tested with XCode 4, 10.6,7,8)

First you need to download gstreamer v1.0. To install it under osx install each of the packages described below from the [gstreamer install packages for osx](http://gstreamer.freedesktop.org/data/pkg/osx/)
    
* [gstreamer-1.0-1.2.2-universal.pkg](http://gstreamer.freedesktop.org/data/pkg/osx/1.2.2/gstreamer-1.0-1.2.2-universal.pkg) installs the necesary libraries for applications to run

* [gstreamer-1.0-devel-1.0.8-universal.pkg](http://gstreamer.freedesktop.org/data/pkg/osx/1.0.8/gstreamer-1.0-1.0.8-universal.pkg) installs the development files needed to compile gst aplications

* [gstreamer-1.0-1.2.2-universal-packages.dmg](http://gstreamer.freedesktop.org/data/pkg/osx/1.2.1/gstreamer-1.0-1.2.1-universal-packages.dmg) contains some additional packages that are needed to encode some formats like h264, some of these packages have GPL license or use patented formats. Download the dmg and install the following packages that collection:

This package is needed to do colorspace conversion:

    * gstreamer-1.0-libav-1.0.8-universal.pkg

And these packages will provide h264 encoding and some network utilities to stream h264 and other data formats:
    
    * gstreamer-1.0-codecs-restricted-1.0.8-universal.pkg
    
    * gstreamer-1.0-net-restricted-1.0.8-universal.pkg

If you only want to run an osx app, the development package is not needed but for our applications we needed to the additional packages

Note: on the systems we have tested it seems it's necesary to remove or rename `/Library/Frameworks/GStreamer/Headers/assert.h` or it'll clash with the assert.h in the system and some projects won't compile. In our testing we renamed the file to keep a copy instead of deleting it. 

###For Windows (Tested in visual studio 2012, on Windows 7 & 8)

You need to download GStreamer v1.0. To install it under windows use the 1.2.2 packages located [http://gstreamer.freedesktop.org/data/pkg/windows/1.2.2/](http://gstreamer.freedesktop.org/data/pkg/windows/1.2.2/) any later version from [http://gstreamer.freedesktop.org/data/pkg/windows](http://gstreamer.freedesktop.org/data/pkg/windows) should work but haven't been tested yet.
    
* [gstreamer-1.0-x86-1.2.2.msi](http://gstreamer.freedesktop.org/data/pkg/windows/1.2.2/gstreamer-1.0-x86-1.2.2.msi) installs the necesary libraries for applications to run.

* [gstreamer-1.0-devel-x86-1.2.2.msi](http://gstreamer.freedesktop.org/data/pkg/windows/1.2.2/gstreamer-1.0-devel-x86-1.2.2.msi) installs the development files needed to compile gst aplications.

After installing those 2 packages, you need to add the path to the bin directory of the installation to the PATH environment variable. In windows 8 open the control panel and search for environment variable. In windows 7 type "environment variable" into the run window. Edit the system PATH variable and at the end by adding a ; and the bin folder in the path where you installed gstreamer. The default path should be:

`;C:\gstreamer\1.0\x86\bin`

That will allow you to run the gstreamer tools like gst-launch from the command line in any folder and will let the applications know where to find the runtime dll's.

