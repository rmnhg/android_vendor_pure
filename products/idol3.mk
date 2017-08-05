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

# Inherit AOSP device configuration for flamingo
$(call inherit-product, device/alcatel/idol3/aosp_idol3.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := idol3
PRODUCT_NAME := idol3
PRODUCT_BRAND := Alcatel
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_MODEL := Onetouch Idol 3
