LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocosplayer_shared

LOCAL_MODULE_FILENAME := libcocosplayer

LOCAL_SRC_FILES := cocosplayer/main.cpp \
                   ../../shared/Classes/PlayerStatus.cpp\
                   ../../shared/Classes/AppDelegate.cpp \
                   ../../shared/Classes/MainSceneHelper.cpp \
	 	   ../../shared/Classes/Java_org_cocos2dx_cocosplayer_CocosPlayerSocket.cpp \
	 	   ../../shared/Classes/Cocos2dPlayerCommon.cpp \
	 	   ../../shared/Classes/StreamMessagingHelper.cpp \




LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../shared/Classes

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += spidermonkey_static
LOCAL_WHOLE_STATIC_LIBRARIES += scriptingcore-spidermonkey

LOCAL_EXPORT_CFLAGS := -DCOCOS2D_DEBUG=2 -DCOCOS2D_JAVASCRIPT

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,CocosDenshion/android)
$(call import-module,external/chipmunk)
$(call import-module,scripting/javascript/spidermonkey-android)
$(call import-module,scripting/javascript/bindings)
