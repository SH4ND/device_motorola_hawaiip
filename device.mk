#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/hawaiip

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

ENABLE_VIRTUAL_AB := true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-mtkimpl.recovery \
    android.hardware.boot@1.0-mtkimpl

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# MTK PlPath Utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils.recovery
