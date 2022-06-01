package com.jni;

public class APITest {

	static {
		System.out.println("+APITest::loadLibrary()....................1");
		System.loadLibrary("api"); // Load native library hello.dll (Windows) or libhello.so (Unixes)
		System.out.println("-APITest::loadLibrary()....................1");
		//  at runtime
		// This library contains a native method called sayHello()
	}
 
	// Declare an instance native method sayHello() which receives no parameter and returns void
	public native void APICaller();
 
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//System.loadLibrary("Test1");
		System.out.println("APITest::main()....................1");
		//new APITest().APICaller();  // Create an instance and invoke the native method
	}
}
