# Inherit AOSP device configuration for inc.
$(call inherit-product, device/motorola/droid2we/droid2we.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/2nd_gen


#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_droid2we
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := droid2we
PRODUCT_MODEL := DROID2 Global
PRODUCT_MANUFACTURER := Motorola

PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
