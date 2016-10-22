LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LIBFLAC_WRAPPER_PATH := $(LOCAL_PATH)


#### build FLAC library module ####

LIBFLAC_PROJECT_PATH := $(LOCAL_PATH)/../../../../libflac/
include $(LIBFLAC_PROJECT_PATH)/libFLAC/Android.mk


#### build flac wrapper module ####

include $(CLEAR_VARS)
LOCAL_PATH := $(LIBFLAC_WRAPPER_PATH)

LOCAL_SRC_FILES += flacwrapper.c

LOCAL_C_INCLUDES += $(LIBFLAC_PROJECT_PATH)/include
LOCAL_C_INCLUDES += $(LIBFLAC_PROJECT_PATH)/libFLAC
LOCAL_C_INCLUDES += $(LIBFLAC_PROJECT_PATH)/libFLAC/include

LOCAL_LDLIBS += -llog

LOCAL_STATIC_LIBRARIES := FLAC

LOCAL_MODULE := flacwrapper

include $(BUILD_SHARED_LIBRARY)
