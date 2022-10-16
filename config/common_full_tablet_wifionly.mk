# Inherit full common BAIKALOS stuff
$(call inherit-product, vendor/baikalos/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include BAIKALOS LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/baikalos/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/baikalos/overlay/dictionaries
