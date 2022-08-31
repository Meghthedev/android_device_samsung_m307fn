#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the common tree
include device/samsung/m30s-common/BoardConfigCommon.mk

# Inherit from the proprietary configuration
include vendor/samsung/m307fn/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/m307fn

TARGET_OTA_ASSERT_DEVICE := m307fn,m30s,m30sxx

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/device_manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
