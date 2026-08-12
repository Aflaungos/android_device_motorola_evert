#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from evert device
$(call inherit-product, device/motorola/evert/device.mk)

PRODUCT_DEVICE := evert
PRODUCT_NAME := twrp_evert
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(6) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="evert-user 9 PPW29.116-16-30 40d1e release-keys"

BUILD_FINGERPRINT := motorola/evert/evert:9/PPW29.116-16-30/40d1e:user/release-keys
