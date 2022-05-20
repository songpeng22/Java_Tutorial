package com.example.jni;

public class HelloJNI {  // Save as HelloJNI.java
   static {
	   
		try{
			System.loadLibrary("hello");
			System.out.println("Loaded hello");
		}catch(UnsatisfiedLinkError e){
			//nothing to do
			System.out.println("Couldn't load hello");
			System.out.println(e.getMessage());
		}
		// Load native library hello.dll (Windows) or libhello.so (Unixes)
		//  at runtime
		// This library contains a native method called sayHello()
   }
 
   // Declare an instance native method sayHello() which receives no parameter and returns void
   private native void sayHello();
 
   // Test Driver
   public static void main(String[] args) {
      new HelloJNI().sayHello();  // Create an instance and invoke the native method
   }
}
