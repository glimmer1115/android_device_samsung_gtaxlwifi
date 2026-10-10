# BoardConfig.mk for Samsung SM-T583 (Galaxy Tab A 10.1 2016)

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_PROFILE := generic

# Bootloader / Kernel Metadata (Synchronized with Stock Recovery)
# These values are critical to prevent bootloops
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_HEADER_VERSION := 1

# mkbootimg arguments
# Adjusted to match stock recovery's offset and command line
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000\
                       --ramdisk_offset 0x01000000\
                       --tags_offset 0x00000100\
                       --base 0x80008000

# Recovery Specifics
BOARD_RECOVERY_BOARDCONFIG_FILE := BoardConfig.mk
BOARD_FLASH_BLOCK_SIZE := 131072

# Partition sizes and offsets (Adjusted for SM-T583)
BOARD_BOOTIMAGE_SIZE := 16384 * 1024
BOARD_RECOVERYIMAGE_SIZE := 16384 * 1024
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0 # Dynamic or specific to PIT
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0

# Samsung Specifics
BOARD_HAS_SAMSUNG_RECOVERY := true
BOARD_SAMSUNG_RECOVERY_BOOT_IMAGE := true

# Kernel Command Line
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 androidboot.selinux=permissive androidboot.bootdevice=samsung,exynos7870
