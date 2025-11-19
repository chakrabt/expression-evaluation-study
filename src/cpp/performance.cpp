#include <iostream>
#include <chrono>
#include <functional>

const int ITERATIONS = 10000000;
const int WARMUP = 1000000;

int testComplex() {
    int k = 5, j = 9;
    k += k++ - ++j + k;
    return k + j;
}

int testSimple() {
    int k = 5, j = 9;
    k = k + k - (j + 1) + k;
    j = j + 1;
    return k + j;
}

int testSeparated() {
    int k = 5, j = 9;
    int temp1 = k;
    k = k + 1;
    j = j + 1;
    int temp2 = temp1 - j + k;
    k = 5 + temp2;
    return k + j;
}

long benchmark(const char* name, std::function<int()> task) {
    auto start = std::chrono::high_resolution_clock::now();
    volatile int result = 0;
    for (int i = 0; i < ITERATIONS; i++) {
        result += task();
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start);
    long avgTime = duration.count() / ITERATIONS;
    std::cout << name << ": " << avgTime << " ns/iteration" << std::endl;
    return avgTime;
}

int main() {
    std::cout << "Performance Benchmark - 10M iterations" << std::endl;
    std::cout << std::string(50, '=') << std::endl;
    
    // Warmup
    std::cout << "Warming up..." << std::endl;
    for (int i = 0; i < WARMUP; i++) {
        testComplex();
        testSimple();
        testSeparated();
    }
    
    std::cout << "\nRunning benchmarks...\n" << std::endl;
    
    long complexTime = benchmark("Complex expression   ", testComplex);
    long simpleTime = benchmark("Simple expression    ", testSimple);
    long separatedTime = benchmark("Separated statements ", testSeparated);
    
    std::cout << "\n" << std::string(50, '=') << std::endl;
    std::cout << "SUMMARY" << std::endl;
    std::cout << std::string(50, '=') << std::endl;
    std::cout << "Complex:   " << complexTime << " ns (baseline)" << std::endl;
    std::cout << "Simple:    " << simpleTime << " ns (" 
              << (100.0 * simpleTime / complexTime) << "% of complex)" << std::endl;
    std::cout << "Separated: " << separatedTime << " ns (" 
              << (100.0 * separatedTime / complexTime) << "% of complex)" << std::endl;
    
    return 0;
}
