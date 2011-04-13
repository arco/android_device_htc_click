$(call inherit-product, device/htc/tattoo/tattoo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_tattoo
PRODUCT_BRAND := htc
PRODUCT_DEVICE := tattoo
PRODUCT_MODEL := HTC Tattoo
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_tattoo BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra Tattoo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/tattoo

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# TI FM radio
$(call inherit-product, vendor/cyanogen/products/ti_fm_radio.mk)

# Set ro.modversion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=nFinityGB-1.0

# Copy tattoo specific prebuilt files
PRODUCT_COPY_FILES +=  \
	device/htc/tattoo/custom/bootanimation.zip:system/media/bootanimation.zip
