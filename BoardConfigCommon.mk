#
# Copyright (C) 2014 ParanoidAndroid
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

LOCAL_PATH := device/oppo/msm8974-common

BOARD_HARDWARE_CLASS += device/oppo/msm8974-common/cmhw

TARGET_KERNEL_SOURCE := kernel/oppo/msm8974

# SELinux
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy
BOARD_SEPOLICY_UNION += \
       app.te \
       device.te \
       vold.te \
       file_contexts 

# Enable workaround for slow rom flash
BOARD_SUPPRESS_SECURE_ERASE := true

# Audio/media
BOARD_USES_SEPERATED_HEADSET_MIC := true
