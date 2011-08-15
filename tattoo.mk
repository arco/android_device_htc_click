#
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/htc/tattoo/tattoo-vendor-blobs.mk)

DEVICE_PACKAGE_OVERLAYS := device/htc/tattoo/overlay

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PACKAGES += \
    librs_jni \
    sensors.bahamas \
    lights.bahamas \
    copybit.bahamas \
    gralloc.bahamas \
    gps.bahamas \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    wlan_loader \
    tiwlan.ini \
    dhcpcd.conf \
    com.android.future.usb.accessory

# Gallery 2D
PRODUCT_PACKAGES += Gallery

PRODUCT_COPY_FILES += \
    device/htc/tattoo/init.bahamas.rc:root/init.bahamas.rc \
    device/htc/tattoo/ueventd.bahamas.rc:root/ueventd.bahamas.rc

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    device/htc/tattoo/keychars/bahamas-keypad.kcm.bin:system/usr/keychars/bahamas-keypad.kcm.bin \
    device/htc/tattoo/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/tattoo/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/tattoo/keylayout/bahamas-keypad.kl:system/usr/keylayout/bahamas-keypad.kl \
    device/htc/tattoo/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/tattoo/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Firmware files
PRODUCT_COPY_FILES += \
    device/htc/tattoo/firmware/Fw1251r1c.bin:system/etc/firmware/Fw1251r1c.bin \
    device/htc/tattoo/firmware/brf6300.bin:system/etc/firmware/brf6300.bin \
    device/htc/tattoo/firmware/brf6350.bin:system/etc/firmware/brf6350.bin

PRODUCT_COPY_FILES += \
    device/htc/tattoo/custom/hosts:system/etc/hosts \
    device/htc/tattoo/custom/sysctl.conf:system/etc/sysctl.conf \
    device/htc/tattoo/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/htc/tattoo/custom/backuptool.sh:system/bin/backuptool.sh \
    device/htc/tattoo/custom/calibrate_screen:system/bin/calibrate_screen

# Extra apps
PRODUCT_COPY_FILES += \
    device/htc/tattoo/custom/app/HTCCalibrate.apk:system/app/HTCCalibrate.apk \
    device/htc/tattoo/custom/app/FancyWidgets.apk:system/app/FancyWidgets.apk \
    device/htc/tattoo/custom/app/ADWNotifier.apk:system/app/ADWNotifier.apk

# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/htc/tattoo/media_profiles.xml:/system/etc/media_profiles.xml

# Kernel Targets
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/tattoo/custom/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Wifi module
PRODUCT_COPY_FILES += \
    device/htc/tattoo/custom/wlan.ko:system/lib/modules/wlan.ko

$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, device/htc/common/common.mk)
$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := htc_tattoo
PRODUCT_DEVICE := tattoo
