# Inherit AOSP device configuration for inc.
$(call inherit-product, device/hp/tenderloin/full_tenderloin.mk)

# Inherit some common classicnerd stuff.
$(call inherit-product, vendor/cn/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := classic_tenderloin
PRODUCT_BRAND := HP
PRODUCT_DEVICE := tenderloin

PRODUCT_MODEL := Touchpad
PRODUCT_MANUFACTURER := HP
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=touchpad \
    BUILD_ID=IML74K \
    BUILD_FINGERPRINT="hp/hp_tenderloin/tenderloin:4.0.3/IML74K/221360:user/release-keys" \
    PRIVATE_BUILD_DESC="tenderloin-user 4.0.3 IML74K 221360 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Butta
PRODUCT_VERSION_DEVICE_SPECIFIC := v3.2-Odex

PRODUCT_MOTD :="\--------------------MESSAGE---------------------\Thank you for choosing Classicnerd for your HP Touchpad\nGet the latest rom at www.classicnerd.net"

#PRODUCT_PACKAGES += \
#    Camera

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cn/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cn/prebuilt/xga/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cn/prebuilt/xga/media/android_audio.mp3:system/media/android_audio.mp3

# USB
#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,adb
#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
