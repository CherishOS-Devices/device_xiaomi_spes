#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#




# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common cherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
CHERISH_BUILD_TYPE := OFFICIAL
WITH_GMS := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=sthomsonpl




# Camera
$(call inherit-product-if-exists, vendor/miuicamera/config.mk)

# Product Specifics
PRODUCT_NAME := cherish_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-user 11 RKQ1.211001.001 V13.0.9.0.RGCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/spes/spes:11/RKQ1.211001.001/V13.0.9.0.RGCMIXM:user/release-keys
