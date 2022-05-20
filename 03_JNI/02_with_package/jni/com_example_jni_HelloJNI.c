// Save as "HelloJNI.c"
#include <jni.h>        // JNI header provided by JDK
#include <stdio.h>      // C Standard IO Header
#include "com_example_jni_HelloJNI.h"   // Generated
 
// Implementation of the native method sayHello()
JNIEXPORT void JNICALL Java_com_example_jni_HelloJNI_sayHello(JNIEnv *env, jobject thisObj) {
   printf("Hello World!\n");
   return;
}