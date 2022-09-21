# Copyright (C) 2022 Teracube-Inc
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable debug options for zirconia product.
TERACUBE_DEBUG := partial

# Inherit from zirconia device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Teracube
PRODUCT_DEVICE := zirconia
PRODUCT_MANUFACTURER := Teracube
PRODUCT_NAME := lineage_zirconia
PRODUCT_MODEL := Teracube 2e

PRODUCT_GMS_CLIENTID_BASE := android-ragentek
TARGET_VENDOR := Teracube
TARGET_VENDOR_PRODUCT_NAME := zirconia
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Teracube_2e \
    TARGET_PRODUCT=Teracube_2e \
    PRIVATE_BUILD_DESC="full_yk673v6_lwg62_64-user 11 RP1A.200720.011 p1k61v164bspP16 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Teracube/Teracube_2e/Teracube_2e:11/RP1A.200720.011/202111011925:user/release-keys
