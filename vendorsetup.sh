#
# Copyright 2014 The Android Open Source Project
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

Default_Settings() {
	export ALLOW_MISSING_DEPENDENCIES=true
	export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/13500000.dwmmc0/by-name/recovery"
	export FOX_REPLACE_BUSYBOX_PS="1"
	export FOX_USE_BASH_SHELL="1"
	export FOX_USE_LZMA_COMPRESSION="1"
	export FOX_USE_NANO_EDITOR="1"
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
	export LC_ALL="C"
	export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
	export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
	export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
	export OF_OTA_RES_DECRYPT="1"
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
	export OF_USE_NEW_MAGISKBOOT="1"
	export TARGET_ARCH="arm64"
	export TW_DEFAULT_LANGUAGE="en"
	export FOX_VERSION="R11.1"
	export USE_CCACHE="1"
	export OF_FLASHLIGHT_ENABLE="0"
	export OF_SCREEN_H="1920" # 1920:1200 / 8:5 / 8*120 / changing to 960 somehow doesn't work
	export OF_USE_GREEN_LED="0"
	export OF_MAINTAINER="RobotHanzo"

  	# lzma
  	[ "$FOX_USE_LZMA_COMPRESSION" = "1" ] && export LZMA_RAMDISK_TARGETS="recovery"

  	# A/B devices
  	#[ "$OF_AB_DEVICE" = "1" ] && export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"

  	# magiskboot
  	[ "$OF_USE_MAGISKBOOT_FOR_ALL_PATCHES" = "1" ] && export OF_USE_MAGISKBOOT="1"
}

Default_Settings

add_lunch_combo omni_gta3xlwifi-eng

