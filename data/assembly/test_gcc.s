	.file	"test.cpp"
# GNU C++17 (Ubuntu 11.4.0-1ubuntu1~22.04.2) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -std=c++17 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"Before: k = "
.LC1:
	.string	" j = "
.LC2:
	.string	"After:  k = "
.LC3:
	.string	"Test 2: x = "
.LC4:
	.string	"Test 3: a = "
.LC5:
	.string	" b = "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1724:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# test.cpp:4:     int k = 5, j = 9;
	movl	$5, -20(%rbp)	#, k
# test.cpp:4:     int k = 5, j = 9;
	movl	$9, -16(%rbp)	#, j
# test.cpp:5:     std::cout << "Before: k = " << k << " j = " << j << std::endl;
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	_ZSt4cout(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# test.cpp:5:     std::cout << "Before: k = " << k << " j = " << j << std::endl;
	movl	-20(%rbp), %eax	# k, tmp106
	movl	%eax, %esi	# tmp106,
	movq	%rdx, %rdi	# _1,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rdx	#, _2
	leaq	.LC1(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	movq	%rdx, %rdi	# _2,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# test.cpp:5:     std::cout << "Before: k = " << k << " j = " << j << std::endl;
	movl	-16(%rbp), %eax	# j, tmp108
	movl	%eax, %esi	# tmp108,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEi@PLT	#
# test.cpp:5:     std::cout << "Before: k = " << k << " j = " << j << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# test.cpp:6:     k += k++ - ++j + k;
	movl	-20(%rbp), %eax	# k, k.0_5
	leal	1(%rax), %edx	#, tmp111
	movl	%edx, -20(%rbp)	# tmp111, k
# test.cpp:6:     k += k++ - ++j + k;
	addl	$1, -16(%rbp)	#, j
# test.cpp:6:     k += k++ - ++j + k;
	subl	-16(%rbp), %eax	# j, k.0_5
	movl	%eax, %edx	# k.0_5, _6
# test.cpp:6:     k += k++ - ++j + k;
	movl	-20(%rbp), %eax	# k, tmp112
	addl	%edx, %eax	# _6, _33
# test.cpp:6:     k += k++ - ++j + k;
	addl	%eax, -20(%rbp)	# _33, k
# test.cpp:7:     std::cout << "After:  k = " << k << " j = " << j << std::endl;
	leaq	.LC2(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	_ZSt4cout(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _7
# test.cpp:7:     std::cout << "After:  k = " << k << " j = " << j << std::endl;
	movl	-20(%rbp), %eax	# k, tmp115
	movl	%eax, %esi	# tmp115,
	movq	%rdx, %rdi	# _7,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rdx	#, _8
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movq	%rdx, %rdi	# _8,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _9
# test.cpp:7:     std::cout << "After:  k = " << k << " j = " << j << std::endl;
	movl	-16(%rbp), %eax	# j, tmp117
	movl	%eax, %esi	# tmp117,
	movq	%rdx, %rdi	# _9,
	call	_ZNSolsEi@PLT	#
# test.cpp:7:     std::cout << "After:  k = " << k << " j = " << j << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# _10,
	call	_ZNSolsEPFRSoS_E@PLT	#
# test.cpp:10:     int x = 10;
	movl	$10, -12(%rbp)	#, x
# test.cpp:11:     x = x++ + ++x;
	movl	-12(%rbp), %eax	# x, x.1_11
	leal	1(%rax), %edx	#, tmp120
	movl	%edx, -12(%rbp)	# tmp120, x
# test.cpp:11:     x = x++ + ++x;
	addl	$1, -12(%rbp)	#, x
	addl	%eax, -12(%rbp)	# x.1_11, x
# test.cpp:12:     std::cout << "Test 2: x = " << x << std::endl;
	leaq	.LC3(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	_ZSt4cout(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _12
# test.cpp:12:     std::cout << "Test 2: x = " << x << std::endl;
	movl	-12(%rbp), %eax	# x, tmp123
	movl	%eax, %esi	# tmp123,
	movq	%rdx, %rdi	# _12,
	call	_ZNSolsEi@PLT	#
# test.cpp:12:     std::cout << "Test 2: x = " << x << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# _13,
	call	_ZNSolsEPFRSoS_E@PLT	#
# test.cpp:15:     int a = 5, b = 5;
	movl	$5, -8(%rbp)	#, a
# test.cpp:15:     int a = 5, b = 5;
	movl	$5, -4(%rbp)	#, b
# test.cpp:16:     a += ++b + a++;
	addl	$1, -4(%rbp)	#, b
# test.cpp:16:     a += ++b + a++;
	movl	-8(%rbp), %eax	# a, a.2_14
	leal	1(%rax), %edx	#, tmp126
	movl	%edx, -8(%rbp)	# tmp126, a
# test.cpp:16:     a += ++b + a++;
	movl	-4(%rbp), %edx	# b, tmp127
	addl	%edx, %eax	# tmp127, _57
# test.cpp:16:     a += ++b + a++;
	addl	%eax, -8(%rbp)	# _57, a
# test.cpp:17:     std::cout << "Test 3: a = " << a << " b = " << b << std::endl;
	leaq	.LC4(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	_ZSt4cout(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _15
# test.cpp:17:     std::cout << "Test 3: a = " << a << " b = " << b << std::endl;
	movl	-8(%rbp), %eax	# a, tmp130
	movl	%eax, %esi	# tmp130,
	movq	%rdx, %rdi	# _15,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rdx	#, _16
	leaq	.LC5(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	movq	%rdx, %rdi	# _16,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _17
# test.cpp:17:     std::cout << "Test 3: a = " << a << " b = " << b << std::endl;
	movl	-4(%rbp), %eax	# b, tmp132
	movl	%eax, %esi	# tmp132,
	movq	%rdx, %rdi	# _17,
	call	_ZNSolsEi@PLT	#
# test.cpp:17:     std::cout << "Test 3: a = " << a << " b = " << b << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp134
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# _18,
	call	_ZNSolsEPFRSoS_E@PLT	#
# test.cpp:19:     return 0;
	movl	$0, %eax	#, _68
# test.cpp:20: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1724:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2227:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# test.cpp:20: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L5	#,
# test.cpp:20: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L5	#,
# /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rax	#, tmp83
	movq	%rax, %rdx	# tmp83,
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp85,
	call	__cxa_atexit@PLT	#
.L5:
# test.cpp:20: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2227:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2228:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# test.cpp:20: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2228:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
