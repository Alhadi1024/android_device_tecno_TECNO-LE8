#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-LE8 device
$(call inherit-product, device/tecno/LE8/device.mk)

PRODUCT_DEVICE := LE8
PRODUCT_NAME := twrp_LE8
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LE8
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_le8_h771-user 11 RP1A.200720.011 78515 release-keys"

BUILD_FINGERPRINT := TECNO/LE8-GL/LE8:11/RP1A.200720.011/220902V932:user/release-keys
