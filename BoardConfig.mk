# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_VARIANT := generic

# Bootloader
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.boottime=0 androidboot.hardware=gtaxldwifikx

# Kernel
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

# Ramdisk
BOARD_RAMDISK_OFFSET := 0x00008000
BOARD_RAMDISK_SIZE := 33554432

# Boot Image
BOARD_BOOTIMAGE_SIZE := 33554432
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Device Specifics
BOARD_USES_NAND := false
BOARD_HAS_MTK_HARDWARE := false

# Storage / Partitioning (실제 파티션 크기 반영: 31457280 bytes)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 31457280

# Display / Screen Resolution (Termux 확인값 적용)
BOARD_RECOVERY_SCREEN_WIDTH := 1200
BOARD_RECOVERY_SCREEN_HEIGHT := 1920
