public class PerformanceTest {
    private static final int ITERATIONS = 10_000_000;
    private static final int WARMUP = 1_000_000;
    
    public static void main(String[] args) {
        System.out.println("Performance Benchmark - 10M iterations");
        System.out.println("=" .repeat(50));
        
        // Warmup
        System.out.println("Warming up JIT...");
        for (int i = 0; i < WARMUP; i++) {
            testComplex();
            testSimple();
            testSeparated();
        }
        
        // Run tests
        System.out.println("\nRunning benchmarks...\n");
        
        long complexTime = benchmark("Complex expression", () -> testComplex());
        long simpleTime = benchmark("Simple expression", () -> testSimple());
        long separatedTime = benchmark("Separated statements", () -> testSeparated());
        
        // Summary
        System.out.println("\n" + "=".repeat(50));
        System.out.println("SUMMARY");
        System.out.println("=".repeat(50));
        System.out.printf("Complex:   %d ns (baseline)%n", complexTime);
        System.out.printf("Simple:    %d ns (%.2f%% of complex)%n", 
            simpleTime, 100.0 * simpleTime / complexTime);
        System.out.printf("Separated: %d ns (%.2f%% of complex)%n", 
            separatedTime, 100.0 * separatedTime / complexTime);
        
        if (complexTime > simpleTime) {
            System.out.printf("\nComplex is %.2f%% SLOWER than simple%n", 
                100.0 * (complexTime - simpleTime) / simpleTime);
        } else {
            System.out.printf("\nComplex is %.2f%% FASTER than simple%n", 
                100.0 * (simpleTime - complexTime) / complexTime);
        }
    }
    
    static long benchmark(String name, Runnable task) {
        long start = System.nanoTime();
        for (int i = 0; i < ITERATIONS; i++) {
            task.run();
        }
        long end = System.nanoTime();
        long avgTime = (end - start) / ITERATIONS;
        System.out.printf("%-25s: %d ns/iteration%n", name, avgTime);
        return avgTime;
    }
    
    static int testComplex() {
        int k = 5, j = 9;
        k += k++ - ++j + k;
        return k + j;  // Prevent dead code elimination
    }
    
    static int testSimple() {
        int k = 5, j = 9;
        k = k + k - (j + 1) + k;
        j = j + 1;
        return k + j;
    }
    
    static int testSeparated() {
        int k = 5, j = 9;
        int temp1 = k;
        k = k + 1;
        j = j + 1;
        int temp2 = temp1 - j + k;
        k = 5 + temp2;
        return k + j;
    }
}
