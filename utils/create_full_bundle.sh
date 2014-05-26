APP_NAME=$(basename $PWD)
DIR=$( dirname ${BASH_SOURCE[0]} )

rm -r bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework

mkdir -p bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Versions/1.0/lib
cp -r /Library/Frameworks/GStreamer.framework/Versions/1.0/lib/* bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Versions/1.0/lib/
cp -r /Library/Frameworks/GStreamer.framework/Versions/1.0/libexec/gstreamer-1.0/gst-plugin-scanner bin/$APP_NAME.app/Contents/MacOS/
#mkdir -p bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Libraries
#cp /Library/Frameworks/GStreamer.framework/Libraries/libgst*.dylib bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Libraries
ln -s 1.0 bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Versions/Current
python $DIR/cerbero/tools/osxrelocator.py bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Versions/Current/lib /Library/Frameworks/GStreamer.framework/ @executable_path/../Frameworks/GStreamer.framework/ -r
#python cerbero/tools/osxrelocator.py bin/$APP_NAME.app/Contents/Frameworks/GStreamer.framework/Versions/Current/libexec /Library/Frameworks/GStreamer.framework/ @executable_path/../../../../ -r
#python osxrelocator.py $APP_NAME.app/Contents/Frameworks/GStreamer.framework/Versions/Current/bin /Library/Frameworks/GStreamer.framework/ @executable_path/../Frameworks/GStreamer.framework/ -r
python $DIR/cerbero/tools/osxrelocator.py bin/$APP_NAME.app/Contents/MacOS /Library/Frameworks/GStreamer.framework/ @executable_path/../Frameworks/GStreamer.framework/ -r
install_name_tool -change /Library/Frameworks/GStreamer.frameworks/Versions/1.0/libexec/gstreamer-1.0/gst-plugin-scanner @executable_path/gst-plugin-scanner bin/$APP_NAME.app/Contents/MacOS/$APP_NAME

