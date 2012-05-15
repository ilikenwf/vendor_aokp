# Inherit AOSP device configuration for inc.
$(call inherit-product, device/motorola/shadow/shadow.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/2nd_gen

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_shadow
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := shadow
PRODUCT_MODEL := DROIDX
PRODUCT_MANUFACTURER := Motorola

PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
