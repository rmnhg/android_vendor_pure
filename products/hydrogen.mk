# Copyright (C) 2017 The Pure Nexus Project
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

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for hydrogen
$(call inherit-product, device/xiaomi/hydrogen/aosp_hydrogen.mk)

ifeq ($(WITH_GAPPS),true)
# Inherit arm64 phone gapps
$(call inherit-product-if-exists, vendor/gapps/arm64-phone-gapps.mk)
else
# Misc packages
PRODUCT_PACKAGES += \
    DeskClock \
    messaging \
    SoundRecorder
endif

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := hydrogen
PRODUCT_NAME := hydrogen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Max
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/hydrogen/hydrogen:7.0/NRD90M/7.2.16:user/release-keys \
    PRIVATE_BUILD_DESC="hydrogen-user 7.0 NRD90M 7.2.16 release-keys"
