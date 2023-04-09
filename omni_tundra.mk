#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

PRODUCT_DEVICE := tundra
PRODUCT_NAME := omni_tundra
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tundra_g-user 11 S3SJ32.1-86-2 3d4dd3 release-keys"

BUILD_FINGERPRINT := motorola/tundra_g/tundra:11/S3SJ32.1-86-2/3d4dd3:user/release-keys
