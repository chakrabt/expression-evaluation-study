# Understanding Side Effects in Expression Evaluation

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.XXXXXX.svg)](https://doi.org/10.5281/zenodo.XXXXXX)
*(DOI will be added after Zenodo archiving)*

This repository contains all experimental materials for the paper:

**"Micro-optimization vs. Maintainability: A Cross-Language Benchmarking Study"**

**Author:** Tamal Chakraborty  
**Affiliation:** Department of Computer Science, Mrinalini Datta Mahavidyapith, Kolkata, India  
**Contact:** tamalc@gmail.com

**Published in:** Journal of Computer Languages (2025) - *Submitted*

---

## Abstract

At first glance, expressions like `k += k++ - ++j + k;` seem merely convoluted—but they often conceal deeper semantic puzzles. This empirical study investigates expression evaluation order in Java through bytecode analysis and cross-language comparison, testing across OpenJDK versions 8, 11, 17, and 21. We discovered that C++ produces different results (k=7) compared to Java (k=6) for identical expressions, providing empirical evidence of undefined behavior consequences. All experimental materials are provided for full reproducibility.

---

## Key Findings

- **Java Consistency:** Identical behavior across OpenJDK 8, 11, 17, and 21
- **C++ Divergence:** Produces k=7 (vs Java's k=6) due to undefined behavior
- **Performance:** No meaningful difference between complex and simple expressions
- **Static Analysis:** Java tools silent (behavior defined), C++ compilers warn (undefined)

---

## Repository Structure

java-expression-study/ ├── src/ │ ├── java/ # Java test programs │ ├── cpp/ # C++ test programs │ ├── kotlin/ # Kotlin test programs │ └── python/ # Python test programs ├── data/ │ ├── bytecode/ # Bytecode disassemblies │ ├── assembly/ # Assembly code listings │ ├── performance/ # Performance benchmark data │ └── static-analysis/ # Tool outputs └── README.md

---

## Quick Start

### Prerequisites

- OpenJDK 8, 11, 17, 21
- GCC 11.4+ or Clang 14.0+
- Python 3.10+
- Kotlin 2.2+

### Running the Basic Test

**Java:**
```bash
cd src/java
javac Test.java
java Test
# Expected output: k = 6 j = 10
C++:
cd src/cpp
g++ -std=c++17 test.cpp -o test
./test
# Expected output: k = 7 j = 10
Key Observation: Same expression, different results!
________________________________________
Main Results
Cross-Language Comparison
Language	Result (k, j)	Behavior Status
Java 8-21	(6, 10)	Well-defined 
C++ (GCC)	(7, 10)	Undefined 
C++ (Clang)	(7, 10)	Undefined ️
Kotlin	(6, 10)	Well-defined 
Python	(6, 10)	Explicit operations 
Performance Results
Expression Type	Mean Time	Relative
Complex	4.60 ns	1.00x
Simple	4.60 ns	1.00x
Separated	5.10 ns	1.11x
Conclusion: Performance is essentially identical.
________________________________________
Citation
If you use this code or data, please cite:
@article{chakraborty2025,
  title={Micro-optimization vs. Maintainability: A Cross-Language Benchmarking Study},
  author={Chakraborty, Tamal},
  journal={Journal of Computer Languages},
  year={2025},
  publisher={Elsevier},
  note={DOI: [pending publication]}
}
________________________________________
License
•	Code: MIT License
•	Data: CC-BY-4.0 License
________________________________________
Contact
Tamal Chakraborty
Department of Computer Science
Mrinalini Datta Mahavidyapith
Birati, Kolkata 700051, India
Email: tamalc@gmail.com
________________________________________
Acknowledgments
This research was conducted as an independent study with no external funding.
________________________________________
Last Updated: November 2025



