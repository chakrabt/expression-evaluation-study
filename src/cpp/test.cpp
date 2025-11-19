#include <iostream>

int main() {
    int k = 5, j = 9;
    std::cout << "Before: k = " << k << " j = " << j << std::endl;
    k += k++ - ++j + k;
    std::cout << "After:  k = " << k << " j = " << j << std::endl;
    
    // Test 2
    int x = 10;
    x = x++ + ++x;
    std::cout << "Test 2: x = " << x << std::endl;
    
    // Test 3
    int a = 5, b = 5;
    a += ++b + a++;
    std::cout << "Test 3: a = " << a << " b = " << b << std::endl;
    
    return 0;
}
