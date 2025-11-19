import dis
import sys

def test_python_alternatives():
    print("Python doesn't have ++ operator")
    print("Demonstrating alternatives:\n")
    
    # Test 1: Explicit operations (Pythonic way)
    print("Test 1: Explicit operations")
    k = 5
    j = 9
    print(f"Before: k = {k} j = {j}")
    temp_k = k
    k += 1
    j += 1
    result = temp_k - j + k
    k = 5 + result
    print(f"After:  k = {k} j = {j}\n")
    
    # Test 2: Using intermediate variables
    print("Test 2: Intermediate variables")
    k = 5
    j = 9
    old_k = k
    k = k + 1
    j = j + 1
    k = old_k + (old_k - j + k)
    print(f"Result: k = {k} j = {j}\n")
    
    # Test 3: Demonstrate why Python avoids ++
    print("Test 3: Python philosophy - explicit is better than implicit")
    values = []
    k = 5
    values.append(k)
    k += 1
    values.append(k)
    print(f"Clear sequence: {values}\n")

def show_bytecode():
    print("=" * 50)
    print("Python bytecode for simple increment:")
    print("=" * 50)
    def increment_demo():
        k = 5
        k += 1
        return k
    
    dis.dis(increment_demo)

if __name__ == "__main__":
    python_version = sys.version
    print(f"Python version: {python_version}\n")
    print("=" * 50)
    
    test_python_alternatives()
    show_bytecode()
