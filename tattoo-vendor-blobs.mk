# libgps is necessary to complete the compilation
PRODUCT_COPY_FILES += \
    device/htc/tattoo/custom/logo.rle:root/logo.rle \
    device/htc/tattoo/proprietary/libgps.so:obj/lib/libgps.so

# Proprietary stuff
PRODUCT_COPY_FILES += \
    device/htc/tattoo/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/tattoo/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/tattoo/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/tattoo/proprietary/agps_rm:/system/etc/agps_rm \
    device/htc/tattoo/proprietary/libaudioeq.so:system/lib/libaudioeq.so \
    device/htc/tattoo/proprietary/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so \
    device/htc/tattoo/proprietary/libgps.so:system/lib/libgps.so \
    device/htc/tattoo/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/tattoo/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/tattoo/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/tattoo/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/tattoo/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/htc/tattoo/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
    device/htc/tattoo/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/tattoo/proprietary/sensors.bahamas.so:system/lib/hw/sensors.bahamas.so \
    device/htc/tattoo/proprietary/akm8973:system/bin/akm8973

ifdef WITH_WINDOWS_MEDIA
PRODUCT_COPY_FILES += \
    device/htc/tattoo/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
    device/htc/tattoo/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \
    device/htc/tattoo/proprietary/libpvasfcommon.so:system/lib/libpvasfcommon.so \
    device/htc/tattoo/proprietary/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \
    device/htc/tattoo/proprietary/libpvasflocalpb.so:system/lib/libpvasflocalpb.so \
    device/htc/tattoo/proprietary/pvasflocal.cfg:system/etc/pvasflocal.cfg
endif
