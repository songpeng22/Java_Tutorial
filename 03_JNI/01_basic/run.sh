#!/bin/bash
# compile JNI
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo "compile HelloJNI.c into libhello.so:"
gcc -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" -shared -o libhello.so HelloJNI.c
# compile java
echo "javac HelloJNI.java"
javac HelloJNI.java
# runs java JNI
echo "java -Djava.library.path=. HelloJNI"
java -Djava.library.path=. HelloJNI
# clean
rm *.class *.so 
