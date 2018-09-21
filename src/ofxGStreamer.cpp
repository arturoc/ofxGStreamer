#include "ofConstants.h"
#include "ofFileUtils.h"

#ifdef TARGET_OSX
void ofxGStreamerSetBundleEnvironment(){
    std::string currentDir = ofFilePath::getCurrentWorkingDirectory();
    putenv(strdup(("GST_PLUGIN_SCANNER="+currentDir+"/gst-plugin-scanner").c_str()));
    putenv(strdup(("GTK_PATH="+currentDir+"/../Frameworks/GStreamer.framework/Versions/Current").c_str()));
    putenv(strdup(("GIO_EXTRA_MODULES="+currentDir+"/../Frameworks/GStreamer.framework/Versions/Current/lib/gio/modules").c_str()));
    putenv(strdup(("GST_PLUGIN_SYSTEM_PATH_1_0="+currentDir+"/../Frameworks/GStreamer.framework/Versions/Current/lib/gstreamer-1.0").c_str()));
    putenv(strdup(("GST_PLUGIN_SYSTEM_PATH="+currentDir+"/../Frameworks/GStreamer.framework/Versions/Current/lib/gstreamer-1.0").c_str()));
    putenv(strdup(("GST_PLUGIN_PATH_1_0="+currentDir+"/../Frameworks/GStreamer.framework/Versions/Current/lib/gstreamer-1.0").c_str()));
    putenv(strdup(("GST_PLUGIN_PATH="+currentDir+"/../Frameworks/GStreamer.framework/Versions/Current/lib/gstreamer-1.0").c_str()));
}
#endif
