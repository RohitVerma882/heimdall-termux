echo "building..."

${NDK_PATH}/ndk-build \
    NDK_PROJECT_PATH=. \
    APP_BUILD_SCRIPT=Android.mk \
    NDK_APPLICATION_MK=Application.mk \
    NDK_LIBS_OUT=output \
    NDK_DEBUG=0 \
    -j8 || exit 1