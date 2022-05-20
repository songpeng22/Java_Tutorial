@echo off
REM check JAVA_HOME
echo "JAVA_HOME:%JAVA_HOME%"
REM compile java file
javac HelloWorld.java
REM run and test
java HelloWorld
REM clean
del *.class