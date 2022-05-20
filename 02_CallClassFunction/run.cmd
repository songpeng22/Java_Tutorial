@echo off
REM check JAVA_HOME
echo "JAVA_HOME:%JAVA_HOME%"
REM compile java file
javac *.java
REM run and test
java Main
REM clean
del *.class