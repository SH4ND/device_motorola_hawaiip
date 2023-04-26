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

# Inherit from hawaiipl device
$(call inherit-product, device/motorola/hawaiip/device.mk)

PRODUCT_DEVICE := hawaiip
PRODUCT_NAME := twrp_hawaiip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto G22
PRODUCT_MANUFACTURER := motorola
