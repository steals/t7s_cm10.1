# Include txx BoardConfigCommon
-include device/hyundai/txx-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/hyundai/t7s/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := t7s
BOARD_KERNEL_BASE := 0x40008000

# fix this up by examining /proc/mtd on a running device
#BOARD_BOOTIMAGE_PARTITION_SIZE := 2097152
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 3145728
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_FLASH_BLOCK_SIZE := 131072

#Kernel configuration
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_n8000_defconfig
#TARGET_PREBUILT_KERNEL := device/hyundai/t7s/kernel

#Recovery configuration
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/hyundai/t7s/recovery/recovery_keys.c

WITH_JIT := true

#Wifi configuration
BOARD_WLAN_DEVICE := mt6620
BOARD_HAVE_SAMSUNG_WIFI          := false
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/mtk_wmt_wifi.ko"
WIFI_DRIVER_MODULE_NAME          := "mtk_wmt_wifi"

#Override values from smdk4412-common
BOARD_WLAN_DEVICE_REV            := 
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := 
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := 
BOARD_HOSTAPD_DRIVER             := 
BOARD_HOSTAPD_PRIVATE_LIB        := 
WIFI_DRIVER_FW_PATH_PARAM        := 
WIFI_DRIVER_FW_PATH_STA          := 
WIFI_DRIVER_FW_PATH_AP           := 
WIFI_DRIVER_FW_PATH_P2P          := 
WIFI_DRIVER_MODULE_ARG           := 
WIFI_DRIVER_MODULE_AP_ARG        := 


#BOARD_USE_SECTVOUT := false

