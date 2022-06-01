#!/bin/bash
# generate jar file with classes and libs
echo "jar cvf APITest.jar -C . com/jni/APITest.class -C .. libs/ -C .. AndroidManifest.xml"
jar cfev APITest.jar com.jni.APITest -C src com/jni/ libs/ AndroidManifest.xml  project.properties .classpath .project

# show content tree in jar file
echo "jar -tf APITest.jar"
jar -tf APITest.jar

# cp jar file to JARTest project
cp APITest.jar ../JARTest/libs -v
