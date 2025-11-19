fun main() {
    var k = 5
    var j = 9
    println("Before: k = $k j = $j")
    k += k++ - ++j + k
    println("After:  k = $k j = $j")
    
    // Additional tests
    testCase2()
    testCase3()
}

fun testCase2() {
    var x = 10
    x = x++ + ++x
    println("Test 2: x = $x")
}

fun testCase3() {
    var a = 5
    var b = 5
    a += ++b + a++
    println("Test 3: a = $a b = $b")
}
