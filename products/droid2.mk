# Inherit AOSP device configuration for inc.
$(call inherit-product, device/motorola/droid2/droid2.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/2nd_gen

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_droid2
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := droid2
PRODUCT_MODEL := DROID2
PRODUCT_MANUFACTURER := Motorola
PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/aokp/overlay/2nd_gen
