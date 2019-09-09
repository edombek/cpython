export ANDROID_NDK_ROOT=/opt/android-ndk
export ANDROID_SDK_ROOT=/opt/android-sdk

cd Android
#make clean

export ANDROID_API=21
export WITH_LIBRARIES="ncurses,libffi,openssl,readline,sqlite"

ANDROID_ARCH=armv7 ./makesetup
make
make install
