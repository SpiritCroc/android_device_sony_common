# Copyright (C) 2014 The Android Open Source Project
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

# CM Build
TARGET_UNOFFICIAL_BUILD_ID := SonyCM

# Audio
include vendor/qcom/extras/proprietary.mk
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
USE_CUSTOM_AUDIO_POLICY := 1

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
DEVICE_SPECIFIC_CAMERA_PATH := hardware/sony/camera

# CM Hardware
BOARD_HARDWARE_CLASS += device/sony/common/cmhw

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true
SONY_BF64_KERNEL_VARIANT := true

# Sepolicy
BOARD_SEPOLICY_DIRS += device/sony/common/sepolicy

# Audio
PRODUCT_PACKAGES += \
    audiod

PRODUCT_COPY_FILES += \
    device/sony/common/rootdir/system/vendor/etc/audio_effects_caf.conf:system/vendor/etc/audio_effects.conf \
    device/sony/common/rootdir/system/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    device/sony/common/rootdir/system/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    device/sony/common/rootdir/system/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so

PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.video=true \
    av.streaming.offload.enable=true

# CM Packages
PRODUCT_PACKAGES += \
    Gello

# Media Test
PRODUCT_PACKAGES += \
    msm-vidc-test

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGSMDevice=1
