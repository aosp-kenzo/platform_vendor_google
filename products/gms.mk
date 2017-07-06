# vendor path
VENDOR_PATH := vendor/google

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(VENDOR_PATH)/overlay/common

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true

# OpenGapps
GAPPS_VARIANT := mini
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true

PRODUCT_PACKAGES += \
     GoogleCamera \
     GooglePinyinIME \
     LatinImeGoogle

GAPPS_EXCLUDED_PACKAGES += \
     YouTube \
     Maps \
     PrebuiltGmail \
     PlusOne \
     Hangouts

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

$(call inherit-product, vendor/google/build/opengapps-packages.mk)