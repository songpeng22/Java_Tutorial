// Save as "HelloJNI.c"
#include <jni.h>        // JNI header provided by JDK
#include <stdio.h>      // C Standard IO Header
#include <android/log.h>
#include "com_jni_APITest.h"  // Generated

//#include "test.h"

// Implementation of the native method sayHello()
JNIEXPORT void JNICALL Java_com_jni_APITest_APICaller(JNIEnv *env, jobject thisObj) {

	__android_log_print(ANDROID_LOG_INFO, "APITest", "Java_com_jni_APITest_APICaller.............2");
	//printf("Java_com_jni_APITest_APICaller().....................................................\n");

	//testLog();

	return;
}
