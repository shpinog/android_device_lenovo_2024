#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from bengal_515 device
$(call inherit-product, device/lenovo/bengal_515/device.mk)

PRODUCT_DEVICE := bengal_515
PRODUCT_NAME := omni_bengal_515
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB331FC
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB331FC_PRC-user 13 TKQ1.230227.001 ZUI_15.1.045_230928_PRC release-keys"

BUILD_FINGERPRINT := Lenovo/TB331FC_PRC/TB331FC:13/TKQ1.230227.001/ZUI_15.1.045_230928_PRC:user/release-keys
