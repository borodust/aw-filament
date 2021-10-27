#!/bin/bash

WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
FILAMENT_DIR=$WORK_DIR/filament/

FILAMENT_SKIP_SAMPLES=ON
RELEASE_MODE="MinSizeRel"
FILAMENT_IMPORT_EXECUTABLES_DIR="./"

REST_ARGS=
while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    --arch)
        TARGET_ARCH="$2"
        shift
        shift
        ;;
    --android-sdk)
        RELEASE_MODE="Release"

        ANDROID_HOME="$2"
        shift
        shift
        ;;
    --import-executables-dir)
        FILAMENT_IMPORT_EXECUTABLES_DIR="$2"
        shift
        shift
        ;;
    --samples)
        FILAMENT_SKIP_SAMPLES=OFF
        shift
        ;;
    --debug)
        RELEASE_MODE="Debug"
        shift
        ;;
    *)
        REST_ARGS+="$1"
        shift
        ;;
esac
done

if [[ -z "$REST_ARGS" ]]; then
        echo "Build platform missing, need desktop or android"
        exit 1
fi

BUILD_DIR="$WORK_DIR/build/$REST_ARGS/"

function build_android {
    if [[ -z "$ANDROID_HOME" ]]; then
        echo "Path to Android SDK must be provided via --android-sdk"
        exit 1
    fi

    case "$TARGET_ARCH" in
        aarch64)
            TOOLCHAIN_ARCH=aarch64
            ;;
        armv7a)
            TOOLCHAIN_ARCH=arm7
            ;;
        *)
            echo "Unrecognized TARGET_ARCH provided '$TARGET_ARCH': using aarch64 instead"
            TOOLCHAIN_ARCH=aarch64
            ;;
    esac

    export ANDROID_HOME=$ANDROID_HOME

    mkdir -p $BUILD_DIR && cd $BUILD_DIR
    cmake -G Ninja \
          -DCMAKE_BUILD_TYPE=${RELEASE_MODE} \
          -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
          -DCLAW_ANDROID_BUILD=ON \
          -DBUILD_FILAMENT_UTILS=OFF \
          -DFILAMENT_NDK_VERSION="22.1.7171670" \
          -DFILAMENT_SKIP_SAMPLES=ON \
          -DFILAMENT_BUILD_FILAMAT=OFF \
          -DIMPORT_EXECUTABLES_DIR="$FILAMENT_IMPORT_EXECUTABLES_DIR" \
          -DCMAKE_TOOLCHAIN_FILE="$FILAMENT_DIR/build/toolchain-${TOOLCHAIN_ARCH}-linux-android.cmake" \
          $WORK_DIR
    cmake --build . --config "$RELEASE_MODE"
}

function build_desktop {
    mkdir -p $BUILD_DIR && cd $BUILD_DIR
    cmake -G Ninja \
          -DCMAKE_BUILD_TYPE=${RELEASE_MODE} \
          -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_CXX_COMPILER=clang++ \
          -DCMAKE_SHARED_LINKER_FLAGS="-stdlib=libc++ -lc++abi" \
          -DFILAMENT_SKIP_SAMPLES=${FILAMENT_SKIP_SAMPLES} \
          $WORK_DIR
    cmake --build . --config "$RELEASE_MODE"
}


case "$REST_ARGS" in
    desktop)
        build_desktop
        ;;
    android)
        build_android
        ;;
    *)
        echo "Unrecognized platform $REST_ARGS"
        exit -1
        ;;
esac
