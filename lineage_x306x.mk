# Release name
PRODUCT_RELEASE_NAME := x306x

# Inherit some AOSP stuffs
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit Lineage common stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)
$(call inherit-product, vendor/lineage/config/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/x306x/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/lenovo/amar/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_amar
PRODUCT_DEVICE := x306x
PRODUCT_MODEL := Lenovo TB-X306X
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_GMS_CLIENTID_BASE := android-lenovo

BUILD_FINGERPRINT := Lenovo/LenovoTB-X306X_EEA/X306X:13/TQ3A.230901.001/S120712_230301_BMP:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)