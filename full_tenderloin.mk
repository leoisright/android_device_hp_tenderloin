#
# Copyright (C) 2011 The CyanogenMod Project
# Copyright (C) 2012 The Classicnerd Project
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

# Proprietary stuff.
$(call inherit-product-if-exists, vendor/hp/tenderloin/tenderloin-vendor.mk)

# This is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/hp/tenderloin/overlay

# Custom init files.
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/init.tenderloin.rc:root/init.tenderloin.rc \
    device/hp/tenderloin/init.tenderloin.usb.rc:root/init.tenderloin.usb.rc \
    device/hp/tenderloin/ueventd.tenderloin.rc:root/ueventd.tenderloin.rc

PRODUCT_COPY_FILES += \
    device/hp/tenderloin/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/hp/tenderloin/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/hp/tenderloin/prebuilt/bluetooth/hciattach:system/bin/hciattach_awesome \
    device/hp/tenderloin/makemulti.sh:makemulti.sh \
    device/hp/tenderloin/prebuilt/boot/moboot.splash.Classicnerd.tga:moboot.splash.Classicnerd.tga \
    device/hp/tenderloin/prebuilt/boot/moboot.background.tga:moboot.background.tga \
    device/hp/tenderloin/prebuilt/boot/moboot.default:moboot.default

# Add touchcreen configuration file
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/HPTouchpad.idc:system/usr/idc/HPTouchpad.idc

# Dualboot Magic
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/boot_webos:system/bin/boot_webos

# Vold configuration
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/vold.fstab:system/etc/vold.fstab \

PRODUCT_COPY_FILES += \
    device/hp/tenderloin/media_profiles.xml:/system/etc/media_profiles.xml \

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/hp/tenderloin/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/hp/tenderloin/prebuilt/usr/keychars/ffa-keypad_numeric.kcm.bin:system/usr/keychars/ffa-keypad_numeric.kcm.bin \
    device/hp/tenderloin/prebuilt/usr/keychars/ffa-keypad_qwerty.kcm.bin:system/usr/keychars/ffa-keypad_qwerty.kcm.bin \
    device/hp/tenderloin/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/hp/tenderloin/prebuilt/usr/keylayout/handset.kl:system/usr/keylayout/handset.kl \
    device/hp/tenderloin/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/hp/tenderloin/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/hp/tenderloin/prebuilt/usr/keylayout/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl

# Kernel modules
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/prebuilt/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/hp/tenderloin/prebuilt/wifi/ar6000.ko:system/lib/modules/ar6000.ko \
    device/hp/tenderloin/prebuilt/modules/cifs.ko:system/lib/modules/cifs.ko \
    device/hp/tenderloin/prebuilt/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
    device/hp/tenderloin/prebuilt/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/hp/tenderloin/prebuilt/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/hp/tenderloin/prebuilt/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/hp/tenderloin/prebuilt/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/hp/tenderloin/prebuilt/modules/nls_utf8.ko:system/lib/modules/nls_utf8.ko \
    device/hp/tenderloin/prebuilt/modules/ntfs.ko:system/lib/modules/ntfs.ko \
    device/hp/tenderloin/prebuilt/modules/oprofile.ko:system/lib/modules/oprofile.ko \
    device/hp/tenderloin/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/hp/tenderloin/prebuilt/modules/tcp_bic.ko:system/lib/modules/tcp_bic.ko \
    device/hp/tenderloin/prebuilt/modules/tun.ko:system/lib/modules/tun.ko

#Wifi Firmware
# from kernel.org
PRODUCT_COPY_FILES += \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/data.patch.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.SD31.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6003/hw2.0/athwlan.bin.z77 \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.WB31.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/otp.bin.z77:/system/etc/firmware/ath6k/AR6003/hw2.0/otp.bin.z77 \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.SD32.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/endpointping.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/endpointping.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/data.patch.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.SD31.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.WB31.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.SD32.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/otp.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/otp.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/data.patch.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.SD31.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6003/hw1.0/athwlan.bin.z77 \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.WB31.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/otp.bin.z77:/system/etc/firmware/ath6k/AR6003/hw1.0/otp.bin.z77 \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.SD32.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6002/eeprom.data:/system/etc/firmware/ath6k/AR6002/eeprom.data \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6002/data.patch.hw2_0.bin:/system/etc/firmware/ath6k/AR6002/data.patch.hw2_0.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6002/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6002/athwlan.bin.z77 \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6002/eeprom.bin:/system/etc/firmware/ath6k/AR6002/eeprom.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/LICENSE.atheros_firmware:/system/etc/firmware/ath6k/LICENSE.atheros_firmware \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.CUSTOM.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.CUSTOM.bin \
    device/hp/tenderloin/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.CUSTOM.bin

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This is a tablet.
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := xlarge mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# QCOM Hal
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    hwcomposer.msm8660 \
    gralloc.msm8660 \
    liboverlay \
    libmemalloc \
    libtilerenderer \
    libgenlock \
    libQcomUI

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils \
    audio.primary.tenderloin \

# Sensors, misc
PRODUCT_PACKAGES += \
    librs_jni \
    wpa_supplicant.conf \
    sensors.tenderloin \
    lights.tenderloin \
    ts_srv \
    dosfsck \
    bcattach \
    serial \
    com.android.future.usb.accessory \
    rebootcmd

PRODUCT_PACKAGES += \
	make_ext4fs

# Property overrides.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    ro.com.google.networklocation=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# Prebuilt kernel.
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/hp/tenderloin/prebuilt/boot/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Copy the kernel.
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
