#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# compile JNI
echo "compile HelloJNI.c into libhello.so:"
gcc -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" -shared -o libhello.so jni/com_jni_HelloJNI.c

# compile .java
echo "javac HelloJNI.java"
cd com/jni
javac HelloJNI.java
cd ../..

# runs java JNI
echo "java -Djava.library.path=. com.jni.HelloJNI"
java -Djava.library.path=. com.jni.HelloJNI

# clean
rm *.so 
rm ./com/jni/HelloJNI.class
