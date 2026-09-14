	.file	"passing.cpp"
	.text
	.globl	_Z11swap_valuesRiS_
	.type	_Z11swap_valuesRiS_, @function
_Z11swap_valuesRiS_:
.LFB2008:
	.cfi_startproc
	endbr64
	movl	(%rdi), %eax
	movl	(%rsi), %edx
	movl	%edx, (%rdi)
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE2008:
	.size	_Z11swap_valuesRiS_, .-_Z11swap_valuesRiS_
	.globl	_Z12sum_by_value7BigData
	.type	_Z12sum_by_value7BigData, @function
_Z12sum_by_value7BigData:
.LFB2009:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %rax
	leaq	16392(%rsp), %rsi
	movl	$0, %edx
.L3:
	movslq	(%rax), %rcx
	addq	%rcx, %rdx
	addq	$4, %rax
	cmpq	%rsi, %rax
	jne	.L3
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE2009:
	.size	_Z12sum_by_value7BigData, .-_Z12sum_by_value7BigData
	.globl	_Z16sum_by_const_refRK7BigData
	.type	_Z16sum_by_const_refRK7BigData, @function
_Z16sum_by_const_refRK7BigData:
.LFB2010:
	.cfi_startproc
	endbr64
	leaq	16384(%rdi), %rcx
	movl	$0, %eax
.L6:
	movslq	(%rdi), %rdx
	addq	%rdx, %rax
	addq	$4, %rdi
	cmpq	%rcx, %rdi
	jne	.L6
	ret
	.cfi_endproc
.LFE2010:
	.size	_Z16sum_by_const_refRK7BigData, .-_Z16sum_by_const_refRK7BigData
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"basic_string::append"
.LC1:
	.string	"Hello, "
.LC2:
	.string	"! Welcome to Modern C++."
	.text
	.globl	_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB2011:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2011
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rdi
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, 16(%rsp)
	movq	8(%rsi), %rax
	leaq	7(%rax), %rsi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
	movabsq	$4611686018427387903, %rax
	subq	8(%rsp), %rax
	cmpq	$6, %rax
	jbe	.L24
	movq	%rsp, %rdi
	movl	$7, %edx
	leaq	.LC1(%rip), %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	jmp	.L25
.L24:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE0:
.L21:
	endbr64
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L12
	call	_ZdlPv@PLT
.L12:
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L25:
	movq	8(%rbp), %rdx
	movq	%rsp, %rdi
	movq	0(%rbp), %rsi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE2:
	movabsq	$4611686018427387903, %rax
	subq	8(%rsp), %rax
	cmpq	$23, %rax
	jbe	.L26
	movq	%rsp, %rdi
	movl	$24, %edx
	leaq	.LC2(%rip), %rsi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	jmp	.L27
.L26:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L20:
	endbr64
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L18
	call	_ZdlPv@PLT
.L18:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L27:
	leaq	16(%rbx), %rdx
	movq	%rdx, (%rbx)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L28
	movq	%rcx, (%rbx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rbx)
.L15:
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rbx)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L8
	call	_ZdlPv@PLT
.L8:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L29
	movq	%rbx, %rax
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L28:
	.cfi_restore_state
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.L15
.L29:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2011:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2011:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2011-.LLSDACSB2011
.LLSDACSB2011:
	.uleb128 .LEHB0-.LFB2011
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB2011
	.uleb128 0
	.uleb128 .LEHB1-.LFB2011
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB2011
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB2011
	.uleb128 0
	.uleb128 .LEHB3-.LFB2011
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L20-.LFB2011
	.uleb128 0
	.uleb128 .LEHB4-.LFB2011
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2011:
	.text
	.size	_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2429:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpq	%rdx, %rsi
	je	.L31
	testq	%rsi, %rsi
	je	.L38
.L31:
	subq	%r12, %rbx
	movq	%rbx, (%rsp)
	cmpq	$15, %rbx
	ja	.L39
	movq	0(%rbp), %rdi
	cmpq	$1, %rbx
	jne	.L34
	movzbl	(%r12), %eax
	movb	%al, (%rdi)
