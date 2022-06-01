#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from m307fn device
$(call inherit-product, device/samsung/m307fn/device.mk)

## Inherit some common dotOS stuff
$(call inherit-product, vendor/dot/config/common.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

## Device identifier, this must come after all inclusions
PRODUCT_NAME := dot_m307fn
PRODUCT_DEVICE := m307fn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M307FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 28

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m30sxx-user 11 RP1A.200720.012 M307FNXXS4CVC1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/m30sxx/m30s:11/RP1A.200720.012/M307FNXXS4CVC1:user/release-keys"

