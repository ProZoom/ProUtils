LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := serial_port
LOCAL_LDFLAGS := -Wl,--build-id
LOCAL_SRC_FILES := \
	F:\liyang\Github\ProUtils\doc\app\SerialDemo\app\src\main\jni\Android.mk \
	F:\liyang\Github\ProUtils\doc\app\SerialDemo\app\src\main\jni\Application.mk \
	F:\liyang\Github\ProUtils\doc\app\SerialDemo\app\src\main\jni\SerialPort.c \

LOCAL_C_INCLUDES += F:\liyang\Github\ProUtils\doc\app\SerialDemo\app\src\debug\jni
LOCAL_C_INCLUDES += F:\liyang\Github\ProUtils\doc\app\SerialDemo\app\src\main\jni

include $(BUILD_SHARED_LIBRARY)
