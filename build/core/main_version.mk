# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# BAIKALOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.baikalos.display.version=$(BAIKALOS_VERSION) \
    ro.baikalos.buildtype=$(BAIKALOS_BUILDTYPE) \
    ro.baikalos.version.update=$(BAIKALOS_BRANCH)-$(VERSION) \
    ro.modversion=$(BAIKALOS_VERSION) \
    ro.baikalos.version=$(VERSION)-$(BAIKALOS_BUILDTYPE)

# additions for LOS-recovery
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version=$(VERSION) \
    ro.lineage.version=-$(shell date +%Y%m%d)-
#    ro.lineage.version=-$(shell date +%Y%m%d)_$(shell date +%H%M%S)-

# BAIKALOS Stats
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.baikalos.branch=$(BAIKALOS_BRANCH) \
    ro.romstats.url=https://stats.baikalos.com/ \
    ro.romstats.name=BaikalOS \
    ro.romstats.buildtype=$(BAIKALOS_BUILDTYPE) \
    ro.romstats.version=$(VERSION) \
    ro.romstats.tframe=1 \
    ro.romstats.askfirst=1
