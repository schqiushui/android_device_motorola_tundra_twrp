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
PRODUCT_MODEL := XT2243-2
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tundra_cn-user 11 T1SJC33.51-11-2 65ae6 release-keys"

BUILD_FINGERPRINT := motorola/tundra_cn/tundra:11/T1SJC33.51-11-2/65ae6:user/release-keys
