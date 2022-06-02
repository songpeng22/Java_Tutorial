#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export NDK_HOME=/opt/android-ndk/ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/

# compile JNI
echo "compile APITest.c into libapi.so:"
$NDK_HOME\aarch64-linux-android21-clang -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" -shared -o libapi.so jni/com_jni_APITest.c -L ../libs/arm64-v8a -l log -l Test
mv libapi.so ../libs/arm64-v8a/ -v

# compile .java
#echo "javac APITest.java"
#cd com/jni
#javac APITest.java
#cd ../..

# runs java JNI
#echo "java -Djava.library.path=. com.jni.APITest"
#java -Djava.library.path=. com.jni.APITest

# clean
#rm *.so 
#rm ./com/jni/APITest.class
