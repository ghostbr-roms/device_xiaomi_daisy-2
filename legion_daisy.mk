#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from daisy device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common BeastROMs stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/legion/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := legion_daisy
PRODUCT_DEVICE := daisy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI A2 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="daisy_sprout" \
    PRODUCT_NAME="daisy_sprout" \
    PRIVATE_BUILD_DESC="daisy-user 9 PKQ1.180917.001 V10.0.14.0.PDLMIXM release-keys "

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop	
BUILD_FINGERPRINT := "xiaomi/daisy/daisy_sprout:9/PKQ1.180917.001/V10.0.14.0.PDLMIXM:user/release-keys"

TARGET_VENDOR := Xiaomi
LEGION_MAINTAINER := GhostBR_(Vitor)
LEGION_BUILD_TYPE := UNOFFICIAL
CPU_MODEL := CPU_Snapdragon_625

TARGET_BOOT_ANIMATION_RES := 1080
