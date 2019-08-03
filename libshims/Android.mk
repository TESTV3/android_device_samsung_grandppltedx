# Shim for ims
#-
# 06-28 12:48:21.015  6324  6324 F libc    : CANNOT LINK EXECUTABLE "/system/bin/imsd": cannot locate symbol "_ZN7android10AudioTrack3setE19audio_stream_type_tj14audio_format_tjj20audio_output_flags_tPFviPvS4_ES4_jRKNS_2spINS_7IMemoryEEEbiNS0_13transfer_typeEPK20audio_offload_info_tiiPK18audio_attributes_tb" referenced by "/system/lib/libsec-ims.so"...

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := secims_shim.cpp
LOCAL_MODULE := libshim_secims
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

# MTK Thermal
#- why would thermal need stuff from net utils??
#- this is an old L.OS patch to adopt MTK Hardware. Was abandoned for some reasons~

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	thermal_shim.cpp

LOCAL_MODULE := libshim_thermal
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	mtkomx_shim.cpp
	
LOCAL_SRC_FILES := GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES := libui

# ( _ZN7android14CameraMetadata14getTagFromNameEPKcPKNS_19VendorTagDescriptorEPj )
LOCAL_SRC_FILES += misc.cpp

LOCAL_MODULE := libshim_mtkomx-mm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

