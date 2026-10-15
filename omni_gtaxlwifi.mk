# Release name
PRODUCT_RELEASE_NAME := gtaxladwifikx

# Inherit from the common Open Source product configuration (Wi-Fi 전용으로 변경)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_core.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtaxladwifikx
PRODUCT_MODEL := SM-T583
PRODUCT_NAME := omni_gtaxladwifikx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
