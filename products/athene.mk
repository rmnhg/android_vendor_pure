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

# Inherit AOSP device configuration for athene
$(call inherit-product, device/motorola/athene/aosp_athene.mk)

IS_ARM := true

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := athene
PRODUCT_NAME := athene
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := athene

# OTA Pure Nexus
PRODUCT_PROPERTY_OVERRIDES += \
ro.ota.manifest=https://raw.githubusercontent.com/PureNexusProject-Mod/OTA_server/master/athene.json
