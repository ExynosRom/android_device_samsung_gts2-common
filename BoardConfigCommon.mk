LOCAL_PATH := device/samsung/gts2-common

# Platform
TARGET_SLSI_VARIANT := cm

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include


# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.universal5433

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# F2FS support
TARGET_USERIMAGES_USE_F2FS := true
 
# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/gts2-common/sepolicy

# Seccomp filters
BOARD_SECCOMP_POLICY := device/samsung/gts2-common/seccomp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Macloader
BOARD_HAVE_SAMSUNG_WIFI := true

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/etc/wifi/bcmdhd_apsta.bin"

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Hardware
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# Charger/Healthd
WITH_LINEAGE_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging
#BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# blockdev --getbsz /dev/block/mmcblk0p9
BOARD_FLASH_BLOCK_SIZE := 4096

# /proc/partitions * 2 (why?) * BLOCK_SIZE (512) = size in bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 14680064
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27657240576

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_VENDOR := samsung

# Audio HAL variant
TARGET_AUDIOHAL_VARIANT := samsung

# Seiren audio
BOARD_USE_ALP_AUDIO := true
BOARD_USE_SEIREN_AUDIO := true

# HWCServices
BOARD_USES_HWC_SERVICES := true

# Virtual Display
BOARD_USES_VIRTUAL_DISPLAY := true

# HDMI
BOARD_USES_NEW_HDMI := true
BOARD_USES_GSC_VIDEO := true
BOARD_USES_CEC := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_NEON_BLITANTIH := true
BOARD_USES_FIMGAPI_V4L2 := false

# (G)SCALER
BOARD_USES_SCALER := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true

# WiFi Display
BOARD_USES_WFD := true

# Graphics
USE_OPENGL_RENDERER := true

# Avoid buffer swap timing issues
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/exynos5433
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-

# Extended filesystem support
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true

# Variant
TARGET_POWERHAL_VARIANT := samsung

TARGET_ARCH := arm

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos5433

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53.a57

TARGET_BOOTLOADER_BOARD_NAME := universal5433

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4

# Ant+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

### LIGHTS
TARGET_PROVIDES_LIBLIGHT := false

# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true
