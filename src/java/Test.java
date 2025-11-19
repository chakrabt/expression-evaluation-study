public class Test {
    public static void main(String args[]) {
        int k = 5, j = 9;
        System.out.println("Before: k = " + k + " j = " + j);
        k += k++ - ++j + k;
        System.out.println("After:  k = " + k + " j = " + j);
        
        // Additional test cases
        testCase2();
        testCase3();
    }
    
    static void testCase2() {
        int x = 10;
        x = x++ + ++x;
        System.out.println("Test 2: x = " + x);
    }
    
    static void testCase3() {
        int a = 5, b = 5;
        a += ++b + a++;
        System.out.println("Test 3: a = " + a + " b = " + b);
    }
}
