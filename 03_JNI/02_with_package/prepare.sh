#!/bin/bash
# compile .class
echo "compile .class file:"
cd com/jni
javac HelloJNI.java
# generate JNI .h file
echo "generate JNI .h interface:"
cd ../..
javah com.jni.HelloJNI
# check 
tree -af
