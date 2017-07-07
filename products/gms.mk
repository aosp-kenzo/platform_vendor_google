# Copyright (C) 2016 The Sony AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# vendor path
VENDOR_AOSP_PATH := vendor/google

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=0 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.setupwizard.mode=DISABLED

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(VENDOR_AOSP_PATH)/overlay/common

# OpenGapps
GAPPS_VARIANT := mini
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_DIALER_OVERRIDES := true

PRODUCT_PACKAGES += \
     GoogleCamera \
     LatinImeGoogle \
     GoogleContacts 

GAPPS_EXCLUDED_PACKAGES += \
     YouTube \
     Maps \
     PrebuiltGmail \
     PlusOne \
     Hangouts \
     CalculatorGoogle \
     CalendarGooglePrebuilt

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/google/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

$(call inherit-product, vendor/google/build/opengapps-packages.mk)