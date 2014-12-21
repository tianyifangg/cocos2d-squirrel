LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := cocos_squirrel_static

LOCAL_MODULE_FILENAME := libsquirrel

LOCAL_SRC_FILES := manual/SquirrelEngine.cpp \
          manual/SquirrelBasicConversion.cpp \
          manual/squirrel_cocos2dx_manual.cpp \
          auto/squirrel_cocos2dx_auto.cpp \
          ../../../external/squirrel/sqstdlib/sqstdaux.cpp \
          ../../../external/squirrel/sqstdlib/sqstdblob.cpp \
          ../../../external/squirrel/sqstdlib/sqstdio.cpp \
          ../../../external/squirrel/sqstdlib/sqstdmath.cpp \
          ../../../external/squirrel/sqstdlib/sqstdrex.cpp \
          ../../../external/squirrel/sqstdlib/sqstdstream.cpp \
          ../../../external/squirrel/sqstdlib/sqstdstring.cpp \
          ../../../external/squirrel/sqstdlib/sqstdsystem.cpp \
          ../../../external/squirrel/squirrel/sqapi.cpp \
          ../../../external/squirrel/squirrel/sqbaselib.cpp \
          ../../../external/squirrel/squirrel/sqclass.cpp \
          ../../../external/squirrel/squirrel/sqcompiler.cpp \
          ../../../external/squirrel/squirrel/sqdebug.cpp \
          ../../../external/squirrel/squirrel/sqfuncstate.cpp \
          ../../../external/squirrel/squirrel/sqlexer.cpp \
          ../../../external/squirrel/squirrel/sqmem.cpp \
          ../../../external/squirrel/squirrel/sqobject.cpp \
          ../../../external/squirrel/squirrel/sqstate.cpp \
          ../../../external/squirrel/squirrel/sqtable.cpp \
          ../../../external/squirrel/squirrel/sqvm.cpp \
          ../../../external/xxtea/xxtea.cpp


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../external/squirrel/include \
                    $(LOCAL_PATH)/../../../extensions \
                    $(LOCAL_PATH)/../../editor-support/spine \
                    $(LOCAL_PATH)/../../editor-support/cocosbuilder \
                    $(LOCAL_PATH)/../../editor-support/cocostudio \
                    $(LOCAL_PATH)/../../ui \
                    $(LOCAL_PATH)/../../2d \
                    $(LOCAL_PATH)/../../3d \
                    $(LOCAL_PATH)/auto \
                    $(LOCAL_PATH)/manual \
                    $(LOCAL_PATH)/manual/platform/android \
                    $(LOCAL_PATH)/manual/platform/android/jni \
                    $(LOCAL_PATH)/../../../external/xxtea


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../external/squirrel/include \
                           $(LOCAL_PATH)/../../../external \
                           $(LOCAL_PATH)/auto \
                           $(LOCAL_PATH)/manual

LOCAL_CFLAGS := -I$(LOCAL_PATH)/../../../external/squirrel/include

LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += websockets_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_network_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosbuilder_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocostudio_static
LOCAL_WHOLE_STATIC_LIBRARIES += spine_static

LOCAL_CFLAGS += -Wno-psabi
LOCAL_EXPORT_CFLAGS += -Wno-psabi

include $(BUILD_STATIC_LIBRARY)

$(call import-module,extensions)
$(call import-module,.)
$(call import-module,websockets/prebuilt/android)
$(call import-module,network)
$(call import-module,editor-support/cocostudio)
$(call import-module,editor-support/cocosbuilder)
$(call import-module,editor-support/spine)
