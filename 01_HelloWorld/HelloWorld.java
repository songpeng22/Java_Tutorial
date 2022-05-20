public class HelloWorld {  // Save as HelloJNI.java
   static {
	   System.out.println("HelloWorld::static()....................1");
   }
   
   public static void main(String[] args) {
		//System.loadLibrary("Test1");
		System.out.println("HelloWorld::main().....................1");
	}
}