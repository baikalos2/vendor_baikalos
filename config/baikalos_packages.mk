# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    SpareParts \
#    LockClock

# Optional packages
PRODUCT_PACKAGES += \
    Aperture \
    Basic \
    PhaseBeam \
    ThemePicker \
    WallpaperPicker2

# su
PRODUCT_PACKAGES += \
    adb_root

ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif

# Extra Optional packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    Email \
    Etar \
    ExactCalculator \
    Exchange2
#    Launcher3Dark

#AicpSetupWizard
ifneq ($(WITH_GMS),true)
PRODUCT_PACKAGES += \
    AicpSetupWizard
endif

# MusicFX
PRODUCT_PACKAGES += \
    MusicFX

# Phonograph
PRODUCT_PACKAGES += \
    Phonograph

# Jelly
PRODUCT_PACKAGES += \
    Jelly

PRODUCT_PACKAGES += \
    GameSpace

# OnDeviceAppPrediction
PRODUCT_PACKAGES += \
    AppPredictionService

# OmniJaws
PRODUCT_PACKAGES += \
    OmniJaws

# OmniStyle
PRODUCT_PACKAGES += \
    OmniStyle

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/fsck.ntfs \
    system/bin/mkfs.ntfs \
    system/bin/mount.ntfs \
    system/%/libfuse-lite.so \
    system/%/libntfs-3g.so

# Fonts packages
#PRODUCT_PACKAGES += \
#    invictrix-fonts

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

PRODUCT_PACKAGES += \
    charger_res_images

# Custom off-mode charger
ifeq ($(WITH_BAIKALOS_CHARGER),true)
PRODUCT_PACKAGES += \
    baikalos_charger_res_images \
    font_log.png \
    libhealthd.baikalos
endif

# Extra tools
PRODUCT_PACKAGES += \
    7z \
    bash \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

#PRODUCT_PACKAGES += \
#    AndroidDarkThemeOverlay \
#    SettingsDarkThemeOverlay

# A/B OTA Optimization
ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script
endif

# Bootanimation include
PRODUCT_PACKAGES += \
    bootanimation.zip

# BAIKALOS OTA
ifneq ($(BAIKALOS_BUILDTYPE),UNOFFICIAL)
PRODUCT_PACKAGES +=  \
   Updater

PRODUCT_COPY_FILES += \
    vendor/baikalos/prebuilt/common/etc/init/init.baikalos-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.baikalos-updater.rc
endif

# BAIKALOS packages
PRODUCT_PACKAGES += \
    AicpExtras \
    BaikalExtras \
    AicpThemesStub \
    TilesWallpaper

# BAIKALOS Ad-block
PRODUCT_PACKAGES += \
    hosts.baikalos_adblock

-include packages/overlays/AICP/product_packages.mk
