#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Everest stuff.
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES = 1080

#Pixel Charger
USE_PIXEL_CHARGER := true

# Everest Flag
EVEREST_MAINTAINER := rmdn.
EVEREST_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_BLUR := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
WITH_GAPPS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_INCLUDE_LAUNCHER3 := true

PRODUCT_NAME := everest_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="garnet_global-user 14 UKQ1.231003.002 V816.0.9.0.UNRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/garnet_global/garnet:14/UKQ1.231003.002/V816.0.9.0.UNRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
