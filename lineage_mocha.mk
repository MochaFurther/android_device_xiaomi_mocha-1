# Inherit device configuration for mocha.
$(call inherit-product, device/xiaomi/mocha/device.mk)

# Inherit makefile to set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_k.mk)

# Inherit AOSP base configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit common Lineage configuration for tablets
$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536
TARGET_BOOTANIMATION_HALF_RES := true

PRODUCT_NAME := lineage_mocha
PRODUCT_DEVICE := mocha
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI PAD

PRODUCT_GMS_CLIENTID_BASE := android-google

# Inherit Proprietary Vendor Blobs
$(call inherit-product-if-exists, vendor/nvidia/shield/mocha.mk)
