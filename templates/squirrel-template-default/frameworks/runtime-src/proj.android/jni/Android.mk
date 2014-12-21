LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dsquirrel_shared

LOCAL_MODULE_FILENAME := libcocos2dsquirrel

LOCAL_SRC_FILES := hellosquirrel/main.cpp \
                   ../../Classes/AppDelegate.cpp


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
					
LOCAL_STATIC_LIBRARIES := cocos2d_squirrel_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/squirrel-bindings/proj.android)
