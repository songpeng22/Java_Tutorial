public class Main {
    public static void main(String[] args) {
         //System.loadLibrary("Test1");
         System.out.println("Main::main().....................1");
         //Call class function
         APITest apiTester = new APITest();
         apiTester.APICaller();
     }
 }