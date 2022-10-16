# Inherit full common BAIKALOS stuff
$(call inherit-product, vendor/baikalos/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include BAIKALOS LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/baikalos/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/baikalos/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/baikalos/config/telephony.mk)
