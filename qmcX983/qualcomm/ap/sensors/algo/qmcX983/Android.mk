LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)  
#LOCAL_SRC_FILES := obj/ical.a
#LOCAL_MODULE := ical
#LOCAL_MULTILIB		:= 64
#LOCAL_MODULE_TAGS := optional  
#LOCAL_MODULE_CLASS 	:= STATIC_LIBRARIES
#LOCAL_MODULE_SUFFIX	:= .a
#include $(BUILD_PREBUILT)

LOCAL_PREBUILT_LIBS := obj/ical.a
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)  
#LOCAL_SRC_FILES := obj/ical_dummygyro.a
#LOCAL_MODULE := ical_dummygyro 
#LOCAL_MULTILIB		:= 64
#LOCAL_MODULE_TAGS := optional  
#LOCAL_MODULE_CLASS 	:= STATIC_LIBRARIES
#LOCAL_MODULE_SUFFIX	:= .a
#include $(BUILD_PREBUILT)
LOCAL_PREBUILT_LIBS := obj/ical_dummygyro.a
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcalmodule_qmcX983
LOCAL_MODULE_TAGS := optional

#LOCAL_CFLAGS := -DENBALE_DEBUG_WRAPPER
#LOCAL_CFLAGS := -DQST_VIRTUAL_SENSOR

LOCAL_C_INCLUDES += \
			$(LOCAL_PATH)
LOCAL_SRC_FILES += qmcX983_wrapper.c \
					QMCD_API.c

LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
					
LOCAL_SHARED_LIBRARIES := liblog \
	libcutils \
	libdl \
	libutils \
	libnetutils
LOCAL_WHOLE_STATIC_LIBRARIES := ical 
LOCAL_WHOLE_STATIC_LIBRARIES += ical_dummygyro

LOCAL_MULTILIB		:= 64

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)