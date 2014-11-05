# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/moto/stingray

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/oem-iptables-init.sh:system/bin/oem-iptables-init.sh \
    $(LOCAL_PATH)/proprietary/tty2ttyd:system/bin/tty2ttyd \
    $(LOCAL_PATH)/proprietary/base64:system/bin/base64 \
    $(LOCAL_PATH)/proprietary/libb64.so:system/lib/libb64.so \
    $(LOCAL_PATH)/proprietary/extract-embedded-files:system/bin/extract-embedded-files \
    $(LOCAL_PATH)/proprietary/vril-dump:system/bin/vril-dump \
    $(LOCAL_PATH)/proprietary/logcatd:system/bin/logcatd \
    $(LOCAL_PATH)/proprietary/logcatd-blan:system/bin/logcatd-blan

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libmoto_cdma_ril.so:system/lib/libmoto_cdma_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_rds_ril.so:system/lib/libmoto_rds_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_qmi_ril.so:system/lib/libmoto_qmi_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_nwif_ril.so:system/lib/libmoto_nwif_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_intfutil_ril.so:system/lib/libmoto_intfutil_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_db_ril.so:system/lib/libmoto_db_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_mm_ril.so:system/lib/libmoto_mm_ril.so \
    $(LOCAL_PATH)/proprietary/libmoto_mdmctrl.so:system/lib/libmoto_mdmctrl.so \
    $(LOCAL_PATH)/proprietary/libmoto_lte_ril.so:system/lib/libmoto_lte_ril.so \
    $(LOCAL_PATH)/proprietary/libbabysit.so:system/lib/libbabysit.so \
    $(LOCAL_PATH)/proprietary/mm-wrigley-qc-dump.sh:system/bin/mm-wrigley-qc-dump.sh \
    $(LOCAL_PATH)/proprietary/wrigley-dump.sh:system/bin/wrigley-dump.sh \
    $(LOCAL_PATH)/proprietary/wrigley-diag.sh:system/bin/wrigley-diag.sh \
    $(LOCAL_PATH)/proprietary/wrigley-iptables.sh:system/bin/wrigley-iptables.sh \
    $(LOCAL_PATH)/proprietary/wrigley-fetch-mpr.sh:system/bin/wrigley-fetch-mpr.sh

ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/qbp-dump.sh:system/bin/qbp-dump.sh \
    $(LOCAL_PATH)/proprietary/qbp-apr-dump.sh:system/bin/qbp-apr-dump.sh \
    $(LOCAL_PATH)/proprietary/qbpfs:system/bin/qbpfs
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    $(LOCAL_PATH)/proprietary/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    $(LOCAL_PATH)/proprietary/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml

# VZW Proprietary APK's
PRODUCT_PACKAGES += \
    MotoImsServer \
    MotoLteTelephony \
    MotoModemUtil \
    VZWAPNLib \
    VZWAPNService \
    AppDirectedSmsService \
    ConnMO \
    StingrayDMService

