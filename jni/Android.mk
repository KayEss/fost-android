JNI := $(call my-dir)

include $(JNI)/fost-android-ndk/Android.mk
include $(CLEAR_VARS)

include $(TOP_PATH)/opts.mk

LOCAL_PATH := $(JNI)
LOCAL_MODULE := fost-android

LOCAL_SRC_FILES := \
    fost-android.cpp \
    logger.cpp \
    setting.cpp \
    view-assets.cpp \
    webserver.cpp
LOCAL_SHARED_LIBRARIES := \
    boost-filesystem \
    boost-system \
    fost-core \
    fost-inet \
    fost-rproxy \
    fost-urlhandler
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
