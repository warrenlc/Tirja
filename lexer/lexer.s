	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.file	1 "/Users/warren/Development/Github/Tirja/lexer" "./tokens.h"
	.globl	_token_create                   ; -- Begin function token_create
	.p2align	2
_token_create:                          ; @token_create
Lfunc_begin0:
	.file	2 "/Users/warren/Development/Github/Tirja/lexer" "lexer.c"
	.loc	2 10 0                          ; lexer.c:10:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	str	x1, [sp, #24]
	mov	x0, #16
Ltmp0:
	.loc	2 14 24 prologue_end            ; lexer.c:14:24
	bl	_malloc
	.loc	2 14 12 is_stmt 0               ; lexer.c:14:12
	str	x0, [sp, #16]
Ltmp1:
	.loc	2 15 9 is_stmt 1                ; lexer.c:15:9
	ldr	x8, [sp, #16]
	.loc	2 15 19 is_stmt 0               ; lexer.c:15:19
	subs	x8, x8, #0
	cset	w8, ne
Ltmp2:
	.loc	2 15 9                          ; lexer.c:15:9
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
Ltmp3:
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	.loc	2 17 17 is_stmt 1               ; lexer.c:17:17
	ldr	x0, [x8]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	.loc	2 17 9                          ; lexer.c:17:9
	bl	_fprintf
                                        ; kill: def $x8 killed $xzr
	.loc	2 18 9 is_stmt 1                ; lexer.c:18:9
	stur	xzr, [x29, #-8]
	b	LBB0_3
Ltmp4:
LBB0_2:
	.loc	2 20 55                         ; lexer.c:20:55
	ldr	x0, [sp, #24]
	.loc	2 20 48 is_stmt 0               ; lexer.c:20:48
	bl	_strlen
	mov	x8, #1
	.loc	2 20 69                         ; lexer.c:20:69
	add	x9, x0, #1
	.loc	2 20 45                         ; lexer.c:20:45
	mul	x0, x8, x9
	.loc	2 20 25                         ; lexer.c:20:25
	bl	_malloc
	.loc	2 20 11                         ; lexer.c:20:11
	str	x0, [sp, #8]
	.loc	2 21 25 is_stmt 1               ; lexer.c:21:25
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	mov	x2, #-1
	bl	___strcpy_chk
	.loc	2 21 5 is_stmt 0                ; lexer.c:21:5
	ldr	x8, [sp, #16]
	.loc	2 21 23                         ; lexer.c:21:23
	str	x0, [x8, #8]
	.loc	2 22 25 is_stmt 1               ; lexer.c:22:25
	ldur	w8, [x29, #-12]
	.loc	2 22 5 is_stmt 0                ; lexer.c:22:5
	ldr	x9, [sp, #16]
	.loc	2 22 23                         ; lexer.c:22:23
	str	w8, [x9]
	.loc	2 24 12 is_stmt 1               ; lexer.c:24:12
	ldr	x8, [sp, #16]
	.loc	2 24 5 is_stmt 0                ; lexer.c:24:5
	stur	x8, [x29, #-8]
	b	LBB0_3
LBB0_3:
	.loc	2 25 1 is_stmt 1                ; lexer.c:25:1
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp5:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_array_init               ; -- Begin function token_array_init
	.p2align	2
_token_array_init:                      ; @token_array_init
Lfunc_begin1:
	.loc	2 29 0                          ; lexer.c:29:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
Ltmp7:
	.loc	2 33 5 prologue_end             ; lexer.c:33:5
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	.loc	2 33 23 is_stmt 0               ; lexer.c:33:23
	str	xzr, [x8]
	.loc	2 34 5 is_stmt 1                ; lexer.c:34:5
	ldr	x8, [sp, #8]
	.loc	2 34 23 is_stmt 0               ; lexer.c:34:23
	str	wzr, [x8, #8]
	.loc	2 35 5 is_stmt 1                ; lexer.c:35:5
	ldr	x8, [sp, #8]
	.loc	2 35 23 is_stmt 0               ; lexer.c:35:23
	str	wzr, [x8, #12]
	.loc	2 36 1 is_stmt 1                ; lexer.c:36:1
	add	sp, sp, #16
	ret
Ltmp8:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_array_add                ; -- Begin function token_array_add
	.p2align	2
_token_array_add:                       ; @token_array_add
Lfunc_begin2:
	.loc	2 40 0                          ; lexer.c:40:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
Ltmp9:
	.loc	2 46 9 prologue_end             ; lexer.c:46:9
	ldur	x8, [x29, #-8]
	.loc	2 46 18 is_stmt 0               ; lexer.c:46:18
	ldr	w8, [x8, #8]
	.loc	2 46 26                         ; lexer.c:46:26
	ldur	x9, [x29, #-8]
	.loc	2 46 35                         ; lexer.c:46:35
	ldr	w9, [x9, #12]
	.loc	2 46 23                         ; lexer.c:46:23
	subs	w8, w8, w9
	cset	w8, ne
Ltmp10:
	.loc	2 46 9                          ; lexer.c:46:9
	tbnz	w8, #0, LBB2_7
	b	LBB2_1
LBB2_1:
Ltmp11:
	.loc	2 48 28 is_stmt 1               ; lexer.c:48:28
	ldur	x8, [x29, #-8]
	.loc	2 48 37 is_stmt 0               ; lexer.c:48:37
	ldr	w8, [x8, #12]
	.loc	2 48 46                         ; lexer.c:48:46
	subs	w8, w8, #0
	cset	w8, ne
	.loc	2 48 27                         ; lexer.c:48:27
	tbnz	w8, #0, LBB2_3
	b	LBB2_2
LBB2_2:
	.loc	2 0 27                          ; lexer.c:0:27
	mov	w8, #1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	.loc	2 48 27                         ; lexer.c:48:27
	b	LBB2_4
LBB2_3:
	.loc	2 48 58                         ; lexer.c:48:58
	ldur	x8, [x29, #-8]
	.loc	2 48 67                         ; lexer.c:48:67
	ldr	w8, [x8, #12]
	.loc	2 48 76                         ; lexer.c:48:76
	lsl	w8, w8, #1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	.loc	2 48 27                         ; lexer.c:48:27
	b	LBB2_4
LBB2_4:
	.loc	2 0 27                          ; lexer.c:0:27
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	.loc	2 48 12                         ; lexer.c:48:12
	stur	w8, [x29, #-20]
	.loc	2 49 36 is_stmt 1               ; lexer.c:49:36
	ldur	x8, [x29, #-8]
	.loc	2 49 45 is_stmt 0               ; lexer.c:49:45
	ldr	x0, [x8]
	.loc	2 49 53                         ; lexer.c:49:53
	ldursw	x8, [x29, #-20]
	.loc	2 49 66                         ; lexer.c:49:66
	lsl	x1, x8, #4
	.loc	2 49 28                         ; lexer.c:49:28
	bl	_realloc
	.loc	2 49 15                         ; lexer.c:49:15
	str	x0, [sp, #16]
Ltmp12:
	.loc	2 50 12 is_stmt 1               ; lexer.c:50:12
	ldr	x8, [sp, #16]
	.loc	2 50 23 is_stmt 0               ; lexer.c:50:23
	subs	x8, x8, #0
	cset	w8, ne
Ltmp13:
	.loc	2 50 12                         ; lexer.c:50:12
	tbnz	w8, #0, LBB2_6
	b	LBB2_5
LBB2_5:
Ltmp14:
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	.loc	2 52 20 is_stmt 1               ; lexer.c:52:20
	ldr	x0, [x8]
	.loc	2 52 72 is_stmt 0               ; lexer.c:52:72
	ldur	x8, [x29, #-16]
	.loc	2 52 75                         ; lexer.c:52:75
	ldr	x8, [x8, #8]
	.loc	2 52 12                         ; lexer.c:52:12
	mov	x9, sp
	str	x8, [x9]
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	.loc	2 52 12                         ; lexer.c:52:12
	bl	_fprintf
	.loc	2 53 12 is_stmt 1               ; lexer.c:53:12
	b	LBB2_8
Ltmp15:
LBB2_6:
	.loc	2 55 26                         ; lexer.c:55:26
	ldr	x8, [sp, #16]
	.loc	2 55 8 is_stmt 0                ; lexer.c:55:8
	ldur	x9, [x29, #-8]
	.loc	2 55 24                         ; lexer.c:55:24
	str	x8, [x9]
	.loc	2 56 28 is_stmt 1               ; lexer.c:56:28
	ldur	w8, [x29, #-20]
	.loc	2 56 8 is_stmt 0                ; lexer.c:56:8
	ldur	x9, [x29, #-8]
	.loc	2 56 26                         ; lexer.c:56:26
	str	w8, [x9, #12]
	.loc	2 57 5 is_stmt 1                ; lexer.c:57:5
	b	LBB2_7
Ltmp16:
LBB2_7:
	.loc	2 59 5                          ; lexer.c:59:5
	ldur	x8, [x29, #-8]
	.loc	2 59 14 is_stmt 0               ; lexer.c:59:14
	ldr	x8, [x8]
	.loc	2 59 21                         ; lexer.c:59:21
	ldur	x11, [x29, #-8]
	.loc	2 59 34                         ; lexer.c:59:34
	ldrsw	x9, [x11, #8]
Ltmp17:
	.loc	2 50 12 is_stmt 1               ; lexer.c:50:12
	mov	x10, x9
Ltmp18:
	.loc	2 59 34                         ; lexer.c:59:34
	add	w10, w10, #1
	str	w10, [x11, #8]
	.loc	2 59 41 is_stmt 0               ; lexer.c:59:41
	ldur	x10, [x29, #-16]
	.loc	2 59 40                         ; lexer.c:59:40
	ldr	q0, [x10]
	str	q0, [x8, x9, lsl #4]
	.loc	2 60 1 is_stmt 1                ; lexer.c:60:1
	b	LBB2_8
LBB2_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp19:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_array_free               ; -- Begin function token_array_free
	.p2align	2
_token_array_free:                      ; @token_array_free
Lfunc_begin3:
	.loc	2 65 0                          ; lexer.c:65:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
Ltmp20:
	.loc	2 69 14 prologue_end            ; lexer.c:69:14
	stur	wzr, [x29, #-12]
	.loc	2 69 10 is_stmt 0               ; lexer.c:69:10
	b	LBB3_1
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp21:
	.loc	2 69 21                         ; lexer.c:69:21
	ldur	w8, [x29, #-12]
	.loc	2 69 25                         ; lexer.c:69:25
	ldur	x9, [x29, #-8]
	.loc	2 69 34                         ; lexer.c:69:34
	ldr	w9, [x9, #8]
	.loc	2 69 23                         ; lexer.c:69:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp22:
	.loc	2 69 5                          ; lexer.c:69:5
	tbnz	w8, #0, LBB3_4
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
Ltmp23:
	.loc	2 71 33 is_stmt 1               ; lexer.c:71:33
	ldur	x8, [x29, #-8]
	.loc	2 71 42 is_stmt 0               ; lexer.c:71:42
	ldr	x8, [x8]
	.loc	2 71 49                         ; lexer.c:71:49
	ldursw	x9, [x29, #-12]
	.loc	2 71 33                         ; lexer.c:71:33
	add	x8, x8, x9, lsl #4
	.loc	2 71 52                         ; lexer.c:71:52
	ldr	x8, [x8, #8]
	.loc	2 71 9                          ; lexer.c:71:9
	mov	x9, sp
	str	x8, [x9]
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	.loc	2 71 9                          ; lexer.c:71:9
	bl	_printf
	.loc	2 72 15 is_stmt 1               ; lexer.c:72:15
	ldur	x8, [x29, #-8]
	.loc	2 72 25 is_stmt 0               ; lexer.c:72:25
	ldr	x8, [x8]
	.loc	2 72 32                         ; lexer.c:72:32
	ldursw	x9, [x29, #-12]
	.loc	2 72 14                         ; lexer.c:72:14
	add	x8, x8, x9, lsl #4
	.loc	2 72 35                         ; lexer.c:72:35
	ldr	x0, [x8, #8]
	.loc	2 72 9                          ; lexer.c:72:9
	bl	_free
	.loc	2 73 5 is_stmt 1                ; lexer.c:73:5
	b	LBB3_3
Ltmp24:
LBB3_3:                                 ;   in Loop: Header=BB3_1 Depth=1
	.loc	2 69 41                         ; lexer.c:69:41
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	.loc	2 69 5 is_stmt 0                ; lexer.c:69:5
	b	LBB3_1
Ltmp25:
LBB3_4:
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	.loc	2 74 5 is_stmt 1                ; lexer.c:74:5
	bl	_printf
	.loc	2 75 10                         ; lexer.c:75:10
	ldur	x8, [x29, #-8]
	.loc	2 75 19 is_stmt 0               ; lexer.c:75:19
	ldr	x0, [x8]
	.loc	2 75 5                          ; lexer.c:75:5
	bl	_free
	.loc	2 77 5 is_stmt 1                ; lexer.c:77:5
	ldur	x8, [x29, #-8]
                                        ; kill: def $x9 killed $xzr
	.loc	2 77 21 is_stmt 0               ; lexer.c:77:21
	str	xzr, [x8]
	.loc	2 78 5 is_stmt 1                ; lexer.c:78:5
	ldur	x8, [x29, #-8]
	.loc	2 78 19 is_stmt 0               ; lexer.c:78:19
	str	wzr, [x8, #8]
	.loc	2 79 5 is_stmt 1                ; lexer.c:79:5
	ldur	x8, [x29, #-8]
	.loc	2 79 23 is_stmt 0               ; lexer.c:79:23
	str	wzr, [x8, #12]
	.loc	2 80 1 is_stmt 1                ; lexer.c:80:1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp26:
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_type_to_string           ; -- Begin function token_type_to_string
	.p2align	2
_token_type_to_string:                  ; @token_type_to_string
Lfunc_begin4:
	.loc	2 84 0                          ; lexer.c:84:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #20]
Ltmp28:
	.loc	2 88 13 prologue_end            ; lexer.c:88:13
	ldr	w8, [sp, #20]
	.loc	2 88 5 is_stmt 0                ; lexer.c:88:5
	subs	w8, w8, #0
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #47
	cset	w8, hi
	tbnz	w8, #0, LBB4_50
; %bb.1:
	.loc	2 0 5                           ; lexer.c:0:5
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	.loc	2 88 5                          ; lexer.c:88:5
	adrp	x10, lJTI4_0@PAGE
	add	x10, x10, lJTI4_0@PAGEOFF
Ltmp29:
	adr	x8, Ltmp29
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB4_2:
Ltmp30:
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	.loc	2 90 33 is_stmt 1               ; lexer.c:90:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_3:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.5@PAGE
	add	x8, x8, l_.str.5@PAGEOFF
	.loc	2 91 33 is_stmt 1               ; lexer.c:91:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_4:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	.loc	2 92 33 is_stmt 1               ; lexer.c:92:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_5:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.7@PAGE
	add	x8, x8, l_.str.7@PAGEOFF
	.loc	2 93 33 is_stmt 1               ; lexer.c:93:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_6:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.8@PAGE
	add	x8, x8, l_.str.8@PAGEOFF
	.loc	2 94 33 is_stmt 1               ; lexer.c:94:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_7:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.9@PAGE
	add	x8, x8, l_.str.9@PAGEOFF
	.loc	2 95 33 is_stmt 1               ; lexer.c:95:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_8:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.10@PAGE
	add	x8, x8, l_.str.10@PAGEOFF
	.loc	2 96 33 is_stmt 1               ; lexer.c:96:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_9:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.11@PAGE
	add	x8, x8, l_.str.11@PAGEOFF
	.loc	2 97 33 is_stmt 1               ; lexer.c:97:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_10:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.12@PAGE
	add	x8, x8, l_.str.12@PAGEOFF
	.loc	2 98 33 is_stmt 1               ; lexer.c:98:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_11:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.13@PAGE
	add	x8, x8, l_.str.13@PAGEOFF
	.loc	2 99 33 is_stmt 1               ; lexer.c:99:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_12:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.14@PAGE
	add	x8, x8, l_.str.14@PAGEOFF
	.loc	2 100 33 is_stmt 1              ; lexer.c:100:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_13:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.15@PAGE
	add	x8, x8, l_.str.15@PAGEOFF
	.loc	2 101 33 is_stmt 1              ; lexer.c:101:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_14:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.16@PAGE
	add	x8, x8, l_.str.16@PAGEOFF
	.loc	2 102 33 is_stmt 1              ; lexer.c:102:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_15:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.17@PAGE
	add	x8, x8, l_.str.17@PAGEOFF
	.loc	2 103 33 is_stmt 1              ; lexer.c:103:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_16:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.18@PAGE
	add	x8, x8, l_.str.18@PAGEOFF
	.loc	2 104 33 is_stmt 1              ; lexer.c:104:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_17:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.19@PAGE
	add	x8, x8, l_.str.19@PAGEOFF
	.loc	2 105 33 is_stmt 1              ; lexer.c:105:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_18:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.20@PAGE
	add	x8, x8, l_.str.20@PAGEOFF
	.loc	2 106 33 is_stmt 1              ; lexer.c:106:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_19:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.21@PAGE
	add	x8, x8, l_.str.21@PAGEOFF
	.loc	2 107 33 is_stmt 1              ; lexer.c:107:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_20:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.22@PAGE
	add	x8, x8, l_.str.22@PAGEOFF
	.loc	2 108 33 is_stmt 1              ; lexer.c:108:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_21:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.23@PAGE
	add	x8, x8, l_.str.23@PAGEOFF
	.loc	2 109 33 is_stmt 1              ; lexer.c:109:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_22:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.24@PAGE
	add	x8, x8, l_.str.24@PAGEOFF
	.loc	2 110 33 is_stmt 1              ; lexer.c:110:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_23:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.25@PAGE
	add	x8, x8, l_.str.25@PAGEOFF
	.loc	2 111 33 is_stmt 1              ; lexer.c:111:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_24:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.26@PAGE
	add	x8, x8, l_.str.26@PAGEOFF
	.loc	2 112 33 is_stmt 1              ; lexer.c:112:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_25:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.27@PAGE
	add	x8, x8, l_.str.27@PAGEOFF
	.loc	2 113 33 is_stmt 1              ; lexer.c:113:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_26:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.28@PAGE
	add	x8, x8, l_.str.28@PAGEOFF
	.loc	2 114 33 is_stmt 1              ; lexer.c:114:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_27:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.29@PAGE
	add	x8, x8, l_.str.29@PAGEOFF
	.loc	2 115 33 is_stmt 1              ; lexer.c:115:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_28:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.30@PAGE
	add	x8, x8, l_.str.30@PAGEOFF
	.loc	2 116 33 is_stmt 1              ; lexer.c:116:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_29:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.31@PAGE
	add	x8, x8, l_.str.31@PAGEOFF
	.loc	2 117 33 is_stmt 1              ; lexer.c:117:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_30:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.32@PAGE
	add	x8, x8, l_.str.32@PAGEOFF
	.loc	2 118 33 is_stmt 1              ; lexer.c:118:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_31:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.33@PAGE
	add	x8, x8, l_.str.33@PAGEOFF
	.loc	2 119 33 is_stmt 1              ; lexer.c:119:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_32:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.34@PAGE
	add	x8, x8, l_.str.34@PAGEOFF
	.loc	2 120 33 is_stmt 1              ; lexer.c:120:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_33:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.35@PAGE
	add	x8, x8, l_.str.35@PAGEOFF
	.loc	2 121 33 is_stmt 1              ; lexer.c:121:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_34:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.36@PAGE
	add	x8, x8, l_.str.36@PAGEOFF
	.loc	2 122 33 is_stmt 1              ; lexer.c:122:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_35:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.37@PAGE
	add	x8, x8, l_.str.37@PAGEOFF
	.loc	2 123 33 is_stmt 1              ; lexer.c:123:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_36:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.38@PAGE
	add	x8, x8, l_.str.38@PAGEOFF
	.loc	2 124 33 is_stmt 1              ; lexer.c:124:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_37:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.39@PAGE
	add	x8, x8, l_.str.39@PAGEOFF
	.loc	2 125 33 is_stmt 1              ; lexer.c:125:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_38:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.40@PAGE
	add	x8, x8, l_.str.40@PAGEOFF
	.loc	2 126 33 is_stmt 1              ; lexer.c:126:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_39:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.41@PAGE
	add	x8, x8, l_.str.41@PAGEOFF
	.loc	2 127 33 is_stmt 1              ; lexer.c:127:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_40:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.42@PAGE
	add	x8, x8, l_.str.42@PAGEOFF
	.loc	2 128 33 is_stmt 1              ; lexer.c:128:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_41:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.43@PAGE
	add	x8, x8, l_.str.43@PAGEOFF
	.loc	2 129 33 is_stmt 1              ; lexer.c:129:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_42:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.44@PAGE
	add	x8, x8, l_.str.44@PAGEOFF
	.loc	2 130 33 is_stmt 1              ; lexer.c:130:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_43:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.45@PAGE
	add	x8, x8, l_.str.45@PAGEOFF
	.loc	2 131 33 is_stmt 1              ; lexer.c:131:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_44:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.46@PAGE
	add	x8, x8, l_.str.46@PAGEOFF
	.loc	2 132 33 is_stmt 1              ; lexer.c:132:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_45:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.47@PAGE
	add	x8, x8, l_.str.47@PAGEOFF
	.loc	2 133 33 is_stmt 1              ; lexer.c:133:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_46:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.48@PAGE
	add	x8, x8, l_.str.48@PAGEOFF
	.loc	2 134 33 is_stmt 1              ; lexer.c:134:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_47:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.49@PAGE
	add	x8, x8, l_.str.49@PAGEOFF
	.loc	2 135 33 is_stmt 1              ; lexer.c:135:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_48:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.50@PAGE
	add	x8, x8, l_.str.50@PAGEOFF
	.loc	2 136 33 is_stmt 1              ; lexer.c:136:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_49:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.51@PAGE
	add	x8, x8, l_.str.51@PAGEOFF
	.loc	2 137 33 is_stmt 1              ; lexer.c:137:33
	str	x8, [sp, #24]
	b	LBB4_51
LBB4_50:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, l_.str.52@PAGE
	add	x8, x8, l_.str.52@PAGEOFF
	.loc	2 140 9 is_stmt 1               ; lexer.c:140:9
	str	x8, [sp, #24]
	b	LBB4_51
Ltmp31:
LBB4_51:
	.loc	2 142 1                         ; lexer.c:142:1
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
Ltmp32:
Lfunc_end4:
	.cfi_endproc
	.p2align	2
lJTI4_0:
	.long	LBB4_2-Ltmp29
	.long	LBB4_3-Ltmp29
	.long	LBB4_4-Ltmp29
	.long	LBB4_5-Ltmp29
	.long	LBB4_6-Ltmp29
	.long	LBB4_7-Ltmp29
	.long	LBB4_8-Ltmp29
	.long	LBB4_9-Ltmp29
	.long	LBB4_10-Ltmp29
	.long	LBB4_11-Ltmp29
	.long	LBB4_12-Ltmp29
	.long	LBB4_13-Ltmp29
	.long	LBB4_14-Ltmp29
	.long	LBB4_15-Ltmp29
	.long	LBB4_16-Ltmp29
	.long	LBB4_17-Ltmp29
	.long	LBB4_18-Ltmp29
	.long	LBB4_19-Ltmp29
	.long	LBB4_20-Ltmp29
	.long	LBB4_21-Ltmp29
	.long	LBB4_22-Ltmp29
	.long	LBB4_23-Ltmp29
	.long	LBB4_24-Ltmp29
	.long	LBB4_25-Ltmp29
	.long	LBB4_26-Ltmp29
	.long	LBB4_27-Ltmp29
	.long	LBB4_28-Ltmp29
	.long	LBB4_29-Ltmp29
	.long	LBB4_30-Ltmp29
	.long	LBB4_31-Ltmp29
	.long	LBB4_32-Ltmp29
	.long	LBB4_33-Ltmp29
	.long	LBB4_34-Ltmp29
	.long	LBB4_35-Ltmp29
	.long	LBB4_36-Ltmp29
	.long	LBB4_37-Ltmp29
	.long	LBB4_38-Ltmp29
	.long	LBB4_39-Ltmp29
	.long	LBB4_41-Ltmp29
	.long	LBB4_42-Ltmp29
	.long	LBB4_43-Ltmp29
	.long	LBB4_44-Ltmp29
	.long	LBB4_45-Ltmp29
	.long	LBB4_49-Ltmp29
	.long	LBB4_46-Ltmp29
	.long	LBB4_47-Ltmp29
	.long	LBB4_48-Ltmp29
	.long	LBB4_40-Ltmp29
                                        ; -- End function
	.globl	_token_print                    ; -- Begin function token_print
	.p2align	2
_token_print:                           ; @token_print
Lfunc_begin5:
	.loc	2 146 0                         ; lexer.c:146:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
Ltmp33:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	.loc	2 150 13 prologue_end is_stmt 1 ; lexer.c:150:13
	ldr	x8, [x8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	.loc	2 153 34                        ; lexer.c:153:34
	ldur	x8, [x29, #-8]
	.loc	2 153 37 is_stmt 0              ; lexer.c:153:37
	ldr	w0, [x8]
	.loc	2 153 13                        ; lexer.c:153:13
	bl	_token_type_to_string
	mov	x10, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	.loc	2 153 44                        ; lexer.c:153:44
	ldur	x8, [x29, #-8]
	.loc	2 153 47                        ; lexer.c:153:47
	ldr	x8, [x8, #8]
	.loc	2 150 5 is_stmt 1               ; lexer.c:150:5
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.53@PAGE
	add	x1, x1, l_.str.53@PAGEOFF
	.loc	2 150 5                         ; lexer.c:150:5
	bl	_fprintf
	.loc	2 154 1 is_stmt 1               ; lexer.c:154:1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp34:
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_to_array_from_string     ; -- Begin function token_to_array_from_string
	.p2align	2
_token_to_array_from_string:            ; @token_to_array_from_string
Lfunc_begin6:
	.loc	2 158 0                         ; lexer.c:158:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
Ltmp35:
	.loc	2 163 29 prologue_end           ; lexer.c:163:29
	ldr	w0, [sp, #12]
	.loc	2 163 35 is_stmt 0              ; lexer.c:163:35
	ldur	x1, [x29, #-8]
	.loc	2 163 16                        ; lexer.c:163:16
	bl	_token_create
	.loc	2 163 12                        ; lexer.c:163:12
	str	x0, [sp]
	.loc	2 164 21 is_stmt 1              ; lexer.c:164:21
	ldr	x0, [sp, #16]
	.loc	2 164 30 is_stmt 0              ; lexer.c:164:30
	ldr	x1, [sp]
	.loc	2 164 5                         ; lexer.c:164:5
	bl	_token_array_add
	.loc	2 165 5 is_stmt 1               ; lexer.c:165:5
	ldur	x0, [x29, #-8]
	mov	w1, #0
	mov	x2, #16
	mov	x3, #-1
	bl	___memset_chk
	.loc	2 166 10                        ; lexer.c:166:10
	ldr	x0, [sp]
	.loc	2 166 5 is_stmt 0               ; lexer.c:166:5
	bl	_free
	.loc	2 167 1 is_stmt 1               ; lexer.c:167:1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp36:
Lfunc_end6:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_type_get_single_char     ; -- Begin function token_type_get_single_char
	.p2align	2
_token_type_get_single_char:            ; @token_type_get_single_char
Lfunc_begin7:
	.loc	2 171 0                         ; lexer.c:171:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #11]
Ltmp38:
	.loc	2 176 13 prologue_end           ; lexer.c:176:13
	ldrsb	w8, [sp, #11]
	.loc	2 176 5 is_stmt 0               ; lexer.c:176:5
	subs	w8, w8, #35
                                        ; kill: def $x8 killed $w8
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #91
	cset	w8, hi
	tbnz	w8, #0, LBB7_17
; %bb.1:
	.loc	2 0 5                           ; lexer.c:0:5
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	.loc	2 176 5                         ; lexer.c:176:5
	adrp	x10, lJTI7_0@PAGE
	add	x10, x10, lJTI7_0@PAGEOFF
Ltmp39:
	adr	x8, Ltmp39
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB7_2:
	.loc	2 0 5                           ; lexer.c:0:5
	mov	w8, #8
Ltmp40:
	.loc	2 177 21 is_stmt 1              ; lexer.c:177:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_3:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #9
	.loc	2 178 21 is_stmt 1              ; lexer.c:178:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_4:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #1
	.loc	2 179 21 is_stmt 1              ; lexer.c:179:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_5:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #2
	.loc	2 180 21 is_stmt 1              ; lexer.c:180:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_6:
	.loc	2 181 21                        ; lexer.c:181:21
	str	wzr, [sp, #12]
	b	LBB7_19
LBB7_7:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #10
	.loc	2 182 21 is_stmt 1              ; lexer.c:182:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_8:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #7
	.loc	2 183 21 is_stmt 1              ; lexer.c:183:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_9:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #15
	.loc	2 184 21 is_stmt 1              ; lexer.c:184:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_10:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #6
	.loc	2 185 21 is_stmt 1              ; lexer.c:185:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_11:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #43
	.loc	2 186 21 is_stmt 1              ; lexer.c:186:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_12:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #40
	.loc	2 187 21 is_stmt 1              ; lexer.c:187:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_13:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #41
	.loc	2 188 21 is_stmt 1              ; lexer.c:188:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_14:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #42
	.loc	2 189 21 is_stmt 1              ; lexer.c:189:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_15:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #38
	.loc	2 190 21 is_stmt 1              ; lexer.c:190:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_16:
	.loc	2 0 21 is_stmt 0                ; lexer.c:0:21
	mov	w8, #39
	.loc	2 191 21 is_stmt 1              ; lexer.c:191:21
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_17:
	.loc	2 194 9                         ; lexer.c:194:9
	b	LBB7_18
Ltmp41:
LBB7_18:
	.loc	2 0 9 is_stmt 0                 ; lexer.c:0:9
	mov	w8, #47
	.loc	2 196 5 is_stmt 1               ; lexer.c:196:5
	str	w8, [sp, #12]
	b	LBB7_19
LBB7_19:
	.loc	2 197 1                         ; lexer.c:197:1
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
Ltmp42:
Lfunc_end7:
	.cfi_endproc
	.p2align	2
lJTI7_0:
	.long	LBB7_8-Ltmp39
	.long	LBB7_12-Ltmp39
	.long	LBB7_7-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_4-Ltmp39
	.long	LBB7_5-Ltmp39
	.long	LBB7_2-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_11-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_3-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_6-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_13-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_14-Ltmp39
	.long	LBB7_9-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_15-Ltmp39
	.long	LBB7_17-Ltmp39
	.long	LBB7_16-Ltmp39
	.long	LBB7_10-Ltmp39
                                        ; -- End function
	.globl	_token_array_print              ; -- Begin function token_array_print
	.p2align	2
_token_array_print:                     ; @token_array_print
Lfunc_begin8:
	.loc	2 201 0                         ; lexer.c:201:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
Ltmp43:
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	.loc	2 205 13 prologue_end is_stmt 1 ; lexer.c:205:13
	ldr	x0, [x8]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.54@PAGE
	add	x1, x1, l_.str.54@PAGEOFF
	.loc	2 205 5                         ; lexer.c:205:5
	bl	_fprintf
Ltmp44:
	.loc	2 206 14 is_stmt 1              ; lexer.c:206:14
	str	wzr, [sp, #4]
	.loc	2 206 10 is_stmt 0              ; lexer.c:206:10
	b	LBB8_1
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp45:
	.loc	2 206 21                        ; lexer.c:206:21
	ldr	w8, [sp, #4]
	.loc	2 206 25                        ; lexer.c:206:25
	ldr	x9, [sp, #8]
	.loc	2 206 34                        ; lexer.c:206:34
	ldr	w9, [x9, #8]
	.loc	2 206 23                        ; lexer.c:206:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp46:
	.loc	2 206 5                         ; lexer.c:206:5
	tbnz	w8, #0, LBB8_4
	b	LBB8_2
LBB8_2:                                 ;   in Loop: Header=BB8_1 Depth=1
Ltmp47:
	.loc	2 207 23 is_stmt 1              ; lexer.c:207:23
	ldr	x8, [sp, #8]
	.loc	2 207 33 is_stmt 0              ; lexer.c:207:33
	ldr	x8, [x8]
	.loc	2 207 40                        ; lexer.c:207:40
	ldrsw	x9, [sp, #4]
	.loc	2 207 22                        ; lexer.c:207:22
	add	x0, x8, x9, lsl #4
	.loc	2 207 9                         ; lexer.c:207:9
	bl	_token_print
	b	LBB8_3
LBB8_3:                                 ;   in Loop: Header=BB8_1 Depth=1
	.loc	2 206 41 is_stmt 1              ; lexer.c:206:41
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	.loc	2 206 5 is_stmt 0               ; lexer.c:206:5
	b	LBB8_1
Ltmp48:
LBB8_4:
	.loc	2 208 1 is_stmt 1               ; lexer.c:208:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp49:
Lfunc_end8:
	.cfi_endproc
                                        ; -- End function
	.globl	_char_count                     ; -- Begin function char_count
	.p2align	2
_char_count:                            ; @char_count
Lfunc_begin9:
	.loc	2 212 0                         ; lexer.c:212:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-1]
	str	x1, [sp, #16]
Ltmp50:
	.loc	2 216 32 prologue_end           ; lexer.c:216:32
	ldr	x0, [sp, #16]
	.loc	2 216 25 is_stmt 0              ; lexer.c:216:25
	bl	_strlen
	.loc	2 216 9                         ; lexer.c:216:9
	mov	x8, x0
	str	w8, [sp, #12]
	.loc	2 217 9 is_stmt 1               ; lexer.c:217:9
	str	wzr, [sp, #8]
Ltmp51:
	.loc	2 218 14                        ; lexer.c:218:14
	str	wzr, [sp, #4]
	.loc	2 218 10 is_stmt 0              ; lexer.c:218:10
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp52:
	.loc	2 218 21                        ; lexer.c:218:21
	ldr	w8, [sp, #4]
	.loc	2 218 25                        ; lexer.c:218:25
	ldr	w9, [sp, #12]
	.loc	2 218 23                        ; lexer.c:218:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp53:
	.loc	2 218 5                         ; lexer.c:218:5
	tbnz	w8, #0, LBB9_6
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
Ltmp54:
	.loc	2 219 13 is_stmt 1              ; lexer.c:219:13
	ldr	x8, [sp, #16]
	.loc	2 219 20 is_stmt 0              ; lexer.c:219:20
	ldrsw	x9, [sp, #4]
	.loc	2 219 13                        ; lexer.c:219:13
	ldrsb	w8, [x8, x9]
	.loc	2 219 26                        ; lexer.c:219:26
	ldursb	w9, [x29, #-1]
	.loc	2 219 23                        ; lexer.c:219:23
	subs	w8, w8, w9
	cset	w8, ne
Ltmp55:
	.loc	2 219 13                        ; lexer.c:219:13
	tbnz	w8, #0, LBB9_4
	b	LBB9_3
LBB9_3:                                 ;   in Loop: Header=BB9_1 Depth=1
Ltmp56:
	.loc	2 220 23 is_stmt 1              ; lexer.c:220:23
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	.loc	2 221 9                         ; lexer.c:221:9
	b	LBB9_4
Ltmp57:
LBB9_4:                                 ;   in Loop: Header=BB9_1 Depth=1
	.loc	2 222 5                         ; lexer.c:222:5
	b	LBB9_5
Ltmp58:
LBB9_5:                                 ;   in Loop: Header=BB9_1 Depth=1
	.loc	2 218 41                        ; lexer.c:218:41
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	.loc	2 218 5 is_stmt 0               ; lexer.c:218:5
	b	LBB9_1
Ltmp59:
LBB9_6:
	.loc	2 223 12 is_stmt 1              ; lexer.c:223:12
	ldr	w0, [sp, #8]
	.loc	2 223 5 is_stmt 0               ; lexer.c:223:5
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp60:
Lfunc_end9:
	.cfi_endproc
                                        ; -- End function
	.globl	_char_at_position               ; -- Begin function char_at_position
	.p2align	2
_char_at_position:                      ; @char_at_position
Lfunc_begin10:
	.loc	2 228 0 is_stmt 1               ; lexer.c:228:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #24]
	strb	w1, [sp, #23]
	str	x2, [sp, #8]
Ltmp62:
	.loc	2 233 9 prologue_end            ; lexer.c:233:9
	ldr	x8, [sp, #8]
	.loc	2 233 16 is_stmt 0              ; lexer.c:233:16
	ldrsw	x9, [sp, #24]
	.loc	2 233 9                         ; lexer.c:233:9
	ldrsb	w8, [x8, x9]
	.loc	2 233 24                        ; lexer.c:233:24
	ldrsb	w9, [sp, #23]
	.loc	2 233 21                        ; lexer.c:233:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp63:
	.loc	2 233 9                         ; lexer.c:233:9
	tbnz	w8, #0, LBB10_2
	b	LBB10_1
LBB10_1:
	.loc	2 0 9                           ; lexer.c:0:9
	mov	w8, #1
Ltmp64:
	.loc	2 234 9 is_stmt 1               ; lexer.c:234:9
	str	w8, [sp, #28]
	b	LBB10_3
Ltmp65:
LBB10_2:
	.loc	2 0 9 is_stmt 0                 ; lexer.c:0:9
	mov	w8, #-1
	.loc	2 236 5 is_stmt 1               ; lexer.c:236:5
	str	w8, [sp, #28]
	b	LBB10_3
LBB10_3:
	.loc	2 237 1                         ; lexer.c:237:1
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
Ltmp66:
Lfunc_end10:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_array_get_from_string    ; -- Begin function token_array_get_from_string
	.p2align	2
_token_array_get_from_string:           ; @token_array_get_from_string
Lfunc_begin11:
	.loc	2 241 0                         ; lexer.c:241:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	mov	w8, #1
Ltmp67:
	.loc	2 256 9 prologue_end            ; lexer.c:256:9
	stur	w8, [x29, #-28]
	.loc	2 257 9                         ; lexer.c:257:9
	stur	wzr, [x29, #-32]
	.loc	2 259 43                        ; lexer.c:259:43
	ldur	x0, [x29, #-24]
	.loc	2 259 36 is_stmt 0              ; lexer.c:259:36
	bl	_strlen
	.loc	2 259 9                         ; lexer.c:259:9
	mov	x8, x0
	stur	w8, [x29, #-36]
	sub	x0, x29, #16
	.loc	2 265 5 is_stmt 1               ; lexer.c:265:5
	bl	_token_array_init
	mov	x0, #17
	mov	x1, #1
	.loc	2 268 32                        ; lexer.c:268:32
	bl	_calloc
	.loc	2 268 11 is_stmt 0              ; lexer.c:268:11
	str	x0, [sp, #48]
Ltmp68:
	.loc	2 269 9 is_stmt 1               ; lexer.c:269:9
	ldr	x8, [sp, #48]
	.loc	2 269 20 is_stmt 0              ; lexer.c:269:20
	subs	x8, x8, #0
	cset	w8, ne
Ltmp69:
	.loc	2 269 9                         ; lexer.c:269:9
	tbnz	w8, #0, LBB11_2
	b	LBB11_1
LBB11_1:
Ltmp70:
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	.loc	2 270 17 is_stmt 1              ; lexer.c:270:17
	ldr	x0, [x8]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.55@PAGE
	add	x1, x1, l_.str.55@PAGEOFF
	.loc	2 270 9                         ; lexer.c:270:9
	bl	_fprintf
	mov	w0, #1
	.loc	2 271 9 is_stmt 1               ; lexer.c:271:9
	bl	_exit
Ltmp71:
LBB11_2:
	.loc	2 277 14                        ; lexer.c:277:14
	str	wzr, [sp, #44]
	.loc	2 277 10 is_stmt 0              ; lexer.c:277:10
	b	LBB11_3
LBB11_3:                                ; =>This Inner Loop Header: Depth=1
Ltmp72:
	.loc	2 277 21                        ; lexer.c:277:21
	ldr	w8, [sp, #44]
	.loc	2 277 25                        ; lexer.c:277:25
	ldur	w9, [x29, #-36]
	.loc	2 277 23                        ; lexer.c:277:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp73:
	.loc	2 277 5                         ; lexer.c:277:5
	tbnz	w8, #0, LBB11_76
	b	LBB11_4
LBB11_4:                                ;   in Loop: Header=BB11_3 Depth=1
Ltmp74:
	.loc	2 278 22 is_stmt 1              ; lexer.c:278:22
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
Ltmp75:
	.loc	2 279 27                        ; lexer.c:279:27
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w0, [x8, x9]
	.loc	2 279 41 is_stmt 0              ; lexer.c:279:41
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldrsb	w1, [x8, w9, sxtw]
	.loc	2 279 13                        ; lexer.c:279:13
	bl	_is_identifier
	.loc	2 279 56                        ; lexer.c:279:56
	subs	w8, w0, #1
	cset	w8, ne
Ltmp76:
	.loc	2 279 13                        ; lexer.c:279:13
	tbnz	w8, #0, LBB11_6
	b	LBB11_5
LBB11_5:                                ;   in Loop: Header=BB11_3 Depth=1
Ltmp77:
	.loc	2 281 38 is_stmt 1              ; lexer.c:281:38
	ldr	x0, [sp, #48]
	.loc	2 281 50 is_stmt 0              ; lexer.c:281:50
	ldur	x1, [x29, #-24]
	.loc	2 281 64                        ; lexer.c:281:64
	ldr	w2, [sp, #44]
	sub	x3, x29, #16
	.loc	2 281 17                        ; lexer.c:281:17
	bl	_token_identifier_get
	.loc	2 281 15                        ; lexer.c:281:15
	str	w0, [sp, #44]
	.loc	2 282 13 is_stmt 1              ; lexer.c:282:13
	b	LBB11_75
Ltmp78:
LBB11_6:                                ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 285 26                        ; lexer.c:285:26
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w0, [x8, x9]
	.loc	2 285 18 is_stmt 0              ; lexer.c:285:18
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
Ltmp79:
	.loc	2 285 18                        ; lexer.c:285:18
	tbnz	w8, #0, LBB11_11
	b	LBB11_7
LBB11_7:                                ;   in Loop: Header=BB11_3 Depth=1
Ltmp80:
	.loc	2 287 13 is_stmt 1              ; lexer.c:287:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp81:
	.loc	2 288 26                        ; lexer.c:288:26
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w0, [x8, w9, sxtw]
	.loc	2 288 18 is_stmt 0              ; lexer.c:288:18
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 288 37                        ; lexer.c:288:37
	tbnz	w8, #0, LBB11_10
	b	LBB11_8
LBB11_8:                                ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 288 40                        ; lexer.c:288:40
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w8, [x8, w9, sxtw]
	.loc	2 288 50                        ; lexer.c:288:50
	subs	w8, w8, #46
	cset	w8, eq
Ltmp82:
	.loc	2 288 17                        ; lexer.c:288:17
	tbnz	w8, #0, LBB11_10
	b	LBB11_9
LBB11_9:                                ;   in Loop: Header=BB11_3 Depth=1
Ltmp83:
	.loc	2 290 17 is_stmt 1              ; lexer.c:290:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #28
	bl	_token_to_array_from_string
	.loc	2 291 17                        ; lexer.c:291:17
	b	LBB11_75
Ltmp84:
LBB11_10:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 293 9                         ; lexer.c:293:9
	b	LBB11_73
Ltmp85:
LBB11_11:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 295 25                        ; lexer.c:295:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #46
	.loc	2 295 22 is_stmt 0              ; lexer.c:295:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp86:
	.loc	2 295 18                        ; lexer.c:295:18
	tbnz	w8, #0, LBB11_18
	b	LBB11_12
LBB11_12:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp87:
	.loc	2 301 44 is_stmt 1              ; lexer.c:301:44
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldrsb	w0, [x8, w9, sxtw]
	.loc	2 301 36 is_stmt 0              ; lexer.c:301:36
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	.loc	2 301 59                        ; lexer.c:301:59
	tbnz	w8, #0, LBB11_15
	b	LBB11_13
LBB11_13:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 301 70                        ; lexer.c:301:70
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w0, [x8, w9, sxtw]
	.loc	2 301 62                        ; lexer.c:301:62
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	.loc	2 301 81                        ; lexer.c:301:81
	tbnz	w8, #0, LBB11_15
	b	LBB11_14
LBB11_14:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 301 101                       ; lexer.c:301:101
	ldr	x1, [sp, #48]
	mov	w0, #46
	.loc	2 301 85                        ; lexer.c:301:85
	bl	_char_count
	.loc	2 301 113                       ; lexer.c:301:113
	subs	w8, w0, #1
	cset	w8, lt
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB11_15
LBB11_15:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 0 113                         ; lexer.c:0:113
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	.loc	2 301 81                        ; lexer.c:301:81
	and	w8, w8, #0x1
	.loc	2 301 17                        ; lexer.c:301:17
	str	w8, [sp, #40]
	.loc	2 303 13 is_stmt 1              ; lexer.c:303:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp88:
	.loc	2 307 18                        ; lexer.c:307:18
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ne
Ltmp89:
	.loc	2 307 17 is_stmt 0              ; lexer.c:307:17
	tbnz	w8, #0, LBB11_17
	b	LBB11_16
LBB11_16:
Ltmp90:
	.loc	2 309 37 is_stmt 1              ; lexer.c:309:37
	ldur	w0, [x29, #-28]
	.loc	2 309 50 is_stmt 0              ; lexer.c:309:50
	ldur	w1, [x29, #-32]
	.loc	2 309 65                        ; lexer.c:309:65
	ldr	x2, [sp, #48]
	.loc	2 309 78                        ; lexer.c:309:78
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x3, x8, x9
	.loc	2 309 17                        ; lexer.c:309:17
	bl	_error_message_print
	.loc	2 310 17 is_stmt 1              ; lexer.c:310:17
	ldr	x0, [sp, #48]
	mov	w1, #0
	mov	x2, #16
	mov	x3, #-1
	bl	___memset_chk
	.loc	2 311 17                        ; lexer.c:311:17
	b	LBB11_76
Ltmp91:
LBB11_17:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 313 13                        ; lexer.c:313:13
	b	LBB11_75
Ltmp92:
LBB11_18:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 316 25                        ; lexer.c:316:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #43
	.loc	2 316 22 is_stmt 0              ; lexer.c:316:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp93:
	.loc	2 316 18                        ; lexer.c:316:18
	tbnz	w8, #0, LBB11_23
	b	LBB11_19
LBB11_19:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp94:
	.loc	2 318 13 is_stmt 1              ; lexer.c:318:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp95:
	.loc	2 320 24                        ; lexer.c:320:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #43
	.loc	2 320 21 is_stmt 0              ; lexer.c:320:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp96:
	.loc	2 320 17                        ; lexer.c:320:17
	tbnz	w8, #0, LBB11_21
	b	LBB11_20
LBB11_20:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp97:
	.loc	2 325 17 is_stmt 1              ; lexer.c:325:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 326 17                        ; lexer.c:326:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #3
	bl	_token_to_array_from_string
	.loc	2 327 18                        ; lexer.c:327:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 328 30                        ; lexer.c:328:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 329 13                        ; lexer.c:329:13
	b	LBB11_22
Ltmp98:
LBB11_21:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 333 17                        ; lexer.c:333:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #11
	bl	_token_to_array_from_string
	b	LBB11_22
Ltmp99:
LBB11_22:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 335 13                        ; lexer.c:335:13
	b	LBB11_75
Ltmp100:
LBB11_23:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 338 25                        ; lexer.c:338:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #45
	.loc	2 338 22 is_stmt 0              ; lexer.c:338:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp101:
	.loc	2 338 18                        ; lexer.c:338:18
	tbnz	w8, #0, LBB11_28
	b	LBB11_24
LBB11_24:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp102:
	.loc	2 340 13 is_stmt 1              ; lexer.c:340:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp103:
	.loc	2 342 24                        ; lexer.c:342:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #45
	.loc	2 342 21 is_stmt 0              ; lexer.c:342:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp104:
	.loc	2 342 17                        ; lexer.c:342:17
	tbnz	w8, #0, LBB11_26
	b	LBB11_25
LBB11_25:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp105:
	.loc	2 344 17 is_stmt 1              ; lexer.c:344:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 345 17                        ; lexer.c:345:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #4
	bl	_token_to_array_from_string
	.loc	2 346 18                        ; lexer.c:346:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 347 30                        ; lexer.c:347:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 348 13                        ; lexer.c:348:13
	b	LBB11_27
Ltmp106:
LBB11_26:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 351 17                        ; lexer.c:351:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #5
	bl	_token_to_array_from_string
	b	LBB11_27
Ltmp107:
LBB11_27:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 353 13                        ; lexer.c:353:13
	b	LBB11_75
Ltmp108:
LBB11_28:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 356 25                        ; lexer.c:356:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #60
	.loc	2 356 22 is_stmt 0              ; lexer.c:356:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp109:
	.loc	2 356 18                        ; lexer.c:356:18
	tbnz	w8, #0, LBB11_36
	b	LBB11_29
LBB11_29:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp110:
	.loc	2 358 13 is_stmt 1              ; lexer.c:358:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp111:
	.loc	2 361 24                        ; lexer.c:361:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #60
	.loc	2 361 21 is_stmt 0              ; lexer.c:361:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp112:
	.loc	2 361 17                        ; lexer.c:361:17
	tbnz	w8, #0, LBB11_31
	b	LBB11_30
LBB11_30:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp113:
	.loc	2 363 17 is_stmt 1              ; lexer.c:363:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 364 17                        ; lexer.c:364:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #12
	bl	_token_to_array_from_string
	.loc	2 365 18                        ; lexer.c:365:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 366 30                        ; lexer.c:366:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 367 13                        ; lexer.c:367:13
	b	LBB11_35
Ltmp114:
LBB11_31:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 370 29                        ; lexer.c:370:29
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #61
	.loc	2 370 26 is_stmt 0              ; lexer.c:370:26
	subs	w8, w8, w9
	cset	w8, ne
Ltmp115:
	.loc	2 370 22                        ; lexer.c:370:22
	tbnz	w8, #0, LBB11_33
	b	LBB11_32
LBB11_32:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp116:
	.loc	2 372 17 is_stmt 1              ; lexer.c:372:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 373 17                        ; lexer.c:373:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #24
	bl	_token_to_array_from_string
	.loc	2 374 18                        ; lexer.c:374:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 375 30                        ; lexer.c:375:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 376 13                        ; lexer.c:376:13
	b	LBB11_34
Ltmp117:
LBB11_33:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 381 17                        ; lexer.c:381:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #20
	bl	_token_to_array_from_string
	b	LBB11_34
Ltmp118:
LBB11_34:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 0 17 is_stmt 0                ; lexer.c:0:17
	b	LBB11_35
LBB11_35:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 383 13 is_stmt 1              ; lexer.c:383:13
	b	LBB11_75
Ltmp119:
LBB11_36:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 386 25                        ; lexer.c:386:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #62
	.loc	2 386 22 is_stmt 0              ; lexer.c:386:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp120:
	.loc	2 386 18                        ; lexer.c:386:18
	tbnz	w8, #0, LBB11_44
	b	LBB11_37
LBB11_37:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp121:
	.loc	2 388 13 is_stmt 1              ; lexer.c:388:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp122:
	.loc	2 391 24                        ; lexer.c:391:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #62
	.loc	2 391 21 is_stmt 0              ; lexer.c:391:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp123:
	.loc	2 391 17                        ; lexer.c:391:17
	tbnz	w8, #0, LBB11_39
	b	LBB11_38
LBB11_38:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp124:
	.loc	2 393 17 is_stmt 1              ; lexer.c:393:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 394 17                        ; lexer.c:394:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #13
	bl	_token_to_array_from_string
	.loc	2 395 18                        ; lexer.c:395:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 396 30                        ; lexer.c:396:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 397 13                        ; lexer.c:397:13
	b	LBB11_43
Ltmp125:
LBB11_39:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 400 29                        ; lexer.c:400:29
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #61
	.loc	2 400 26 is_stmt 0              ; lexer.c:400:26
	subs	w8, w8, w9
	cset	w8, ne
Ltmp126:
	.loc	2 400 22                        ; lexer.c:400:22
	tbnz	w8, #0, LBB11_41
	b	LBB11_40
LBB11_40:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp127:
	.loc	2 402 17 is_stmt 1              ; lexer.c:402:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 403 17                        ; lexer.c:403:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #25
	bl	_token_to_array_from_string
	.loc	2 404 18                        ; lexer.c:404:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 405 30                        ; lexer.c:405:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 406 13                        ; lexer.c:406:13
	b	LBB11_42
Ltmp128:
LBB11_41:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 411 17                        ; lexer.c:411:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #21
	bl	_token_to_array_from_string
	b	LBB11_42
Ltmp129:
LBB11_42:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 0 17 is_stmt 0                ; lexer.c:0:17
	b	LBB11_43
LBB11_43:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 413 13 is_stmt 1              ; lexer.c:413:13
	b	LBB11_75
Ltmp130:
LBB11_44:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 416 25                        ; lexer.c:416:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #61
	.loc	2 416 22 is_stmt 0              ; lexer.c:416:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp131:
	.loc	2 416 18                        ; lexer.c:416:18
	tbnz	w8, #0, LBB11_49
	b	LBB11_45
LBB11_45:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp132:
	.loc	2 418 13 is_stmt 1              ; lexer.c:418:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp133:
	.loc	2 420 24                        ; lexer.c:420:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #61
	.loc	2 420 21 is_stmt 0              ; lexer.c:420:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp134:
	.loc	2 420 17                        ; lexer.c:420:17
	tbnz	w8, #0, LBB11_47
	b	LBB11_46
LBB11_46:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp135:
	.loc	2 422 17 is_stmt 1              ; lexer.c:422:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 423 17                        ; lexer.c:423:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #22
	bl	_token_to_array_from_string
	.loc	2 424 18                        ; lexer.c:424:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 425 30                        ; lexer.c:425:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 426 13                        ; lexer.c:426:13
	b	LBB11_48
Ltmp136:
LBB11_47:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 430 17                        ; lexer.c:430:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #30
	bl	_token_to_array_from_string
	b	LBB11_48
Ltmp137:
LBB11_48:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 432 13                        ; lexer.c:432:13
	b	LBB11_75
Ltmp138:
LBB11_49:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 435 33                        ; lexer.c:435:33
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #38
	.loc	2 435 30 is_stmt 0              ; lexer.c:435:30
	subs	w8, w8, w9
	cset	w8, ne
Ltmp139:
	.loc	2 435 26                        ; lexer.c:435:26
	tbnz	w8, #0, LBB11_54
	b	LBB11_50
LBB11_50:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp140:
	.loc	2 437 13 is_stmt 1              ; lexer.c:437:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp141:
	.loc	2 440 24                        ; lexer.c:440:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #38
	.loc	2 440 21 is_stmt 0              ; lexer.c:440:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp142:
	.loc	2 440 17                        ; lexer.c:440:17
	tbnz	w8, #0, LBB11_52
	b	LBB11_51
LBB11_51:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp143:
	.loc	2 442 17 is_stmt 1              ; lexer.c:442:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 443 17                        ; lexer.c:443:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #18
	bl	_token_to_array_from_string
	.loc	2 444 18                        ; lexer.c:444:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 445 30                        ; lexer.c:445:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 446 13                        ; lexer.c:446:13
	b	LBB11_53
Ltmp144:
LBB11_52:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 450 17                        ; lexer.c:450:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #14
	bl	_token_to_array_from_string
	b	LBB11_53
Ltmp145:
LBB11_53:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 452 13                        ; lexer.c:452:13
	b	LBB11_75
Ltmp146:
LBB11_54:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 455 25                        ; lexer.c:455:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #124
	.loc	2 455 22 is_stmt 0              ; lexer.c:455:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp147:
	.loc	2 455 18                        ; lexer.c:455:18
	tbnz	w8, #0, LBB11_59
	b	LBB11_55
LBB11_55:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp148:
	.loc	2 457 13 is_stmt 1              ; lexer.c:457:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp149:
	.loc	2 460 24                        ; lexer.c:460:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #124
	.loc	2 460 21 is_stmt 0              ; lexer.c:460:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp150:
	.loc	2 460 17                        ; lexer.c:460:17
	tbnz	w8, #0, LBB11_57
	b	LBB11_56
LBB11_56:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp151:
	.loc	2 462 17 is_stmt 1              ; lexer.c:462:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 463 17                        ; lexer.c:463:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #19
	bl	_token_to_array_from_string
	.loc	2 464 18                        ; lexer.c:464:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 465 30                        ; lexer.c:465:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 466 13                        ; lexer.c:466:13
	b	LBB11_58
Ltmp152:
LBB11_57:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 470 17                        ; lexer.c:470:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #16
	bl	_token_to_array_from_string
	b	LBB11_58
Ltmp153:
LBB11_58:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 472 13                        ; lexer.c:472:13
	b	LBB11_75
Ltmp154:
LBB11_59:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 475 25                        ; lexer.c:475:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #33
	.loc	2 475 22 is_stmt 0              ; lexer.c:475:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp155:
	.loc	2 475 18                        ; lexer.c:475:18
	tbnz	w8, #0, LBB11_64
	b	LBB11_60
LBB11_60:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp156:
	.loc	2 477 13 is_stmt 1              ; lexer.c:477:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp157:
	.loc	2 479 24                        ; lexer.c:479:24
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #61
	.loc	2 479 21 is_stmt 0              ; lexer.c:479:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp158:
	.loc	2 479 17                        ; lexer.c:479:17
	tbnz	w8, #0, LBB11_62
	b	LBB11_61
LBB11_61:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp159:
	.loc	2 481 17 is_stmt 1              ; lexer.c:481:17
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 482 17                        ; lexer.c:482:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #23
	bl	_token_to_array_from_string
	.loc	2 483 18                        ; lexer.c:483:18
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 484 30                        ; lexer.c:484:30
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	.loc	2 485 13                        ; lexer.c:485:13
	b	LBB11_63
Ltmp160:
LBB11_62:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 489 17                        ; lexer.c:489:17
	ldr	x0, [sp, #48]
	sub	x1, x29, #16
	mov	w2, #17
	bl	_token_to_array_from_string
	b	LBB11_63
Ltmp161:
LBB11_63:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 491 13                        ; lexer.c:491:13
	b	LBB11_75
Ltmp162:
LBB11_64:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 494 44                        ; lexer.c:494:44
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w0, [x8, x9]
	.loc	2 494 18 is_stmt 0              ; lexer.c:494:18
	bl	_is_valid_single_character
	.loc	2 494 58                        ; lexer.c:494:58
	subs	w8, w0, #1
	cset	w8, ne
Ltmp163:
	.loc	2 494 18                        ; lexer.c:494:18
	tbnz	w8, #0, LBB11_66
	b	LBB11_65
LBB11_65:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp164:
	.loc	2 496 13 is_stmt 1              ; lexer.c:496:13
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 497 13                        ; lexer.c:497:13
	ldr	x8, [sp, #48]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w0, [x8, x9]
	bl	_token_type_get_single_char
	mov	x2, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	sub	x1, x29, #16
	bl	_token_to_array_from_string
	.loc	2 498 13                        ; lexer.c:498:13
	b	LBB11_75
Ltmp165:
LBB11_66:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 605 25                        ; lexer.c:605:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #34
	.loc	2 605 22 is_stmt 0              ; lexer.c:605:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp166:
	.loc	2 605 18                        ; lexer.c:605:18
	tbnz	w8, #0, LBB11_68
	b	LBB11_67
LBB11_67:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp167:
	.loc	2 607 47 is_stmt 1              ; lexer.c:607:47
	ldur	x1, [x29, #-24]
	.loc	2 607 61 is_stmt 0              ; lexer.c:607:61
	ldr	w2, [sp, #44]
	add	x0, sp, #48
	sub	x3, x29, #16
	.loc	2 607 17                        ; lexer.c:607:17
	bl	_token_string_get
	.loc	2 607 74                        ; lexer.c:607:74
	add	w8, w0, #1
	.loc	2 607 15                        ; lexer.c:607:15
	str	w8, [sp, #44]
	.loc	2 609 13 is_stmt 1              ; lexer.c:609:13
	b	LBB11_75
Ltmp168:
LBB11_68:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 612 25                        ; lexer.c:612:25
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #32
	.loc	2 612 22 is_stmt 0              ; lexer.c:612:22
	subs	w8, w8, w9
	cset	w8, ne
Ltmp169:
	.loc	2 612 18                        ; lexer.c:612:18
	tbnz	w8, #0, LBB11_70
	b	LBB11_69
LBB11_69:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp170:
	.loc	2 615 13 is_stmt 1              ; lexer.c:615:13
	b	LBB11_75
Ltmp171:
LBB11_70:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 617 26                        ; lexer.c:617:26
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w9, [x8, x9]
	mov	w8, #10
	.loc	2 617 23 is_stmt 0              ; lexer.c:617:23
	subs	w8, w8, w9
	cset	w8, ne
Ltmp172:
	.loc	2 617 18                        ; lexer.c:617:18
	tbnz	w8, #0, LBB11_72
	b	LBB11_71
LBB11_71:                               ;   in Loop: Header=BB11_3 Depth=1
Ltmp173:
	.loc	2 620 24 is_stmt 1              ; lexer.c:620:24
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	.loc	2 621 27                        ; lexer.c:621:27
	stur	wzr, [x29, #-32]
	.loc	2 622 13                        ; lexer.c:622:13
	b	LBB11_75
Ltmp174:
LBB11_72:
	.loc	2 628 77                        ; lexer.c:628:77
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	ldrsb	w12, [x8, x9]
	.loc	2 628 91 is_stmt 0              ; lexer.c:628:91
	ldur	w8, [x29, #-28]
                                        ; implicit-def: $x10
	mov	x10, x8
	.loc	2 628 104                       ; lexer.c:628:104
	ldur	w9, [x29, #-32]
                                        ; implicit-def: $x8
	mov	x8, x9
	.loc	2 628 13                        ; lexer.c:628:13
	mov	x9, sp
                                        ; implicit-def: $x11
	mov	x11, x12
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x0, l_.str.56@PAGE
	add	x0, x0, l_.str.56@PAGEOFF
	.loc	2 628 13                        ; lexer.c:628:13
	bl	_printf
	.loc	2 629 13 is_stmt 1              ; lexer.c:629:13
	b	LBB11_76
Ltmp175:
LBB11_73:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 0 13 is_stmt 0                ; lexer.c:0:13
	b	LBB11_74
LBB11_74:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 632 5 is_stmt 1               ; lexer.c:632:5
	b	LBB11_75
Ltmp176:
LBB11_75:                               ;   in Loop: Header=BB11_3 Depth=1
	.loc	2 277 46                        ; lexer.c:277:46
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	.loc	2 277 5 is_stmt 0               ; lexer.c:277:5
	b	LBB11_3
Ltmp177:
LBB11_76:
	.loc	2 634 10 is_stmt 1              ; lexer.c:634:10
	ldr	x0, [sp, #48]
	.loc	2 634 5 is_stmt 0               ; lexer.c:634:5
	bl	_free
	.loc	2 641 5 is_stmt 1               ; lexer.c:641:5
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
Ltmp178:
Lfunc_end11:
	.cfi_endproc
                                        ; -- End function
	.globl	_is_identifier                  ; -- Begin function is_identifier
	.p2align	2
_is_identifier:                         ; @is_identifier
Lfunc_begin12:
	.loc	2 688 0                         ; lexer.c:688:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-5]
	sturb	w1, [x29, #-6]
Ltmp179:
	.loc	2 689 18 prologue_end           ; lexer.c:689:18
	ldursb	w0, [x29, #-5]
	.loc	2 689 10 is_stmt 0              ; lexer.c:689:10
	bl	_isalpha
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 689 27                        ; lexer.c:689:27
	tbnz	w8, #0, LBB12_5
	b	LBB12_1
LBB12_1:
	.loc	2 689 30                        ; lexer.c:689:30
	ldursb	w8, [x29, #-5]
	.loc	2 689 38                        ; lexer.c:689:38
	subs	w8, w8, #95
	cset	w8, eq
	.loc	2 689 46                        ; lexer.c:689:46
	tbnz	w8, #0, LBB12_5
	b	LBB12_2
LBB12_2:
	.loc	2 690 18 is_stmt 1              ; lexer.c:690:18
	ldursb	w0, [x29, #-5]
	.loc	2 690 10 is_stmt 0              ; lexer.c:690:10
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
	.loc	2 690 27                        ; lexer.c:690:27
	tbnz	w8, #0, LBB12_6
	b	LBB12_3
LBB12_3:
	.loc	2 690 39                        ; lexer.c:690:39
	ldursb	w0, [x29, #-6]
	.loc	2 690 31                        ; lexer.c:690:31
	bl	_isalpha
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 690 49                        ; lexer.c:690:49
	tbnz	w8, #0, LBB12_5
	b	LBB12_4
LBB12_4:
	.loc	2 690 52                        ; lexer.c:690:52
	ldursb	w8, [x29, #-6]
	.loc	2 690 61                        ; lexer.c:690:61
	subs	w8, w8, #95
	cset	w8, ne
Ltmp180:
	.loc	2 689 9 is_stmt 1               ; lexer.c:689:9
	tbnz	w8, #0, LBB12_6
	b	LBB12_5
LBB12_5:
	.loc	2 0 9 is_stmt 0                 ; lexer.c:0:9
	mov	w8, #1
Ltmp181:
	.loc	2 691 9 is_stmt 1               ; lexer.c:691:9
	stur	w8, [x29, #-4]
	b	LBB12_7
Ltmp182:
LBB12_6:
	.loc	2 0 9 is_stmt 0                 ; lexer.c:0:9
	mov	w8, #-1
	.loc	2 692 5 is_stmt 1               ; lexer.c:692:5
	stur	w8, [x29, #-4]
	b	LBB12_7
LBB12_7:
	.loc	2 693 1                         ; lexer.c:693:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp183:
Lfunc_end12:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_identifier_get           ; -- Begin function token_identifier_get
	.p2align	2
_token_identifier_get:                  ; @token_identifier_get
Lfunc_begin13:
	.loc	2 707 0                         ; lexer.c:707:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #16]
Ltmp184:
	.loc	2 708 5 prologue_end            ; lexer.c:708:5
	b	LBB13_1
LBB13_1:                                ; =>This Inner Loop Header: Depth=1
Ltmp185:
	.loc	2 710 9                         ; lexer.c:710:9
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp186:
	.loc	2 711 22                        ; lexer.c:711:22
	ldur	x8, [x29, #-16]
	.loc	2 711 35 is_stmt 0              ; lexer.c:711:35
	ldur	w9, [x29, #-20]
	.loc	2 711 49                        ; lexer.c:711:49
	add	w9, w9, #1
	.loc	2 711 22                        ; lexer.c:711:22
	ldrsb	w0, [x8, w9, sxtw]
	.loc	2 711 14                        ; lexer.c:711:14
	bl	_isalnum
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 711 55                        ; lexer.c:711:55
	tbnz	w8, #0, LBB13_4
	b	LBB13_2
LBB13_2:                                ;   in Loop: Header=BB13_1 Depth=1
	.loc	2 711 65                        ; lexer.c:711:65
	ldur	x8, [x29, #-16]
	.loc	2 711 78                        ; lexer.c:711:78
	ldur	w9, [x29, #-20]
	.loc	2 711 92                        ; lexer.c:711:92
	add	w9, w9, #1
	.loc	2 711 65                        ; lexer.c:711:65
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #95
	.loc	2 711 62                        ; lexer.c:711:62
	subs	w8, w8, w9
	cset	w8, eq
Ltmp187:
	.loc	2 711 13                        ; lexer.c:711:13
	tbnz	w8, #0, LBB13_4
	b	LBB13_3
LBB13_3:
Ltmp188:
	.loc	2 714 40 is_stmt 1              ; lexer.c:714:40
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	.loc	2 714 48 is_stmt 0              ; lexer.c:714:48
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	.loc	2 714 74                        ; lexer.c:714:74
	ldur	x0, [x29, #-8]
	.loc	2 714 57                        ; lexer.c:714:57
	bl	_token_word_match
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	.loc	2 714 13                        ; lexer.c:714:13
	bl	_token_to_array_from_string
	.loc	2 715 13 is_stmt 1              ; lexer.c:715:13
	b	LBB13_5
Ltmp189:
LBB13_4:                                ;   in Loop: Header=BB13_1 Depth=1
	.loc	2 717 22                        ; lexer.c:717:22
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
Ltmp190:
	.loc	2 708 5                         ; lexer.c:708:5
	b	LBB13_1
LBB13_5:
	.loc	2 719 12                        ; lexer.c:719:12
	ldur	w0, [x29, #-20]
	.loc	2 719 5 is_stmt 0               ; lexer.c:719:5
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp191:
Lfunc_end13:
	.cfi_endproc
                                        ; -- End function
	.globl	_error_message_print            ; -- Begin function error_message_print
	.p2align	2
_error_message_print:                   ; @error_message_print
Lfunc_begin14:
	.loc	2 816 0 is_stmt 1               ; lexer.c:816:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	x2, [x29, #-16]
	stur	x3, [x29, #-24]
Ltmp192:
	.loc	2 820 10 prologue_end           ; lexer.c:820:10
	ldur	x8, [x29, #-24]
	.loc	2 820 9 is_stmt 0               ; lexer.c:820:9
	ldrsb	w13, [x8]
	.loc	2 820 19                        ; lexer.c:820:19
	ldur	w8, [x29, #-4]
                                        ; implicit-def: $x11
	mov	x11, x8
	.loc	2 820 32                        ; lexer.c:820:32
	ldur	w8, [x29, #-8]
                                        ; implicit-def: $x10
	mov	x10, x8
	.loc	2 820 47                        ; lexer.c:820:47
	ldur	x8, [x29, #-16]
	.loc	2 817 5 is_stmt 1               ; lexer.c:817:5
	mov	x9, sp
                                        ; implicit-def: $x12
	mov	x12, x13
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x0, l_.str.70@PAGE
	add	x0, x0, l_.str.70@PAGEOFF
	.loc	2 817 5                         ; lexer.c:817:5
	bl	_printf
	.loc	2 821 1 is_stmt 1               ; lexer.c:821:1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp193:
Lfunc_end14:
	.cfi_endproc
                                        ; -- End function
	.globl	_is_valid_single_character      ; -- Begin function is_valid_single_character
	.p2align	2
_is_valid_single_character:             ; @is_valid_single_character
Lfunc_begin15:
	.loc	2 791 0                         ; lexer.c:791:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #11]
Ltmp195:
	.loc	2 792 12 prologue_end           ; lexer.c:792:12
	ldrsb	w8, [sp, #11]
	.loc	2 792 5 is_stmt 0               ; lexer.c:792:5
	subs	w8, w8, #35
                                        ; kill: def $x8 killed $w8
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #91
	cset	w8, hi
	tbnz	w8, #0, LBB15_3
; %bb.1:
	.loc	2 0 5                           ; lexer.c:0:5
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	.loc	2 792 5                         ; lexer.c:792:5
	adrp	x10, lJTI15_0@PAGE
	add	x10, x10, lJTI15_0@PAGEOFF
Ltmp196:
	adr	x8, Ltmp196
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB15_2:
	.loc	2 0 5                           ; lexer.c:0:5
	mov	w8, #1
Ltmp197:
	.loc	2 809 13 is_stmt 1              ; lexer.c:809:13
	str	w8, [sp, #12]
	b	LBB15_4
LBB15_3:
	.loc	2 0 13 is_stmt 0                ; lexer.c:0:13
	mov	w8, #-1
	.loc	2 811 13 is_stmt 1              ; lexer.c:811:13
	str	w8, [sp, #12]
	b	LBB15_4
Ltmp198:
LBB15_4:
	.loc	2 813 1                         ; lexer.c:813:1
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
Ltmp199:
Lfunc_end15:
	.cfi_endproc
	.p2align	2
lJTI15_0:
	.long	LBB15_2-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_3-Ltmp196
	.long	LBB15_2-Ltmp196
	.long	LBB15_2-Ltmp196
                                        ; -- End function
	.globl	_token_string_get               ; -- Begin function token_string_get
	.p2align	2
_token_string_get:                      ; @token_string_get
Lfunc_begin16:
	.loc	2 724 0                         ; lexer.c:724:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #32]
Ltmp200:
	.loc	2 725 12 prologue_end           ; lexer.c:725:12
	str	xzr, [sp, #24]
	mov	x8, #15
	.loc	2 726 12                        ; lexer.c:726:12
	str	x8, [sp, #16]
	.loc	2 727 5                         ; lexer.c:727:5
	b	LBB16_1
LBB16_1:                                ; =>This Inner Loop Header: Depth=1
Ltmp201:
	.loc	2 729 13                        ; lexer.c:729:13
	ldr	x8, [sp, #24]
	.loc	2 729 30 is_stmt 0              ; lexer.c:729:30
	ldr	x9, [sp, #16]
	.loc	2 729 27                        ; lexer.c:729:27
	subs	x8, x8, x9
	cset	w8, ne
Ltmp202:
	.loc	2 729 13                        ; lexer.c:729:13
	tbnz	w8, #0, LBB16_6
	b	LBB16_2
LBB16_2:                                ;   in Loop: Header=BB16_1 Depth=1
Ltmp203:
	.loc	2 0 0                           ; lexer.c:0:0
	adrp	x0, l_.str.68@PAGE
	add	x0, x0, l_.str.68@PAGEOFF
	.loc	2 731 13 is_stmt 1              ; lexer.c:731:13
	bl	_printf
	.loc	2 732 42                        ; lexer.c:732:42
	ldur	x8, [x29, #-8]
	.loc	2 732 41 is_stmt 0              ; lexer.c:732:41
	ldr	x0, [x8]
	.loc	2 732 52                        ; lexer.c:732:52
	ldr	x9, [sp, #24]
	mov	x8, #6
	.loc	2 732 51                        ; lexer.c:732:51
	mul	x1, x8, x9
	.loc	2 732 33                        ; lexer.c:732:33
	bl	_realloc
	.loc	2 732 19                        ; lexer.c:732:19
	str	x0, [sp, #8]
Ltmp204:
	.loc	2 733 17 is_stmt 1              ; lexer.c:733:17
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
Ltmp205:
	.loc	2 733 17 is_stmt 0              ; lexer.c:733:17
	tbnz	w8, #0, LBB16_4
	b	LBB16_3
LBB16_3:                                ;   in Loop: Header=BB16_1 Depth=1
Ltmp206:
	.loc	2 735 27 is_stmt 1              ; lexer.c:735:27
	ldr	x8, [sp, #8]
	.loc	2 735 18 is_stmt 0              ; lexer.c:735:18
	ldur	x9, [x29, #-8]
	.loc	2 735 25                        ; lexer.c:735:25
	str	x8, [x9]
	.loc	2 736 13 is_stmt 1              ; lexer.c:736:13
	b	LBB16_5
Ltmp207:
LBB16_4:                                ;   in Loop: Header=BB16_1 Depth=1
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	.loc	2 739 25 is_stmt 1              ; lexer.c:739:25
	ldr	x0, [x8]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.69@PAGE
	add	x1, x1, l_.str.69@PAGEOFF
	.loc	2 739 17                        ; lexer.c:739:17
	bl	_fprintf
	.loc	2 740 22 is_stmt 1              ; lexer.c:740:22
	ldur	x0, [x29, #-8]
	.loc	2 740 17 is_stmt 0              ; lexer.c:740:17
	bl	_free
	b	LBB16_5
Ltmp208:
LBB16_5:                                ;   in Loop: Header=BB16_1 Depth=1
	.loc	2 742 29 is_stmt 1              ; lexer.c:742:29
	ldr	x8, [sp, #16]
	mov	x9, #6
	mul	x8, x8, x9
	str	x8, [sp, #16]
	.loc	2 743 9                         ; lexer.c:743:9
	b	LBB16_6
Ltmp209:
LBB16_6:                                ;   in Loop: Header=BB16_1 Depth=1
	.loc	2 745 9                         ; lexer.c:745:9
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 746 22                        ; lexer.c:746:22
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
Ltmp210:
	.loc	2 747 20                        ; lexer.c:747:20
	ldur	x8, [x29, #-16]
	.loc	2 747 33 is_stmt 0              ; lexer.c:747:33
	ldur	w9, [x29, #-20]
	.loc	2 747 47                        ; lexer.c:747:47
	add	w9, w9, #1
	.loc	2 747 20                        ; lexer.c:747:20
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #34
	.loc	2 747 17                        ; lexer.c:747:17
	subs	w8, w8, w9
	cset	w8, ne
Ltmp211:
	.loc	2 747 13                        ; lexer.c:747:13
	tbnz	w8, #0, LBB16_8
	b	LBB16_7
LBB16_7:
Ltmp212:
	.loc	2 749 13 is_stmt 1              ; lexer.c:749:13
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldur	x8, [x29, #-16]
	ldur	w9, [x29, #-20]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	2 750 41                        ; lexer.c:750:41
	ldur	x8, [x29, #-8]
	.loc	2 750 40 is_stmt 0              ; lexer.c:750:40
	ldr	x0, [x8]
	.loc	2 750 49                        ; lexer.c:750:49
	ldr	x1, [sp, #32]
	mov	w2, #37
	.loc	2 750 13                        ; lexer.c:750:13
	bl	_token_to_array_from_string
	.loc	2 751 13 is_stmt 1              ; lexer.c:751:13
	b	LBB16_9
Ltmp213:
LBB16_8:                                ;   in Loop: Header=BB16_1 Depth=1
	.loc	2 753 22                        ; lexer.c:753:22
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
Ltmp214:
	.loc	2 727 5                         ; lexer.c:727:5
	b	LBB16_1
LBB16_9:
	.loc	2 755 12                        ; lexer.c:755:12
	ldur	w0, [x29, #-20]
	.loc	2 755 5 is_stmt 0               ; lexer.c:755:5
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp215:
Lfunc_end16:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_word_match               ; -- Begin function token_word_match
	.p2align	2
_token_word_match:                      ; @token_word_match
Lfunc_begin17:
	.loc	2 646 0 is_stmt 1               ; lexer.c:646:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
Ltmp216:
	.loc	2 647 30 prologue_end           ; lexer.c:647:30
	ldr	x0, [sp, #16]
	.loc	2 647 23 is_stmt 0              ; lexer.c:647:23
	bl	_strlen
	.loc	2 647 9                         ; lexer.c:647:9
	mov	x8, x0
	str	w8, [sp, #12]
	.loc	2 648 12 is_stmt 1              ; lexer.c:648:12
	ldr	w8, [sp, #12]
	.loc	2 648 5 is_stmt 0               ; lexer.c:648:5
	subs	w8, w8, #2
                                        ; kill: def $x8 killed $w8
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #3
	cset	w8, hi
	tbnz	w8, #0, LBB17_28
; %bb.1:
	.loc	2 0 5                           ; lexer.c:0:5
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	.loc	2 648 5                         ; lexer.c:648:5
	adrp	x10, lJTI17_0@PAGE
	add	x10, x10, lJTI17_0@PAGEOFF
Ltmp217:
	adr	x8, Ltmp217
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB17_2:
Ltmp218:
	.loc	2 651 26 is_stmt 1              ; lexer.c:651:26
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	mov	x2, #2
	.loc	2 651 17                        ; lexer.c:651:17
	bl	_strncmp
	.loc	2 651 43                        ; lexer.c:651:43
	subs	w8, w0, #0
	cset	w8, ne
Ltmp219:
	.loc	2 651 17                        ; lexer.c:651:17
	tbnz	w8, #0, LBB17_4
	b	LBB17_3
LBB17_3:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #31
Ltmp220:
	.loc	2 652 17 is_stmt 1              ; lexer.c:652:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp221:
LBB17_4:
	.loc	2 653 26                        ; lexer.c:653:26
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.58@PAGE
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x2, #2
	.loc	2 653 17                        ; lexer.c:653:17
	bl	_strncmp
	.loc	2 653 43                        ; lexer.c:653:43
	subs	w8, w0, #0
	cset	w8, ne
Ltmp222:
	.loc	2 653 17                        ; lexer.c:653:17
	tbnz	w8, #0, LBB17_6
	b	LBB17_5
LBB17_5:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #32
Ltmp223:
	.loc	2 654 17 is_stmt 1              ; lexer.c:654:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp224:
LBB17_6:
	.loc	2 655 13                        ; lexer.c:655:13
	b	LBB17_29
LBB17_7:
Ltmp225:
	.loc	2 657 26                        ; lexer.c:657:26
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x2, #3
	.loc	2 657 17                        ; lexer.c:657:17
	bl	_strncmp
	.loc	2 657 44                        ; lexer.c:657:44
	subs	w8, w0, #0
	cset	w8, ne
Ltmp226:
	.loc	2 657 17                        ; lexer.c:657:17
	tbnz	w8, #0, LBB17_9
	b	LBB17_8
LBB17_8:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #33
Ltmp227:
	.loc	2 658 17 is_stmt 1              ; lexer.c:658:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp228:
LBB17_9:
	.loc	2 659 26                        ; lexer.c:659:26
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.60@PAGE
	add	x1, x1, l_.str.60@PAGEOFF
	mov	x2, #3
	.loc	2 659 17                        ; lexer.c:659:17
	bl	_strncmp
	.loc	2 659 44                        ; lexer.c:659:44
	subs	w8, w0, #0
	cset	w8, ne
Ltmp229:
	.loc	2 659 17                        ; lexer.c:659:17
	tbnz	w8, #0, LBB17_11
	b	LBB17_10
LBB17_10:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #44
Ltmp230:
	.loc	2 660 17 is_stmt 1              ; lexer.c:660:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp231:
LBB17_11:
	.loc	2 661 13                        ; lexer.c:661:13
	b	LBB17_29
LBB17_12:
Ltmp232:
	.loc	2 663 25                        ; lexer.c:663:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.61@PAGE
	add	x1, x1, l_.str.61@PAGEOFF
	mov	x2, #4
	.loc	2 663 17                        ; lexer.c:663:17
	bl	_strncmp
	.loc	2 663 44                        ; lexer.c:663:44
	subs	w8, w0, #0
	cset	w8, ne
Ltmp233:
	.loc	2 663 17                        ; lexer.c:663:17
	tbnz	w8, #0, LBB17_14
	b	LBB17_13
LBB17_13:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #34
Ltmp234:
	.loc	2 664 17 is_stmt 1              ; lexer.c:664:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp235:
LBB17_14:
	.loc	2 665 25                        ; lexer.c:665:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.62@PAGE
	add	x1, x1, l_.str.62@PAGEOFF
	mov	x2, #4
	.loc	2 665 17                        ; lexer.c:665:17
	bl	_strncmp
	.loc	2 665 44                        ; lexer.c:665:44
	subs	w8, w0, #0
	cset	w8, ne
Ltmp236:
	.loc	2 665 17                        ; lexer.c:665:17
	tbnz	w8, #0, LBB17_16
	b	LBB17_15
LBB17_15:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #35
Ltmp237:
	.loc	2 666 17 is_stmt 1              ; lexer.c:666:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp238:
LBB17_16:
	.loc	2 667 25                        ; lexer.c:667:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.63@PAGE
	add	x1, x1, l_.str.63@PAGEOFF
	mov	x2, #4
	.loc	2 667 17                        ; lexer.c:667:17
	bl	_strncmp
	.loc	2 667 44                        ; lexer.c:667:44
	subs	w8, w0, #0
	cset	w8, ne
Ltmp239:
	.loc	2 667 17                        ; lexer.c:667:17
	tbnz	w8, #0, LBB17_18
	b	LBB17_17
LBB17_17:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #26
Ltmp240:
	.loc	2 668 17 is_stmt 1              ; lexer.c:668:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp241:
LBB17_18:
	.loc	2 669 25                        ; lexer.c:669:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.64@PAGE
	add	x1, x1, l_.str.64@PAGEOFF
	mov	x2, #4
	.loc	2 669 17                        ; lexer.c:669:17
	bl	_strncmp
	.loc	2 669 44                        ; lexer.c:669:44
	subs	w8, w0, #0
	cset	w8, ne
Ltmp242:
	.loc	2 669 17                        ; lexer.c:669:17
	tbnz	w8, #0, LBB17_20
	b	LBB17_19
LBB17_19:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #45
Ltmp243:
	.loc	2 670 17 is_stmt 1              ; lexer.c:670:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp244:
LBB17_20:
	.loc	2 671 13                        ; lexer.c:671:13
	b	LBB17_29
LBB17_21:
Ltmp245:
	.loc	2 673 25                        ; lexer.c:673:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.65@PAGE
	add	x1, x1, l_.str.65@PAGEOFF
	mov	x2, #5
	.loc	2 673 17                        ; lexer.c:673:17
	bl	_strncmp
	.loc	2 673 45                        ; lexer.c:673:45
	subs	w8, w0, #0
	cset	w8, ne
Ltmp246:
	.loc	2 673 17                        ; lexer.c:673:17
	tbnz	w8, #0, LBB17_23
	b	LBB17_22
LBB17_22:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #36
Ltmp247:
	.loc	2 674 17 is_stmt 1              ; lexer.c:674:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp248:
LBB17_23:
	.loc	2 675 25                        ; lexer.c:675:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.66@PAGE
	add	x1, x1, l_.str.66@PAGEOFF
	mov	x2, #5
	.loc	2 675 17                        ; lexer.c:675:17
	bl	_strncmp
	.loc	2 675 45                        ; lexer.c:675:45
	subs	w8, w0, #0
	cset	w8, ne
Ltmp249:
	.loc	2 675 17                        ; lexer.c:675:17
	tbnz	w8, #0, LBB17_25
	b	LBB17_24
LBB17_24:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #27
Ltmp250:
	.loc	2 676 17 is_stmt 1              ; lexer.c:676:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp251:
LBB17_25:
	.loc	2 677 25                        ; lexer.c:677:25
	ldr	x0, [sp, #16]
	.loc	2 0 0 is_stmt 0                 ; lexer.c:0:0
	adrp	x1, l_.str.67@PAGE
	add	x1, x1, l_.str.67@PAGEOFF
	mov	x2, #5
	.loc	2 677 17                        ; lexer.c:677:17
	bl	_strncmp
	.loc	2 677 45                        ; lexer.c:677:45
	subs	w8, w0, #0
	cset	w8, ne
Ltmp252:
	.loc	2 677 17                        ; lexer.c:677:17
	tbnz	w8, #0, LBB17_27
	b	LBB17_26
LBB17_26:
	.loc	2 0 17                          ; lexer.c:0:17
	mov	w8, #46
Ltmp253:
	.loc	2 678 17 is_stmt 1              ; lexer.c:678:17
	stur	w8, [x29, #-4]
	b	LBB17_30
Ltmp254:
LBB17_27:
	.loc	2 679 13                        ; lexer.c:679:13
	b	LBB17_29
LBB17_28:
	.loc	2 681 13                        ; lexer.c:681:13
	b	LBB17_29
Ltmp255:
LBB17_29:
	.loc	2 0 13 is_stmt 0                ; lexer.c:0:13
	mov	w8, #29
	.loc	2 683 5 is_stmt 1               ; lexer.c:683:5
	stur	w8, [x29, #-4]
	b	LBB17_30
LBB17_30:
	.loc	2 684 1                         ; lexer.c:684:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp256:
Lfunc_end17:
	.cfi_endproc
	.p2align	2
lJTI17_0:
	.long	LBB17_2-Ltmp217
	.long	LBB17_7-Ltmp217
	.long	LBB17_12-Ltmp217
	.long	LBB17_21-Ltmp217
                                        ; -- End function
	.globl	_is_identifier_end              ; -- Begin function is_identifier_end
	.p2align	2
_is_identifier_end:                     ; @is_identifier_end
Lfunc_begin18:
	.loc	2 697 0                         ; lexer.c:697:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-5]
Ltmp257:
	.loc	2 698 18 prologue_end           ; lexer.c:698:18
	ldursb	w0, [x29, #-5]
	.loc	2 698 10 is_stmt 0              ; lexer.c:698:10
	bl	_isalnum
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 698 21                        ; lexer.c:698:21
	tbnz	w8, #0, LBB18_3
	b	LBB18_1
LBB18_1:
	.loc	2 698 31                        ; lexer.c:698:31
	ldursb	w9, [x29, #-5]
	mov	w8, #95
	.loc	2 698 28                        ; lexer.c:698:28
	subs	w8, w8, w9
	cset	w8, eq
Ltmp258:
	.loc	2 698 9                         ; lexer.c:698:9
	tbnz	w8, #0, LBB18_3
	b	LBB18_2
LBB18_2:
	.loc	2 0 9                           ; lexer.c:0:9
	mov	w8, #1
Ltmp259:
	.loc	2 700 9 is_stmt 1               ; lexer.c:700:9
	stur	w8, [x29, #-4]
	b	LBB18_4
Ltmp260:
LBB18_3:
	.loc	2 0 9 is_stmt 0                 ; lexer.c:0:9
	mov	w8, #-1
	.loc	2 702 5 is_stmt 1               ; lexer.c:702:5
	stur	w8, [x29, #-4]
	b	LBB18_4
LBB18_4:
	.loc	2 703 1                         ; lexer.c:703:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp261:
Lfunc_end18:
	.cfi_endproc
                                        ; -- End function
	.globl	_token_number_get               ; -- Begin function token_number_get
	.p2align	2
_token_number_get:                      ; @token_number_get
Lfunc_begin19:
	.loc	2 760 0                         ; lexer.c:760:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	str	x3, [sp, #8]
Ltmp262:
	.loc	2 761 5 prologue_end            ; lexer.c:761:5
	b	LBB19_1
LBB19_1:                                ; =>This Inner Loop Header: Depth=1
Ltmp263:
	.loc	2 764 9                         ; lexer.c:764:9
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	add	x1, x8, x9
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp264:
	.loc	2 765 20                        ; lexer.c:765:20
	ldr	x8, [sp, #24]
	.loc	2 765 33 is_stmt 0              ; lexer.c:765:33
	ldrsw	x9, [sp, #20]
	.loc	2 765 20                        ; lexer.c:765:20
	ldrsb	w9, [x8, x9]
	mov	w8, #46
	.loc	2 765 17                        ; lexer.c:765:17
	subs	w8, w8, w9
	cset	w8, ne
	.loc	2 765 48                        ; lexer.c:765:48
	tbnz	w8, #0, LBB19_4
	b	LBB19_2
LBB19_2:                                ;   in Loop: Header=BB19_1 Depth=1
	.loc	2 765 70                        ; lexer.c:765:70
	ldr	x8, [sp, #24]
	.loc	2 765 83                        ; lexer.c:765:83
	ldr	w9, [sp, #20]
	.loc	2 765 97                        ; lexer.c:765:97
	subs	w9, w9, #1
	.loc	2 765 70                        ; lexer.c:765:70
	ldrsb	w0, [x8, w9, sxtw]
	.loc	2 765 103                       ; lexer.c:765:103
	ldr	x8, [sp, #24]
	.loc	2 765 116                       ; lexer.c:765:116
	ldr	w9, [sp, #20]
	.loc	2 765 130                       ; lexer.c:765:130
	add	w9, w9, #1
	.loc	2 765 103                       ; lexer.c:765:103
	ldrsb	w1, [x8, w9, sxtw]
	.loc	2 765 136                       ; lexer.c:765:136
	ldur	x2, [x29, #-16]
	.loc	2 765 53                        ; lexer.c:765:53
	bl	_is_valid_decimal
	subs	w8, w0, #0
	cset	w8, ne
Ltmp265:
	.loc	2 765 13                        ; lexer.c:765:13
	tbnz	w8, #0, LBB19_4
	b	LBB19_3
LBB19_3:
	.loc	2 0 13                          ; lexer.c:0:13
	mov	w8, #-1
Ltmp266:
	.loc	2 767 13 is_stmt 1              ; lexer.c:767:13
	stur	w8, [x29, #-4]
	b	LBB19_9
Ltmp267:
LBB19_4:                                ;   in Loop: Header=BB19_1 Depth=1
	.loc	2 769 22                        ; lexer.c:769:22
	ldr	x8, [sp, #24]
	.loc	2 769 35 is_stmt 0              ; lexer.c:769:35
	ldr	w9, [sp, #20]
	.loc	2 769 49                        ; lexer.c:769:49
	add	w9, w9, #1
	.loc	2 769 22                        ; lexer.c:769:22
	ldrsb	w0, [x8, w9, sxtw]
	.loc	2 769 14                        ; lexer.c:769:14
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 769 54                        ; lexer.c:769:54
	tbnz	w8, #0, LBB19_7
	b	LBB19_5
LBB19_5:                                ;   in Loop: Header=BB19_1 Depth=1
	.loc	2 769 64                        ; lexer.c:769:64
	ldr	x8, [sp, #24]
	.loc	2 769 77                        ; lexer.c:769:77
	ldr	w9, [sp, #20]
	.loc	2 769 91                        ; lexer.c:769:91
	add	w9, w9, #1
	.loc	2 769 64                        ; lexer.c:769:64
	ldrsb	w9, [x8, w9, sxtw]
	mov	w8, #46
	.loc	2 769 61                        ; lexer.c:769:61
	subs	w8, w8, w9
	cset	w8, eq
Ltmp268:
	.loc	2 769 13                        ; lexer.c:769:13
	tbnz	w8, #0, LBB19_7
	b	LBB19_6
LBB19_6:
Ltmp269:
	.loc	2 771 40 is_stmt 1              ; lexer.c:771:40
	ldur	x0, [x29, #-16]
	.loc	2 771 48 is_stmt 0              ; lexer.c:771:48
	ldr	x1, [sp, #8]
	mov	w2, #28
	.loc	2 771 13                        ; lexer.c:771:13
	bl	_token_to_array_from_string
	.loc	2 772 13 is_stmt 1              ; lexer.c:772:13
	b	LBB19_8
Ltmp270:
LBB19_7:                                ;   in Loop: Header=BB19_1 Depth=1
	.loc	2 774 22                        ; lexer.c:774:22
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
Ltmp271:
	.loc	2 761 5                         ; lexer.c:761:5
	b	LBB19_1
LBB19_8:
	.loc	2 776 12                        ; lexer.c:776:12
	ldr	w8, [sp, #20]
	.loc	2 776 5 is_stmt 0               ; lexer.c:776:5
	stur	w8, [x29, #-4]
	b	LBB19_9
LBB19_9:
	.loc	2 777 1 is_stmt 1               ; lexer.c:777:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp272:
Lfunc_end19:
	.cfi_endproc
                                        ; -- End function
	.globl	_is_valid_decimal               ; -- Begin function is_valid_decimal
	.p2align	2
_is_valid_decimal:                      ; @is_valid_decimal
Lfunc_begin20:
	.loc	2 781 0                         ; lexer.c:781:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-5]
	sturb	w1, [x29, #-6]
	str	x2, [sp]
Ltmp273:
	.loc	2 782 17 prologue_end           ; lexer.c:782:17
	ldursb	w0, [x29, #-5]
	.loc	2 782 9 is_stmt 0               ; lexer.c:782:9
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
	.loc	2 782 23                        ; lexer.c:782:23
	tbnz	w8, #0, LBB20_4
	b	LBB20_1
LBB20_1:
	.loc	2 782 34                        ; lexer.c:782:34
	ldursb	w0, [x29, #-6]
	.loc	2 782 26                        ; lexer.c:782:26
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
	.loc	2 782 40                        ; lexer.c:782:40
	tbnz	w8, #0, LBB20_4
	b	LBB20_2
LBB20_2:
	.loc	2 782 59                        ; lexer.c:782:59
	ldr	x1, [sp]
	mov	w0, #46
	.loc	2 782 43                        ; lexer.c:782:43
	bl	_char_count
	.loc	2 782 67                        ; lexer.c:782:67
	subs	w8, w0, #1
	cset	w8, ge
Ltmp274:
	.loc	2 782 9                         ; lexer.c:782:9
	tbnz	w8, #0, LBB20_4
	b	LBB20_3
LBB20_3:
	.loc	2 0 9                           ; lexer.c:0:9
	mov	w8, #1
Ltmp275:
	.loc	2 784 9 is_stmt 1               ; lexer.c:784:9
	stur	w8, [x29, #-4]
	b	LBB20_5
Ltmp276:
LBB20_4:
	.loc	2 0 9 is_stmt 0                 ; lexer.c:0:9
	mov	w8, #-1
	.loc	2 786 5 is_stmt 1               ; lexer.c:786:5
	stur	w8, [x29, #-4]
	b	LBB20_5
LBB20_5:
	.loc	2 787 1                         ; lexer.c:787:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp277:
Lfunc_end20:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Failure allocating memory for token\n"

l_.str.1:                               ; @.str.1
	.asciz	"Failed to resize while adding token %s\n"

l_.str.2:                               ; @.str.2
	.asciz	"freeing: %s\n"

l_.str.3:                               ; @.str.3
	.asciz	"freeing tokens\n"

l_.str.4:                               ; @.str.4
	.asciz	"T_SEMICOLON"

l_.str.5:                               ; @.str.5
	.asciz	"T_LPAREN"

l_.str.6:                               ; @.str.6
	.asciz	"T_RPAREN"

l_.str.7:                               ; @.str.7
	.asciz	"T_INCREMENT"

l_.str.8:                               ; @.str.8
	.asciz	"T_DECREMENT"

l_.str.9:                               ; @.str.9
	.asciz	"T_MINUS"

l_.str.10:                              ; @.str.10
	.asciz	"T_BWNOT"

l_.str.11:                              ; @.str.11
	.asciz	"T_POWER"

l_.str.12:                              ; @.str.12
	.asciz	"T_TIMES"

l_.str.13:                              ; @.str.13
	.asciz	"T_DIVIDE"

l_.str.14:                              ; @.str.14
	.asciz	"T_MOD"

l_.str.15:                              ; @.str.15
	.asciz	"T_PLUS"

l_.str.16:                              ; @.str.16
	.asciz	"T_BWLEFT"

l_.str.17:                              ; @.str.17
	.asciz	"T_BWRIGHT"

l_.str.18:                              ; @.str.18
	.asciz	"T_BWAND"

l_.str.19:                              ; @.str.19
	.asciz	"T_XOR"

l_.str.20:                              ; @.str.20
	.asciz	"T_BWOR"

l_.str.21:                              ; @.str.21
	.asciz	"T_NOT"

l_.str.22:                              ; @.str.22
	.asciz	"T_AND"

l_.str.23:                              ; @.str.23
	.asciz	"T_OR"

l_.str.24:                              ; @.str.24
	.asciz	"T_LESS_T"

l_.str.25:                              ; @.str.25
	.asciz	"T_GREATER_T"

l_.str.26:                              ; @.str.26
	.asciz	"T_EQUIVALENT"

l_.str.27:                              ; @.str.27
	.asciz	"T_NOT_EQUIVALENT"

l_.str.28:                              ; @.str.28
	.asciz	"T_LESS_T_EQ"

l_.str.29:                              ; @.str.29
	.asciz	"T_GREATER_T_EQ"

l_.str.30:                              ; @.str.30
	.asciz	"T_TRUE"

l_.str.31:                              ; @.str.31
	.asciz	"T_FALSE"

l_.str.32:                              ; @.str.32
	.asciz	"T_NUMBER"

l_.str.33:                              ; @.str.33
	.asciz	"T_NAME"

l_.str.34:                              ; @.str.34
	.asciz	"T_EQUALS"

l_.str.35:                              ; @.str.35
	.asciz	"T_IF"

l_.str.36:                              ; @.str.36
	.asciz	"T_DO"

l_.str.37:                              ; @.str.37
	.asciz	"T_FOR"

l_.str.38:                              ; @.str.38
	.asciz	"T_ELSE"

l_.str.39:                              ; @.str.39
	.asciz	"T_THEN"

l_.str.40:                              ; @.str.40
	.asciz	"T_WHILE"

l_.str.41:                              ; @.str.41
	.asciz	"T_STRING"

l_.str.42:                              ; @.str.42
	.asciz	"T_NOTHING"

l_.str.43:                              ; @.str.43
	.asciz	"T_LBRACE"

l_.str.44:                              ; @.str.44
	.asciz	"T_RBRACE"

l_.str.45:                              ; @.str.45
	.asciz	"T_DOLLAR"

l_.str.46:                              ; @.str.46
	.asciz	"T_LSQUARE"

l_.str.47:                              ; @.str.47
	.asciz	"T_RSQUARE"

l_.str.48:                              ; @.str.48
	.asciz	"T_LET"

l_.str.49:                              ; @.str.49
	.asciz	"T_FUNC"

l_.str.50:                              ; @.str.50
	.asciz	"T_PRINT"

l_.str.51:                              ; @.str.51
	.asciz	"T_COMMA"

l_.str.52:                              ; @.str.52
	.asciz	"NOTHING"

l_.str.53:                              ; @.str.53
	.asciz	"Token:\n\tType:  '%s'\n\tValue: '%s'\n\n"

l_.str.54:                              ; @.str.54
	.asciz	"\nTokens:\n"

l_.str.55:                              ; @.str.55
	.asciz	"Could not allocate for lexeme_new\n"

l_.str.56:                              ; @.str.56
	.asciz	"Unrecognized character '%c' at line: %d , column %d\n"

l_.str.57:                              ; @.str.57
	.asciz	"if"

l_.str.58:                              ; @.str.58
	.asciz	"do"

l_.str.59:                              ; @.str.59
	.asciz	"for"

l_.str.60:                              ; @.str.60
	.asciz	"let"

l_.str.61:                              ; @.str.61
	.asciz	"else"

l_.str.62:                              ; @.str.62
	.asciz	"then"

l_.str.63:                              ; @.str.63
	.asciz	"True"

l_.str.64:                              ; @.str.64
	.asciz	"func"

l_.str.65:                              ; @.str.65
	.asciz	"while"

l_.str.66:                              ; @.str.66
	.asciz	"False"

l_.str.67:                              ; @.str.67
	.asciz	"print"

l_.str.68:                              ; @.str.68
	.asciz	"resizing lexeme...\n"

l_.str.69:                              ; @.str.69
	.asciz	"Could not re-allocate for T_STRING lexeme.\n"

l_.str.70:                              ; @.str.70
	.asciz	"*************** ERROR! **************\nUnexpected character '%c' at line: %d, column: %d.\nCannot make token from '%s'.\n"

	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm" "_types.h"
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_size_t.h"
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	4                               ; DW_TAG_enumeration_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	40                              ; DW_TAG_enumerator
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x821 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	50                              ; DW_AT_name
	.long	58                              ; DW_AT_LLVM_sysroot
	.long	110                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	121                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end20-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x12d DW_TAG_enumeration_type
	.long	351                             ; DW_AT_type
	.long	166                             ; DW_AT_name
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	190                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	202                             ; DW_AT_name
	.byte	1                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	211                             ; DW_AT_name
	.byte	2                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	220                             ; DW_AT_name
	.byte	3                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	232                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	244                             ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x62:0x6 DW_TAG_enumerator
	.long	252                             ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x68:0x6 DW_TAG_enumerator
	.long	260                             ; DW_AT_name
	.byte	7                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x6e:0x6 DW_TAG_enumerator
	.long	268                             ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x74:0x6 DW_TAG_enumerator
	.long	276                             ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x7a:0x6 DW_TAG_enumerator
	.long	285                             ; DW_AT_name
	.byte	10                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x80:0x6 DW_TAG_enumerator
	.long	291                             ; DW_AT_name
	.byte	11                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x86:0x6 DW_TAG_enumerator
	.long	298                             ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x8c:0x6 DW_TAG_enumerator
	.long	307                             ; DW_AT_name
	.byte	13                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x92:0x6 DW_TAG_enumerator
	.long	317                             ; DW_AT_name
	.byte	14                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x98:0x6 DW_TAG_enumerator
	.long	325                             ; DW_AT_name
	.byte	15                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x9e:0x6 DW_TAG_enumerator
	.long	331                             ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xa4:0x6 DW_TAG_enumerator
	.long	338                             ; DW_AT_name
	.byte	17                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xaa:0x6 DW_TAG_enumerator
	.long	344                             ; DW_AT_name
	.byte	18                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xb0:0x6 DW_TAG_enumerator
	.long	350                             ; DW_AT_name
	.byte	19                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xb6:0x6 DW_TAG_enumerator
	.long	355                             ; DW_AT_name
	.byte	20                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xbc:0x6 DW_TAG_enumerator
	.long	364                             ; DW_AT_name
	.byte	21                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xc2:0x6 DW_TAG_enumerator
	.long	376                             ; DW_AT_name
	.byte	22                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xc8:0x6 DW_TAG_enumerator
	.long	389                             ; DW_AT_name
	.byte	23                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xce:0x6 DW_TAG_enumerator
	.long	406                             ; DW_AT_name
	.byte	24                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xd4:0x6 DW_TAG_enumerator
	.long	418                             ; DW_AT_name
	.byte	25                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xda:0x6 DW_TAG_enumerator
	.long	433                             ; DW_AT_name
	.byte	26                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xe0:0x6 DW_TAG_enumerator
	.long	440                             ; DW_AT_name
	.byte	27                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xe6:0x6 DW_TAG_enumerator
	.long	448                             ; DW_AT_name
	.byte	28                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xec:0x6 DW_TAG_enumerator
	.long	457                             ; DW_AT_name
	.byte	29                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xf2:0x6 DW_TAG_enumerator
	.long	464                             ; DW_AT_name
	.byte	30                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xf8:0x6 DW_TAG_enumerator
	.long	473                             ; DW_AT_name
	.byte	31                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xfe:0x6 DW_TAG_enumerator
	.long	478                             ; DW_AT_name
	.byte	32                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x104:0x6 DW_TAG_enumerator
	.long	483                             ; DW_AT_name
	.byte	33                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x10a:0x6 DW_TAG_enumerator
	.long	489                             ; DW_AT_name
	.byte	34                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x110:0x6 DW_TAG_enumerator
	.long	496                             ; DW_AT_name
	.byte	35                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x116:0x6 DW_TAG_enumerator
	.long	503                             ; DW_AT_name
	.byte	36                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x11c:0x6 DW_TAG_enumerator
	.long	511                             ; DW_AT_name
	.byte	37                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x122:0x6 DW_TAG_enumerator
	.long	520                             ; DW_AT_name
	.byte	38                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x128:0x6 DW_TAG_enumerator
	.long	529                             ; DW_AT_name
	.byte	39                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x12e:0x6 DW_TAG_enumerator
	.long	538                             ; DW_AT_name
	.byte	40                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x134:0x6 DW_TAG_enumerator
	.long	547                             ; DW_AT_name
	.byte	41                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x13a:0x6 DW_TAG_enumerator
	.long	557                             ; DW_AT_name
	.byte	42                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x140:0x6 DW_TAG_enumerator
	.long	567                             ; DW_AT_name
	.byte	43                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x146:0x6 DW_TAG_enumerator
	.long	575                             ; DW_AT_name
	.byte	44                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x14c:0x6 DW_TAG_enumerator
	.long	581                             ; DW_AT_name
	.byte	45                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x152:0x6 DW_TAG_enumerator
	.long	588                             ; DW_AT_name
	.byte	46                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x158:0x6 DW_TAG_enumerator
	.long	596                             ; DW_AT_name
	.byte	47                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x15f:0x7 DW_TAG_base_type
	.long	177                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x166:0x1 DW_TAG_pointer_type
	.byte	4                               ; Abbrev [4] 0x167:0x7 DW_TAG_base_type
	.long	606                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x16e:0x5 DW_TAG_pointer_type
	.long	371                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x173:0x7 DW_TAG_base_type
	.long	610                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0x17a:0x52 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	615                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1926                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x193:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	116
	.long	1012                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	1975                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1a1:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	1057                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x1af:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1070                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.long	1926                            ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x1bd:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	1080                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1cc:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset5
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	628                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x1e1:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	8
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x1f0:0x54 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset6, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset6
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	645                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	39                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x205:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	39                              ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x213:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	1099                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	39                              ; DW_AT_decl_line
	.long	1926                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x221:0x22 DW_TAG_lexical_block
.set Lset7, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset7
	.byte	9                               ; Abbrev [9] 0x226:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	108
	.long	1101                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x234:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1114                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	1926                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x244:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset8, Lfunc_end3-Lfunc_begin3     ; DW_AT_high_pc
	.long	Lset8
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	661                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x259:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x267:0x1c DW_TAG_lexical_block
	.quad	Ltmp20                          ; DW_AT_low_pc
.set Lset9, Ltmp25-Ltmp20               ; DW_AT_high_pc
	.long	Lset9
	.byte	9                               ; Abbrev [9] 0x274:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	116
	.long	1125                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x284:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset10, Lfunc_end4-Lfunc_begin4    ; DW_AT_high_pc
	.long	Lset10
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	678                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	83                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	366                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x29d:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	20
	.long	1012                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	83                              ; DW_AT_decl_line
	.long	1975                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2ac:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset11, Lfunc_end5-Lfunc_begin5    ; DW_AT_high_pc
	.long	Lset11
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	699                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x2c1:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1099                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	1926                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2d0:0x4e DW_TAG_subprogram
	.quad	Lfunc_begin6                    ; DW_AT_low_pc
.set Lset12, Lfunc_end6-Lfunc_begin6    ; DW_AT_high_pc
	.long	Lset12
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	711                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x2e5:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x2f3:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x301:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	1012                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
	.long	1975                            ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x30f:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	0
	.long	1099                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	163                             ; DW_AT_decl_line
	.long	1926                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x31e:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ; DW_AT_low_pc
.set Lset13, Lfunc_end7-Lfunc_begin7    ; DW_AT_high_pc
	.long	Lset13
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	738                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	170                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1975                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x337:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	11
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	170                             ; DW_AT_decl_line
	.long	2047                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x346:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin8                    ; DW_AT_low_pc
.set Lset14, Lfunc_end8-Lfunc_begin8    ; DW_AT_high_pc
	.long	Lset14
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	765                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	200                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x35b:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	200                             ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x369:0x1c DW_TAG_lexical_block
	.quad	Ltmp44                          ; DW_AT_low_pc
.set Lset15, Ltmp48-Ltmp44              ; DW_AT_high_pc
	.long	Lset15
	.byte	9                               ; Abbrev [9] 0x376:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	4
	.long	1127                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	206                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x386:0x6e DW_TAG_subprogram
	.quad	Lfunc_begin9                    ; DW_AT_low_pc
.set Lset16, Lfunc_end9-Lfunc_begin9    ; DW_AT_high_pc
	.long	Lset16
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	783                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	211                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x39f:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	127
	.long	1129                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	211                             ; DW_AT_decl_line
	.long	371                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x3ad:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	211                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x3bb:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	1131                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	216                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x3c9:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	783                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	217                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x3d7:0x1c DW_TAG_lexical_block
	.quad	Ltmp51                          ; DW_AT_low_pc
.set Lset17, Ltmp59-Ltmp51              ; DW_AT_high_pc
	.long	Lset17
	.byte	9                               ; Abbrev [9] 0x3e4:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	4
	.long	1125                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	218                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x3f4:0x44 DW_TAG_subprogram
	.quad	Lfunc_begin10                   ; DW_AT_low_pc
.set Lset18, Lfunc_end10-Lfunc_begin10  ; DW_AT_high_pc
	.long	Lset18
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	794                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	227                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x40d:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	24
	.long	1145                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	227                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x41b:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	23
	.long	1129                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	227                             ; DW_AT_decl_line
	.long	371                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x429:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	8
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	227                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x438:0xad DW_TAG_subprogram
	.quad	Lfunc_begin11                   ; DW_AT_low_pc
.set Lset19, Lfunc_end11-Lfunc_begin11  ; DW_AT_high_pc
	.long	Lset19
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	811                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	240                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1986                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x451:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	104
	.long	1149                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	240                             ; DW_AT_decl_line
	.long	2052                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x45f:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	100
	.long	1162                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	256                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x46e:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	96
	.long	1174                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	257                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x47d:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	92
	.long	1188                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	259                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x48c:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	264                             ; DW_AT_decl_line
	.long	1986                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x49b:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.long	1080                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	268                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x4aa:0x3a DW_TAG_lexical_block
	.quad	Ltmp71                          ; DW_AT_low_pc
.set Lset20, Ltmp177-Ltmp71             ; DW_AT_high_pc
	.long	Lset20
	.byte	15                              ; Abbrev [15] 0x4b7:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	44
	.long	1125                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	277                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x4c6:0x1d DW_TAG_lexical_block
	.quad	Ltmp87                          ; DW_AT_low_pc
.set Lset21, Ltmp92-Ltmp87              ; DW_AT_high_pc
	.long	Lset21
	.byte	15                              ; Abbrev [15] 0x4d3:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	40
	.long	989                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	301                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x4e5:0x39 DW_TAG_subprogram
	.quad	Lfunc_begin12                   ; DW_AT_low_pc
.set Lset22, Lfunc_end12-Lfunc_begin12  ; DW_AT_high_pc
	.long	Lset22
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	839                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	687                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x4ff:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	123
	.long	1208                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	687                             ; DW_AT_decl_line
	.long	2047                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x50e:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	122
	.long	1216                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	687                             ; DW_AT_decl_line
	.long	2047                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x51e:0x57 DW_TAG_subprogram
	.quad	Lfunc_begin13                   ; DW_AT_low_pc
.set Lset23, Lfunc_end13-Lfunc_begin13  ; DW_AT_high_pc
	.long	Lset23
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	853                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	706                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x538:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	706                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x547:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	1149                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	706                             ; DW_AT_decl_line
	.long	2052                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x556:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	108
	.long	1225                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	706                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x565:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	706                             ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x575:0x53 DW_TAG_subprogram
	.quad	Lfunc_begin14                   ; DW_AT_low_pc
.set Lset24, Lfunc_end14-Lfunc_begin14  ; DW_AT_high_pc
	.long	Lset24
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	874                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	815                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x58b:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	1162                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	815                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x59a:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1174                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	815                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x5a9:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	815                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x5b8:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	104
	.long	1208                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	815                             ; DW_AT_decl_line
	.long	2052                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x5c8:0x2a DW_TAG_subprogram
	.quad	Lfunc_begin15                   ; DW_AT_low_pc
.set Lset25, Lfunc_end15-Lfunc_begin15  ; DW_AT_high_pc
	.long	Lset25
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	894                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	790                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x5e2:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	11
	.long	1239                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	790                             ; DW_AT_decl_line
	.long	371                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x5f2:0x92 DW_TAG_subprogram
	.quad	Lfunc_begin16                   ; DW_AT_low_pc
.set Lset26, Lfunc_end16-Lfunc_begin16  ; DW_AT_high_pc
	.long	Lset26
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	920                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	723                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x60c:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	723                             ; DW_AT_decl_line
	.long	2057                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x61b:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	1149                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	723                             ; DW_AT_decl_line
	.long	2052                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x62a:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	108
	.long	1225                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	723                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x639:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	32
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	723                             ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x648:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	1252                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	725                             ; DW_AT_decl_line
	.long	2062                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x657:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1303                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	726                             ; DW_AT_decl_line
	.long	2062                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x666:0x1d DW_TAG_lexical_block
	.quad	Ltmp203                         ; DW_AT_low_pc
.set Lset27, Ltmp209-Ltmp203            ; DW_AT_high_pc
	.long	Lset27
	.byte	15                              ; Abbrev [15] 0x673:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	1319                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	732                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x684:0x39 DW_TAG_subprogram
	.quad	Lfunc_begin17                   ; DW_AT_low_pc
.set Lset28, Lfunc_end17-Lfunc_begin17  ; DW_AT_high_pc
	.long	Lset28
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	937                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	645                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1975                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x69e:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	645                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x6ad:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	1331                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	647                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x6bd:0x2a DW_TAG_subprogram
	.quad	Lfunc_begin18                   ; DW_AT_low_pc
.set Lset29, Lfunc_end18-Lfunc_begin18  ; DW_AT_high_pc
	.long	Lset29
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	954                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	696                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x6d7:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	123
	.long	1129                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	696                             ; DW_AT_decl_line
	.long	2047                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x6e7:0x57 DW_TAG_subprogram
	.quad	Lfunc_begin19                   ; DW_AT_low_pc
.set Lset30, Lfunc_end19-Lfunc_begin19  ; DW_AT_high_pc
	.long	Lset30
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	972                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	759                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x701:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	759                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x710:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	1149                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	759                             ; DW_AT_decl_line
	.long	2052                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x71f:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	20
	.long	1225                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	759                             ; DW_AT_decl_line
	.long	359                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x72e:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	1091                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	759                             ; DW_AT_decl_line
	.long	2042                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x73e:0x48 DW_TAG_subprogram
	.quad	Lfunc_begin20                   ; DW_AT_low_pc
.set Lset31, Lfunc_end20-Lfunc_begin20  ; DW_AT_high_pc
	.long	Lset31
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	989                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	780                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	359                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	17                              ; Abbrev [17] 0x758:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	123
	.long	1343                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	780                             ; DW_AT_decl_line
	.long	2047                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x767:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	122
	.long	1348                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	780                             ; DW_AT_decl_line
	.long	2047                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x776:0xf DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	0
	.long	1017                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	780                             ; DW_AT_decl_line
	.long	366                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x786:0x5 DW_TAG_pointer_type
	.long	1931                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x78b:0xb DW_TAG_typedef
	.long	1942                            ; DW_AT_type
	.long	1006                            ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.byte	21                              ; Abbrev [21] 0x796:0x21 DW_TAG_structure_type
	.long	1006                            ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.byte	22                              ; Abbrev [22] 0x79e:0xc DW_TAG_member
	.long	1012                            ; DW_AT_name
	.long	1975                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x7aa:0xc DW_TAG_member
	.long	1017                            ; DW_AT_name
	.long	366                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x7b7:0xb DW_TAG_typedef
	.long	50                              ; DW_AT_type
	.long	166                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	60                              ; DW_AT_decl_line
	.byte	20                              ; Abbrev [20] 0x7c2:0xb DW_TAG_typedef
	.long	1997                            ; DW_AT_type
	.long	1024                            ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	74                              ; DW_AT_decl_line
	.byte	21                              ; Abbrev [21] 0x7cd:0x2d DW_TAG_structure_type
	.long	1024                            ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.byte	22                              ; Abbrev [22] 0x7d5:0xc DW_TAG_member
	.long	1036                            ; DW_AT_name
	.long	1926                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x7e1:0xc DW_TAG_member
	.long	1043                            ; DW_AT_name
	.long	359                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x7ed:0xc DW_TAG_member
	.long	1048                            ; DW_AT_name
	.long	359                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.byte	12                              ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x7fa:0x5 DW_TAG_pointer_type
	.long	1986                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x7ff:0x5 DW_TAG_const_type
	.long	371                             ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x804:0x5 DW_TAG_pointer_type
	.long	2047                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x809:0x5 DW_TAG_pointer_type
	.long	366                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x80e:0xb DW_TAG_typedef
	.long	2073                            ; DW_AT_type
	.long	1266                            ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	20                              ; Abbrev [20] 0x819:0xb DW_TAG_typedef
	.long	2084                            ; DW_AT_type
	.long	1273                            ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.byte	4                               ; Abbrev [4] 0x824:0x7 DW_TAG_base_type
	.long	1289                            ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset32, Ltmp11-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp16-Lfunc_begin0
	.quad	Lset33
.set Lset34, Ltmp17-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp18-Lfunc_begin0
	.quad	Lset35
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 14.0.3 (clang-1403.0.22.14.1)" ; string offset=0
	.asciz	"lexer.c"                       ; string offset=50
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=58
	.asciz	"MacOSX.sdk"                    ; string offset=110
	.asciz	"/Users/warren/Development/Github/Tirja/lexer" ; string offset=121
	.asciz	"Token_Type"                    ; string offset=166
	.asciz	"unsigned int"                  ; string offset=177
	.asciz	"T_SEMICOLON"                   ; string offset=190
	.asciz	"T_LPAREN"                      ; string offset=202
	.asciz	"T_RPAREN"                      ; string offset=211
	.asciz	"T_INCREMENT"                   ; string offset=220
	.asciz	"T_DECREMENT"                   ; string offset=232
	.asciz	"T_MINUS"                       ; string offset=244
	.asciz	"T_BWNOT"                       ; string offset=252
	.asciz	"T_POWER"                       ; string offset=260
	.asciz	"T_TIMES"                       ; string offset=268
	.asciz	"T_DIVIDE"                      ; string offset=276
	.asciz	"T_MOD"                         ; string offset=285
	.asciz	"T_PLUS"                        ; string offset=291
	.asciz	"T_BWLEFT"                      ; string offset=298
	.asciz	"T_BWRIGHT"                     ; string offset=307
	.asciz	"T_BWAND"                       ; string offset=317
	.asciz	"T_XOR"                         ; string offset=325
	.asciz	"T_BWOR"                        ; string offset=331
	.asciz	"T_NOT"                         ; string offset=338
	.asciz	"T_AND"                         ; string offset=344
	.asciz	"T_OR"                          ; string offset=350
	.asciz	"T_LESS_T"                      ; string offset=355
	.asciz	"T_GREATER_T"                   ; string offset=364
	.asciz	"T_EQUIVALENT"                  ; string offset=376
	.asciz	"T_NOT_EQUIVALENT"              ; string offset=389
	.asciz	"T_LESS_T_EQ"                   ; string offset=406
	.asciz	"T_GREATER_T_EQ"                ; string offset=418
	.asciz	"T_TRUE"                        ; string offset=433
	.asciz	"T_FALSE"                       ; string offset=440
	.asciz	"T_NUMBER"                      ; string offset=448
	.asciz	"T_NAME"                        ; string offset=457
	.asciz	"T_EQUALS"                      ; string offset=464
	.asciz	"T_IF"                          ; string offset=473
	.asciz	"T_DO"                          ; string offset=478
	.asciz	"T_FOR"                         ; string offset=483
	.asciz	"T_ELSE"                        ; string offset=489
	.asciz	"T_THEN"                        ; string offset=496
	.asciz	"T_WHILE"                       ; string offset=503
	.asciz	"T_STRING"                      ; string offset=511
	.asciz	"T_LBRACE"                      ; string offset=520
	.asciz	"T_RBRACE"                      ; string offset=529
	.asciz	"T_DOLLAR"                      ; string offset=538
	.asciz	"T_LSQUARE"                     ; string offset=547
	.asciz	"T_RSQUARE"                     ; string offset=557
	.asciz	"T_COMMA"                       ; string offset=567
	.asciz	"T_LET"                         ; string offset=575
	.asciz	"T_FUNC"                        ; string offset=581
	.asciz	"T_PRINT"                       ; string offset=588
	.asciz	"T_NOTHING"                     ; string offset=596
	.asciz	"int"                           ; string offset=606
	.asciz	"char"                          ; string offset=610
	.asciz	"token_create"                  ; string offset=615
	.asciz	"token_array_init"              ; string offset=628
	.asciz	"token_array_add"               ; string offset=645
	.asciz	"token_array_free"              ; string offset=661
	.asciz	"token_type_to_string"          ; string offset=678
	.asciz	"token_print"                   ; string offset=699
	.asciz	"token_to_array_from_string"    ; string offset=711
	.asciz	"token_type_get_single_char"    ; string offset=738
	.asciz	"token_array_print"             ; string offset=765
	.asciz	"char_count"                    ; string offset=783
	.asciz	"char_at_position"              ; string offset=794
	.asciz	"token_array_get_from_string"   ; string offset=811
	.asciz	"is_identifier"                 ; string offset=839
	.asciz	"token_identifier_get"          ; string offset=853
	.asciz	"error_message_print"           ; string offset=874
	.asciz	"is_valid_single_character"     ; string offset=894
	.asciz	"token_string_get"              ; string offset=920
	.asciz	"token_word_match"              ; string offset=937
	.asciz	"is_identifier_end"             ; string offset=954
	.asciz	"token_number_get"              ; string offset=972
	.asciz	"is_valid_decimal"              ; string offset=989
	.asciz	"Token"                         ; string offset=1006
	.asciz	"type"                          ; string offset=1012
	.asciz	"lexeme"                        ; string offset=1017
	.asciz	"Token_Array"                   ; string offset=1024
	.asciz	"tokens"                        ; string offset=1036
	.asciz	"size"                          ; string offset=1043
	.asciz	"capacity"                      ; string offset=1048
	.asciz	"string_token"                  ; string offset=1057
	.asciz	"token_new"                     ; string offset=1070
	.asciz	"lexeme_new"                    ; string offset=1080
	.asciz	"t_array"                       ; string offset=1091
	.asciz	"t"                             ; string offset=1099
	.asciz	"capacity_new"                  ; string offset=1101
	.asciz	"tokens_new"                    ; string offset=1114
	.asciz	"i"                             ; string offset=1125
	.asciz	"k"                             ; string offset=1127
	.asciz	"c"                             ; string offset=1129
	.asciz	"length_lexeme"                 ; string offset=1131
	.asciz	"pos"                           ; string offset=1145
	.asciz	"string_input"                  ; string offset=1149
	.asciz	"line_number"                   ; string offset=1162
	.asciz	"column_number"                 ; string offset=1174
	.asciz	"length_string_input"           ; string offset=1188
	.asciz	"current"                       ; string offset=1208
	.asciz	"previous"                      ; string offset=1216
	.asciz	"index_current"                 ; string offset=1225
	.asciz	"char_current"                  ; string offset=1239
	.asciz	"lexeme_length"                 ; string offset=1252
	.asciz	"size_t"                        ; string offset=1266
	.asciz	"__darwin_size_t"               ; string offset=1273
	.asciz	"unsigned long"                 ; string offset=1289
	.asciz	"lexeme_capacity"               ; string offset=1303
	.asciz	"lexeme_temp"                   ; string offset=1319
	.asciz	"size_lexeme"                   ; string offset=1331
	.asciz	"prev"                          ; string offset=1343
	.asciz	"next"                          ; string offset=1348
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	10                              ; Header Bucket Count
	.long	21                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	2                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	6                               ; Bucket 3
	.long	9                               ; Bucket 4
	.long	10                              ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	15                              ; Bucket 7
	.long	16                              ; Bucket 8
	.long	19                              ; Bucket 9
	.long	730275660                       ; Hash in Bucket 0
	.long	-112703886                      ; Hash in Bucket 0
	.long	1000219661                      ; Hash in Bucket 1
	.long	1353710471                      ; Hash in Bucket 1
	.long	-1796749595                     ; Hash in Bucket 1
	.long	-913634645                      ; Hash in Bucket 1
	.long	871092413                       ; Hash in Bucket 3
	.long	-1796645993                     ; Hash in Bucket 3
	.long	-481505473                      ; Hash in Bucket 3
	.long	1419266814                      ; Hash in Bucket 4
	.long	66821145                        ; Hash in Bucket 5
	.long	357876475                       ; Hash in Bucket 5
	.long	1117150575                      ; Hash in Bucket 5
	.long	-1387280161                     ; Hash in Bucket 5
	.long	-27433981                       ; Hash in Bucket 5
	.long	-1455149939                     ; Hash in Bucket 7
	.long	466149228                       ; Hash in Bucket 8
	.long	603430628                       ; Hash in Bucket 8
	.long	848669488                       ; Hash in Bucket 8
	.long	699008139                       ; Hash in Bucket 9
	.long	-153386567                      ; Hash in Bucket 9
.set Lset36, LNames4-Lnames_begin       ; Offset in Bucket 0
	.long	Lset36
.set Lset37, LNames8-Lnames_begin       ; Offset in Bucket 0
	.long	Lset37
.set Lset38, LNames9-Lnames_begin       ; Offset in Bucket 1
	.long	Lset38
.set Lset39, LNames1-Lnames_begin       ; Offset in Bucket 1
	.long	Lset39
.set Lset40, LNames0-Lnames_begin       ; Offset in Bucket 1
	.long	Lset40
.set Lset41, LNames2-Lnames_begin       ; Offset in Bucket 1
	.long	Lset41
.set Lset42, LNames15-Lnames_begin      ; Offset in Bucket 3
	.long	Lset42
.set Lset43, LNames10-Lnames_begin      ; Offset in Bucket 3
	.long	Lset43
.set Lset44, LNames17-Lnames_begin      ; Offset in Bucket 3
	.long	Lset44
.set Lset45, LNames16-Lnames_begin      ; Offset in Bucket 4
	.long	Lset45
.set Lset46, LNames11-Lnames_begin      ; Offset in Bucket 5
	.long	Lset46
.set Lset47, LNames13-Lnames_begin      ; Offset in Bucket 5
	.long	Lset47
.set Lset48, LNames6-Lnames_begin       ; Offset in Bucket 5
	.long	Lset48
.set Lset49, LNames18-Lnames_begin      ; Offset in Bucket 5
	.long	Lset49
.set Lset50, LNames19-Lnames_begin      ; Offset in Bucket 5
	.long	Lset50
.set Lset51, LNames14-Lnames_begin      ; Offset in Bucket 7
	.long	Lset51
.set Lset52, LNames3-Lnames_begin       ; Offset in Bucket 8
	.long	Lset52
.set Lset53, LNames20-Lnames_begin      ; Offset in Bucket 8
	.long	Lset53
.set Lset54, LNames7-Lnames_begin       ; Offset in Bucket 8
	.long	Lset54
.set Lset55, LNames5-Lnames_begin       ; Offset in Bucket 9
	.long	Lset55
.set Lset56, LNames12-Lnames_begin      ; Offset in Bucket 9
	.long	Lset56
LNames4:
	.long	811                             ; token_array_get_from_string
	.long	1                               ; Num DIEs
	.long	1080
	.long	0
LNames8:
	.long	699                             ; token_print
	.long	1                               ; Num DIEs
	.long	684
	.long	0
LNames9:
	.long	937                             ; token_word_match
	.long	1                               ; Num DIEs
	.long	1668
	.long	0
LNames1:
	.long	853                             ; token_identifier_get
	.long	1                               ; Num DIEs
	.long	1310
	.long	0
LNames0:
	.long	661                             ; token_array_free
	.long	1                               ; Num DIEs
	.long	580
	.long	0
LNames2:
	.long	783                             ; char_count
	.long	1                               ; Num DIEs
	.long	902
	.long	0
LNames15:
	.long	894                             ; is_valid_single_character
	.long	1                               ; Num DIEs
	.long	1480
	.long	0
LNames10:
	.long	628                             ; token_array_init
	.long	1                               ; Num DIEs
	.long	460
	.long	0
LNames17:
	.long	678                             ; token_type_to_string
	.long	1                               ; Num DIEs
	.long	644
	.long	0
LNames16:
	.long	989                             ; is_valid_decimal
	.long	1                               ; Num DIEs
	.long	1854
	.long	0
LNames11:
	.long	615                             ; token_create
	.long	1                               ; Num DIEs
	.long	378
	.long	0
LNames13:
	.long	920                             ; token_string_get
	.long	1                               ; Num DIEs
	.long	1522
	.long	0
LNames6:
	.long	711                             ; token_to_array_from_string
	.long	1                               ; Num DIEs
	.long	720
	.long	0
LNames18:
	.long	874                             ; error_message_print
	.long	1                               ; Num DIEs
	.long	1397
	.long	0
LNames19:
	.long	839                             ; is_identifier
	.long	1                               ; Num DIEs
	.long	1253
	.long	0
LNames14:
	.long	972                             ; token_number_get
	.long	1                               ; Num DIEs
	.long	1767
	.long	0
LNames3:
	.long	645                             ; token_array_add
	.long	1                               ; Num DIEs
	.long	496
	.long	0
LNames20:
	.long	738                             ; token_type_get_single_char
	.long	1                               ; Num DIEs
	.long	798
	.long	0
LNames7:
	.long	765                             ; token_array_print
	.long	1                               ; Num DIEs
	.long	838
	.long	0
LNames5:
	.long	794                             ; char_at_position
	.long	1                               ; Num DIEs
	.long	1012
	.long	0
LNames12:
	.long	954                             ; is_identifier_end
	.long	1                               ; Num DIEs
	.long	1725
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	9                               ; Header Bucket Count
	.long	9                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	1                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	3                               ; Bucket 4
	.long	4                               ; Bucket 5
	.long	5                               ; Bucket 6
	.long	6                               ; Bucket 7
	.long	8                               ; Bucket 8
	.long	-103762318                      ; Hash in Bucket 0
	.long	193495088                       ; Hash in Bucket 2
	.long	819404327                       ; Hash in Bucket 2
	.long	1247757124                      ; Hash in Bucket 4
	.long	-1304652851                     ; Hash in Bucket 5
	.long	466678419                       ; Hash in Bucket 6
	.long	237878566                       ; Hash in Bucket 7
	.long	-282664779                      ; Hash in Bucket 7
	.long	2090147939                      ; Hash in Bucket 8
.set Lset57, Ltypes6-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset57
.set Lset58, Ltypes5-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset58
.set Lset59, Ltypes2-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset59
.set Lset60, Ltypes8-Ltypes_begin       ; Offset in Bucket 4
	.long	Lset60
.set Lset61, Ltypes4-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset61
.set Lset62, Ltypes3-Ltypes_begin       ; Offset in Bucket 6
	.long	Lset62
.set Lset63, Ltypes1-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset63
.set Lset64, Ltypes0-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset64
.set Lset65, Ltypes7-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset65
Ltypes6:
	.long	1289                            ; unsigned long
	.long	1                               ; Num DIEs
	.long	2084
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	606                             ; int
	.long	1                               ; Num DIEs
	.long	359
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	166                             ; Token_Type
	.long	2                               ; Num DIEs
	.long	50
	.short	4
	.byte	0
	.long	1975
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	1024                            ; Token_Array
	.long	2                               ; Num DIEs
	.long	1986
	.short	22
	.byte	0
	.long	1997
	.short	19
	.byte	0
	.long	0
Ltypes4:
	.long	177                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	351
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	1266                            ; size_t
	.long	1                               ; Num DIEs
	.long	2062
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	1006                            ; Token
	.long	2                               ; Num DIEs
	.long	1931
	.short	22
	.byte	0
	.long	1942
	.short	19
	.byte	0
	.long	0
Ltypes0:
	.long	1273                            ; __darwin_size_t
	.long	1                               ; Num DIEs
	.long	2073
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	610                             ; char
	.long	1                               ; Num DIEs
	.long	371
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
