#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/trltetmo/trltetmo-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/trltetmo/overlay

# common trlte
$(call inherit-product, device/samsung/trlte-common/trlte.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560 \
    ro.du.updater=trltetmo

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
	$(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
	$(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
        $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom
