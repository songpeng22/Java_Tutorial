#!/bin/bash
# compile .class
echo "compile .class file:"
cd com/example/jni
javac HelloJNI.java
# generate JNI .h file
echo "generate JNI .h interface:"
cd ../../..
javah com.example.jni.HelloJNI
# check 
tree -af
