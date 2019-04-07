# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_jasmine,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/zte/jasmine/full_jasmine.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/products/jasmine/pa_jasmine.mk


# Override AOSP build properties
PRODUCT_NAME := pa_jasmine
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := jasmine
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="K88" \
    TARGET_DEVICE="jasmine" \
    BUILD_FINGERPRINT="ZTE/K88/jasmine:7.1.1/NMF26V/20170828.115541:user/release-keys" \
    PRIVATE_BUILD_DESC="K88-user 7.1.1 NMF26V 20170828.115541 release-keys"

endif
