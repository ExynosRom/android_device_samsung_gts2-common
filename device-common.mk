DEVICE_PACKAGE_OVERLAYS += device/samsung/gts2-common/overlay

LOCAL_PATH := device/samsung/gts2-common
DEVICE_PATH := device/samsung/gts2-common

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5433 \
    init.power.rc \
    init.samsung.rc \
    init.wifi.rc \
    init.universal5433.rc \
    init.universal5433.usb.rc \
    ueventd.universal5433.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml
	
# Graphics
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

# hardware/samsung/AdvancedDisplay (MDNIE)
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Radio
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full

PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    modemloader

PRODUCT_PACKAGES += \
    SamsungServiceMode

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
	fingerprint.exynos5 \
	libbauthtzcommon_shim	
	
# Offmode charger
# Use cm images if available, aosp ones otherwise
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images

PRODUCT_CHARACTERISTICS := tablet

# Configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Packages
PRODUCT_PACKAGES += \
    macloader \
    wifiloader \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf
	
# Packages
PRODUCT_PACKAGES += \
    camera.universal5433

# Configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(DEVICE_PATH)/configs/gps/gps.xml:system/etc/gps.xml
	
# Configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/idc/ft5x06_ts.idc:/system/usr/idc/ft5x06_ts.idc \
    $(DEVICE_PATH)/configs/keylayout/gpio-keys.kl:/system/usr/keylayout/gpio-keys.kl \
    $(DEVICE_PATH)/configs/keylayout/sec_touchkey.kl:/system/usr/keylayout/sec_touchkey.kl

# Packages
PRODUCT_PACKAGES += \
    lights.universal5433

# Configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(DEVICE_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

# Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal5433 \
    libtinycompress

# Samsung LSI BSP
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5433/exynos5433.mk)

# Packages
PRODUCT_PACKAGES += \
    gralloc.exynos5 \
    libion \
    libfimg

# Configs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(DEVICE_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Packages
PRODUCT_PACKAGES += \
    power.universal5433

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# call the proprietary setup
$(call inherit-product, vendor/samsung/gts2-common/gts2-common-vendor.mk)