.L35:
	movq	(%rsp), %rax
	movq	%rax, 8(%rbp)
	movq	0(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L40
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.L39:
	movq	%rsp, %rsi
	movl	$0, %edx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdi
	movq	%rax, 0(%rbp)
	movq	(%rsp), %rax
	movq	%rax, 16(%rbp)
.L33:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	jmp	.L35
.L34:
	testq	%rbx, %rbx
	je	.L35
	jmp	.L33
.L40:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2429:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.rodata.str1.1
.LC4:
	.string	"\344\272\244\346\215\242\345\211\215: a = "
.LC5:
	.string	", b = "
.LC6:
	.string	"\344\272\244\346\215\242\345\220\216: a = "
.LC7:
	.string	"\n--- \346\200\247\350\203\275\345\257\271\346\257\224 ("
.LC8:
	.string	" \346\254\241\350\260\203\347\224\250) ---"
.LC9:
	.string	"\345\200\274\344\274\240\351\200\222: "
.LC10:
	.string	", \350\200\227\346\227\266: "
.LC11:
	.string	" ms"
.LC12:
	.string	"const\345\274\225\347\224\250: "
.LC13:
	.string	"Charlie"
.LC14:
	.string	"World"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2012:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2012
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	-32768(%rsp), %r11
	.cfi_def_cfa 11, 32816
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$80, %rsp
	.cfi_def_cfa_offset 32896
	movq	%fs:40, %rax
	movq	%rax, 32840(%rsp)
	xorl	%eax, %eax
	movl	$15, %edx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movl	$6, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$15, %edx
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movl	$6, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	64(%rsp), %rdi
	movl	$16384, %edx
	movl	$0, %esi
	call	memset@PLT
	movl	$0, %eax
.L42:
	movl	%eax, 64(%rsp,%rax,4)
	addq	$1, %rax
	cmpq	$4096, %rax
	jne	.L42
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r13
	movl	$100000, %ebp
	leaq	16448(%rsp), %r12
	jmp	.L44
.L70:
	subl	$1, %ebp
	je	.L69
.L44:
	leaq	64(%rsp), %rsi
	movl	$16384, %edx
	movq	%r12, %rdi
	call	memcpy@PLT
	leaq	32832(%rsp), %rcx
	movl	$0, %ebx
.L43:
	movslq	(%rax), %rdx
	addq	%rdx, %rbx
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L43
	jmp	.L70
.L69:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r13, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	movq	%rdx, %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbp
	leaq	64(%rsp), %rdi
	call	_Z16sum_by_const_refRK7BigData
	movq	%rax, %r13
	movl	$100000, %eax
.L45:
	subl	$1, %eax
	jne	.L45
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	movq	%rdx, %rbp
	movl	$19, %edx
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$100000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %r14
	movl	$15, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$11, %edx
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rbx
	movl	$10, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rbx
	movl	$3, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$13, %edx
	leaq	.LC12(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rbx
	movl	$10, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rbx
	movl	$3, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rsp, %rbx
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	7+.LC13(%rip), %rdx
	leaq	-7(%rdx), %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE5:
	leaq	16448(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB6:
	call	_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE6:
	movq	16456(%rsp), %rdx
	movq	16448(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE7:
	movq	16448(%rsp), %rdi
	leaq	16464(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L46
	call	_ZdlPv@PLT
.L46:
	leaq	32(%rsp), %rdi
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	5+.LC14(%rip), %rdx
	leaq	-5(%rdx), %rsi
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE8:
	leaq	16448(%rsp), %rdi
	leaq	32(%rsp), %rsi
.LEHB9:
	call	_Z14build_greetingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE9:
	movq	16456(%rsp), %rdx
	movq	16448(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE10:
	movq	16448(%rsp), %rdi
	leaq	16464(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L47
	call	_ZdlPv@PLT
.L47:
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L48
	call	_ZdlPv@PLT
.L48:
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L49
	call	_ZdlPv@PLT
.L49:
	movq	32840(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L71
	movl	$0, %eax
	addq	$32848, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L60:
	.cfi_restore_state
	endbr64
	movq	%rax, %rbx
	movq	16448(%rsp), %rdi
	leaq	16464(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L52
	call	_ZdlPv@PLT
.L52:
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L57
	call	_ZdlPv@PLT
.L57:
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L62:
	endbr64
	movq	%rax, %rbx
	movq	16448(%rsp), %rdi
	leaq	16464(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L55
	call	_ZdlPv@PLT
.L55:
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L52
	call	_ZdlPv@PLT
	jmp	.L52
.L61:
	endbr64
	movq	%rax, %rbx
	jmp	.L55
.L59:
	endbr64
	movq	%rax, %rbx
	jmp	.L52
.L71:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2012:
	.section	.gcc_except_table
.LLSDA2012:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2012-.LLSDACSB2012
.LLSDACSB2012:
	.uleb128 .LEHB5-.LFB2012
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2012
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L59-.LFB2012
	.uleb128 0
	.uleb128 .LEHB7-.LFB2012
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L60-.LFB2012
	.uleb128 0
	.uleb128 .LEHB8-.LFB2012
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L59-.LFB2012
	.uleb128 0
	.uleb128 .LEHB9-.LFB2012
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L61-.LFB2012
	.uleb128 0
	.uleb128 .LEHB10-.LFB2012
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L62-.LFB2012
	.uleb128 0
	.uleb128 .LEHB11-.LFB2012
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2012:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z11swap_valuesRiS_, @function
_GLOBAL__sub_I__Z11swap_valuesRiS_:
.LFB2533:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2533:
	.size	_GLOBAL__sub_I__Z11swap_valuesRiS_, .-_GLOBAL__sub_I__Z11swap_valuesRiS_
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11swap_valuesRiS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
