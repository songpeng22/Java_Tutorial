#!/bin/bash
# compile .class
echo "compile .class file:"
cd com/jni
javac APITest.java
# generate JNI .h file
echo "generate JNI .h interface:"
cd ../..
javah com.jni.APITest
# check 
tree -af
