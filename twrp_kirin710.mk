# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP Device Tree Generator
# SPDX-License-Identifier: Apache-2.0

# Device Information
PRODUCT_DEVICE := JSN_AL00a
PRODUCT_NAME := fox_$(PRODUCT_DEVICE)
PRODUCT_BRAND := honor
PRODUCT_MODEL := Honor 8x
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := HWJSN-HM

# Inherit from Prebuilt Products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from RMX3085 Device Tree.
$(call inherit-product, device/honor/JSN_AL00a/device.mk)

# Inherit from GSI Products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

PRODUCT_GMS_CLIENTID_BASE := android-huawei
