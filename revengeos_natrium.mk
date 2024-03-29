#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from natrium device
$(call inherit-product, device/xiaomi/natrium/device.mk)

# Inherit some common AOSP stuff.
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
BUILD_GAPPS := false
TARGET_DENSITY := xxxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
REVENGEOS_BUILDTYPE := OFFICIAL


# Inherit some common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)
$(call inherit-product, vendor/revengeos/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := revengeos_natrium
PRODUCT_DEVICE := natrium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5s Plus
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="natrium" \
    PRODUCT_NAME="natrium" \
    PRIVATE_BUILD_DESC="natrium-user 7.0 NRD90M V9.6.2.0.NBGMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/natrium/natrium:7.0/NRD90M/V9.6.2.0.NBGMIFD:user/release-keys"
