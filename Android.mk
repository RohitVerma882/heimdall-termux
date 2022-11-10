LOCAL_PATH := $(call my-dir)

#
# libusb
#
include $(CLEAR_VARS)
LIBUSB_INCLUDES = $(LOCAL_PATH)/libusb $(LOCAL_PATH)/libusb/libusb
LOCAL_MODULE := libusb
LOCAL_C_INCLUDES := $(LIBUSB_INCLUDES) $(LOCAL_PATH)/libusb/libusb/os $(LOCAL_PATH)/libusb/android
LOCAL_EXPORT_C_INCLUDES := $(LIBUSB_INCLUDES)
LOCAL_CFLAGS := -fvisibility=hidden -pthread
LOCAL_SRC_FILES := \
    libusb/libusb/core.c \
    libusb/libusb/descriptor.c \
    libusb/libusb/hotplug.c \
    libusb/libusb/io.c \
    libusb/libusb/sync.c \
    libusb/libusb/strerror.c \
    libusb/libusb/os/linux_usbfs.c \
    libusb/libusb/os/events_posix.c \
    libusb/libusb/os/threads_posix.c \
    libusb/libusb/os/linux_netlink.c
include $(BUILD_STATIC_LIBRARY)



#
# heimdall
#
include $(CLEAR_VARS)
LOCAL_MODULE:= heimdall
LOCAL_C_INCLUDES := $(LOCAL_PATH)/heimdall
LOCAL_CPPFLAGS := -D_LARGE_FILES=1 -D_LARGEFILE_SOURCE=1 -DOS_LINUX
LOCAL_STATIC_LIBRARIES := libusb
LOCAL_SRC_FILES := \
    heimdall/main.cpp \
    heimdall/Arguments.cpp \
    heimdall/BridgeManager.cpp \
    heimdall/ClosePcScreenAction.cpp \
    heimdall/DetectAction.cpp \
    heimdall/DownloadPitAction.cpp \
    heimdall/FlashAction.cpp \
    heimdall/HelpAction.cpp \
    heimdall/InfoAction.cpp \
    heimdall/Interface.cpp \
    heimdall/PrintPitAction.cpp \
    heimdall/Utility.cpp \
    heimdall/VersionAction.cpp \
    heimdall/libpit.cpp
include $(BUILD_EXECUTABLE)
