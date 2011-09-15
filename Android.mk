LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),tattoo)
    subdir_makefiles := \
        $(LOCAL_PATH)/libcopybit/Android.mk \
        $(LOCAL_PATH)/libgralloc/Android.mk \
        $(LOCAL_PATH)/liblights/Android.mk \
        $(LOCAL_PATH)/libcamera/Android.mk \
        $(LOCAL_PATH)/libsensors/Android.mk

    include $(subdir_makefiles)
endif
