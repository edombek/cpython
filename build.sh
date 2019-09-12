export ANDROID_NDK_ROOT=/opt/android-ndk
export ANDROID_SDK_ROOT=/opt/android-sdk

git clone https://github.com/kennethreitz/requests
cp -r requests/requests Lib
git clone https://github.com/lorien/captcha_solver
cp -r captcha_solver/captcha_solver Lib/
git clone https://github.com/urllib3/urllib3
cp -r urllib3/src/urllib3 Lib
git clone https://github.com/mysql/mysql-connector-python
cp -r mysql-connector-python/lib/mysql* Lib

cd Android
#make clean

export ANDROID_API=21
export WITH_LIBRARIES="ncurses,libffi,openssl,readline,sqlite"

#make clean
ANDROID_ARCH=armv7 ./makesetup
make
make install
