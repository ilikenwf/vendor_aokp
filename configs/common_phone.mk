$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit drm blobs
-include vendor/aokp/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
