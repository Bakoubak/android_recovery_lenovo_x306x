# Release name
PRODUCT_RELEASE_NAME := amar

# Inherit some common TWRP stuff.
# For PitchBlack use vendor/pb/config/common.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/amar/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/lenovo/amar/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_amar
PRODUCT_DEVICE := amar
PRODUCT_MODEL := X306X
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := lenovo
PRODUCT_GMS_CLIENTID_BASE := android-lenovo