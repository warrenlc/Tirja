	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.file	1 "/Users/warren/Development/Github/Tirja/lexer" "./tokens.h"
	.globl	_token_array_compare            ; -- Begin function token_array_compare
	.p2align	2
_token_array_compare:                   ; @token_array_compare
Lfunc_begin0:
	.file	2 "/Users/warren/Development/Github/Tirja/lexer" "test.c"
	.loc	2 10 0                          ; test.c:10:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	mov	w8, #1
Ltmp0:
	.loc	2 11 9 prologue_end             ; test.c:11:9
	stur	w8, [x29, #-28]
	.loc	2 13 34                         ; test.c:13:34
	ldur	x8, [x29, #-8]
	.loc	2 13 5 is_stmt 0                ; test.c:13:5
	mov	x9, sp
	str	x8, [x9]
	.loc	2 0 0                           ; test.c:0:0
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	.loc	2 13 5                          ; test.c:13:5
	bl	_printf
	.loc	2 15 55 is_stmt 1               ; test.c:15:55
	ldur	x0, [x29, #-8]
	.loc	2 15 27 is_stmt 0               ; test.c:15:27
	bl	_token_array_get_from_string
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
Ltmp1:
	.loc	2 17 9 is_stmt 1                ; test.c:17:9
	ldur	x8, [x29, #-24]
	.loc	2 17 41 is_stmt 0               ; test.c:17:41
	ldursw	x9, [x29, #-40]
	.loc	2 17 30                         ; test.c:17:30
	subs	x8, x8, x9
	cset	w8, eq
Ltmp2:
	.loc	2 17 9                          ; test.c:17:9
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
Ltmp3:
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Ltmp4:
	.loc	2 19 17 is_stmt 1               ; test.c:19:17
	ldr	x0, [x8]
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	.loc	2 19 9                          ; test.c:19:9
	bl	_fprintf
	sub	x0, x29, #48
	.loc	2 20 9 is_stmt 1                ; test.c:20:9
	bl	_token_array_print
	mov	w8, #-1
	.loc	2 21 14                         ; test.c:21:14
	stur	w8, [x29, #-28]
	.loc	2 22 5                          ; test.c:22:5
	b	LBB0_10
Ltmp5:
LBB0_2:
	.loc	2 25 18                         ; test.c:25:18
	stur	wzr, [x29, #-52]
	.loc	2 25 14 is_stmt 0               ; test.c:25:14
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
Ltmp6:
	.loc	2 25 25                         ; test.c:25:25
	ldursw	x8, [x29, #-52]
	.loc	2 25 29                         ; test.c:25:29
	ldur	x9, [x29, #-24]
	.loc	2 25 27                         ; test.c:25:27
	subs	x8, x8, x9
	cset	w8, hs
Ltmp7:
	.loc	2 25 9                          ; test.c:25:9
	tbnz	w8, #0, LBB0_9
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
Ltmp8:
	.loc	2 26 85 is_stmt 1               ; test.c:26:85
	ldur	x8, [x29, #-48]
	.loc	2 26 92 is_stmt 0               ; test.c:26:92
	ldursw	x9, [x29, #-52]
	.loc	2 26 77                         ; test.c:26:77
	lsl	x9, x9, #4
	.loc	2 26 95                         ; test.c:26:95
	ldr	w0, [x8, x9]
	.loc	2 26 56                         ; test.c:26:56
	bl	_token_type_to_string
	.loc	2 26 49                         ; test.c:26:49
	bl	_strlen
	.loc	2 26 20                         ; test.c:26:20
	str	x0, [sp, #64]
	.loc	2 27 64 is_stmt 1               ; test.c:27:64
	ldur	x8, [x29, #-48]
	.loc	2 27 71 is_stmt 0               ; test.c:27:71
	ldursw	x9, [x29, #-52]
	.loc	2 27 56                         ; test.c:27:56
	add	x8, x8, x9, lsl #4
	.loc	2 27 74                         ; test.c:27:74
	ldr	x0, [x8, #8]
	.loc	2 27 49                         ; test.c:27:49
	bl	_strlen
	.loc	2 27 20                         ; test.c:27:20
	str	x0, [sp, #56]
	.loc	2 29 112 is_stmt 1              ; test.c:29:112
	ldur	x8, [x29, #-16]
	.loc	2 29 128 is_stmt 0              ; test.c:29:128
	ldursw	x9, [x29, #-52]
	.loc	2 29 112                        ; test.c:29:112
	lsl	x9, x9, #4
	.loc	2 29 131                        ; test.c:29:131
	ldr	w0, [x8, x9]
	.loc	2 29 91                         ; test.c:29:91
	bl	_token_type_to_string
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	.loc	2 29 138                        ; test.c:29:138
	ldur	x8, [x29, #-16]
	.loc	2 29 154                        ; test.c:29:154
	ldursw	x9, [x29, #-52]
	.loc	2 29 138                        ; test.c:29:138
	add	x8, x8, x9, lsl #4
	.loc	2 29 157                        ; test.c:29:157
	ldr	x8, [x8, #8]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	.loc	2 30 46 is_stmt 1               ; test.c:30:46
	ldur	x8, [x29, #-48]
	.loc	2 30 53 is_stmt 0               ; test.c:30:53
	ldursw	x9, [x29, #-52]
	.loc	2 30 38                         ; test.c:30:38
	lsl	x9, x9, #4
	.loc	2 30 56                         ; test.c:30:56
	ldr	w0, [x8, x9]
	.loc	2 30 17                         ; test.c:30:17
	bl	_token_type_to_string
	ldr	x11, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #48]                  ; 8-byte Folded Reload
	.loc	2 30 71                         ; test.c:30:71
	ldur	x8, [x29, #-48]
	.loc	2 30 78                         ; test.c:30:78
	ldursw	x9, [x29, #-52]
	.loc	2 30 63                         ; test.c:30:63
	add	x8, x8, x9, lsl #4
	.loc	2 30 81                         ; test.c:30:81
	ldr	x8, [x8, #8]
	.loc	2 29 13 is_stmt 1               ; test.c:29:13
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x0, [x9, #16]
	str	x8, [x9, #24]
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	.loc	2 29 13                         ; test.c:29:13
	bl	_printf
Ltmp9:
	.loc	2 32 26 is_stmt 1               ; test.c:32:26
	ldur	x8, [x29, #-16]
	.loc	2 32 42 is_stmt 0               ; test.c:32:42
	ldursw	x9, [x29, #-52]
	.loc	2 32 26                         ; test.c:32:26
	add	x8, x8, x9, lsl #4
	.loc	2 32 45                         ; test.c:32:45
	ldr	x0, [x8, #8]
	.loc	2 32 61                         ; test.c:32:61
	ldur	x8, [x29, #-48]
	.loc	2 32 68                         ; test.c:32:68
	ldursw	x9, [x29, #-52]
	.loc	2 32 53                         ; test.c:32:53
	add	x8, x8, x9, lsl #4
	.loc	2 32 71                         ; test.c:32:71
	ldr	x1, [x8, #8]
	.loc	2 32 79                         ; test.c:32:79
	ldr	x2, [sp, #56]
	.loc	2 32 18                         ; test.c:32:18
	bl	_strncmp
	.loc	2 32 103                        ; test.c:32:103
	subs	w8, w0, #0
	cset	w8, ne
	.loc	2 32 109                        ; test.c:32:109
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	2 33 55 is_stmt 1               ; test.c:33:55
	ldur	x8, [x29, #-48]
	.loc	2 33 62 is_stmt 0               ; test.c:33:62
	ldursw	x9, [x29, #-52]
	.loc	2 33 47                         ; test.c:33:47
	lsl	x9, x9, #4
	.loc	2 33 65                         ; test.c:33:65
	ldr	w0, [x8, x9]
	.loc	2 33 26                         ; test.c:33:26
	bl	_token_type_to_string
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	.loc	2 33 93                         ; test.c:33:93
	ldur	x8, [x29, #-16]
	.loc	2 33 109                        ; test.c:33:109
	ldursw	x9, [x29, #-52]
	.loc	2 33 93                         ; test.c:33:93
	lsl	x9, x9, #4
	.loc	2 33 112                        ; test.c:33:112
	ldr	w0, [x8, x9]
	.loc	2 33 72                         ; test.c:33:72
	bl	_token_type_to_string
	mov	x1, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	.loc	2 33 119                        ; test.c:33:119
	ldr	x2, [sp, #64]
	.loc	2 33 18                         ; test.c:33:18
	bl	_strncmp
	.loc	2 33 147                        ; test.c:33:147
	subs	w8, w0, #0
	cset	w8, eq
Ltmp10:
	.loc	2 32 17 is_stmt 1               ; test.c:32:17
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
Ltmp11:
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	.loc	2 35 25 is_stmt 1               ; test.c:35:25
	ldr	x0, [x8]
	.loc	2 35 72 is_stmt 0               ; test.c:35:72
	ldur	x8, [x29, #-48]
	.loc	2 35 79                         ; test.c:35:79
	ldursw	x9, [x29, #-52]
	.loc	2 35 64                         ; test.c:35:64
	add	x8, x8, x9, lsl #4
	.loc	2 35 82                         ; test.c:35:82
	ldr	x10, [x8, #8]
	.loc	2 35 90                         ; test.c:35:90
	ldur	x8, [x29, #-16]
	.loc	2 35 106                        ; test.c:35:106
	ldursw	x9, [x29, #-52]
	.loc	2 35 90                         ; test.c:35:90
	add	x8, x8, x9, lsl #4
	.loc	2 35 109                        ; test.c:35:109
	ldr	x8, [x8, #8]
	.loc	2 35 17                         ; test.c:35:17
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	2 0 0                           ; test.c:0:0
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	.loc	2 35 17                         ; test.c:35:17
	bl	_fprintf
	mov	w8, #-1
	.loc	2 36 22 is_stmt 1               ; test.c:36:22
	stur	w8, [x29, #-28]
	.loc	2 37 17                         ; test.c:37:17
	b	LBB0_9
Ltmp12:
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	2 39 9                          ; test.c:39:9
	b	LBB0_8
Ltmp13:
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	2 25 52                         ; test.c:25:52
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	.loc	2 25 9 is_stmt 0                ; test.c:25:9
	b	LBB0_3
Ltmp14:
LBB0_9:
	.loc	2 0 9                           ; test.c:0:9
	b	LBB0_10
LBB0_10:
	sub	x0, x29, #48
	.loc	2 42 5 is_stmt 1                ; test.c:42:5
	bl	_token_array_free
	.loc	2 45 12                         ; test.c:45:12
	ldur	w0, [x29, #-28]
	.loc	2 45 5 is_stmt 0                ; test.c:45:5
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
Ltmp15:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_test_tokenize_string_to_array  ; -- Begin function test_tokenize_string_to_array
	.p2align	2
_test_tokenize_string_to_array:         ; @test_tokenize_string_to_array
Lfunc_begin1:
	.loc	2 49 0 is_stmt 1                ; test.c:49:0
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
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	str	x4, [sp, #24]
Ltmp16:
	.loc	2 50 29 prologue_end            ; test.c:50:29
	ldur	x0, [x29, #-8]
	.loc	2 50 42 is_stmt 0               ; test.c:50:42
	ldur	x1, [x29, #-16]
	.loc	2 50 64                         ; test.c:50:64
	ldur	x2, [x29, #-24]
	.loc	2 50 9                          ; test.c:50:9
	bl	_token_array_compare
	.loc	2 50 85                         ; test.c:50:85
	subs	w8, w0, #1
	cset	w8, ne
Ltmp17:
	.loc	2 50 9                          ; test.c:50:9
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
Ltmp18:
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	.loc	2 51 17 is_stmt 1               ; test.c:51:17
	ldr	x0, [x8]
	.loc	2 51 49 is_stmt 0               ; test.c:51:49
	ldur	w8, [x29, #-28]
                                        ; implicit-def: $x10
	mov	x10, x8
	.loc	2 51 62                         ; test.c:51:62
	ldr	x8, [sp, #24]
	.loc	2 51 9                          ; test.c:51:9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	2 0 0                           ; test.c:0:0
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	.loc	2 51 9                          ; test.c:51:9
	bl	_fprintf
	b	LBB1_3
LBB1_2:
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	.loc	2 53 17 is_stmt 1               ; test.c:53:17
	ldr	x0, [x8]
	.loc	2 53 49 is_stmt 0               ; test.c:53:49
	ldur	w8, [x29, #-28]
                                        ; implicit-def: $x10
	mov	x10, x8
	.loc	2 53 62                         ; test.c:53:62
	ldr	x8, [sp, #24]
	.loc	2 53 9                          ; test.c:53:9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	.loc	2 0 0                           ; test.c:0:0
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	.loc	2 53 9                          ; test.c:53:9
	bl	_fprintf
	b	LBB1_3
Ltmp19:
LBB1_3:
	.loc	2 54 1 is_stmt 1                ; test.c:54:1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp20:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin2:
	.loc	2 58 0                          ; test.c:58:0
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #5904
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #1808
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	w8, #0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	str	wzr, [sp, #468]
	str	w0, [sp, #464]
	str	x1, [sp, #456]
Ltmp21:
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	.loc	2 63 17 prologue_end is_stmt 1  ; test.c:63:17
	str	x8, [sp, #448]
	sub	x0, x29, #88
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.incorrect_tokens_expected@PAGE
	add	x1, x1, l___const.main.incorrect_tokens_expected@PAGEOFF
	mov	x2, #64
	str	x2, [sp, #224]                  ; 8-byte Folded Spill
	.loc	2 64 11 is_stmt 1               ; test.c:64:11
	bl	_memcpy
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w3, [sp, #20]                   ; 4-byte Folded Reload
	mov	x8, #4
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	.loc	2 68 12                         ; test.c:68:12
	str	x8, [sp, #440]
	.loc	2 69 35                         ; test.c:69:35
	ldr	x0, [sp, #448]
	.loc	2 69 73 is_stmt 0               ; test.c:69:73
	ldr	x2, [sp, #440]
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.11@PAGE
	add	x4, x4, l_.str.11@PAGEOFF
	.loc	2 69 5                          ; test.c:69:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.12@PAGE
	add	x8, x8, l_.str.12@PAGEOFF
	.loc	2 78 17 is_stmt 1               ; test.c:78:17
	str	x8, [sp, #432]
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #1512
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_too_many_decimals_expected@PAGE
	add	x1, x1, l___const.main.test_too_many_decimals_expected@PAGEOFF
	mov	x2, #224
	str	x2, [sp, #152]                  ; 8-byte Folded Spill
	.loc	2 80 11 is_stmt 1               ; test.c:80:11
	bl	_memcpy
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, #14
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	.loc	2 86 25                         ; test.c:86:25
	str	x8, [sp, #440]
	.loc	2 87 35                         ; test.c:87:35
	ldr	x0, [sp, #432]
	.loc	2 87 92 is_stmt 0               ; test.c:87:92
	ldr	x2, [sp, #440]
	mov	w3, #1
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.23@PAGE
	add	x4, x4, l_.str.23@PAGEOFF
	.loc	2 87 5                          ; test.c:87:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.24@PAGE
	add	x8, x8, l_.str.24@PAGEOFF
	.loc	2 96 17 is_stmt 1               ; test.c:96:17
	str	x8, [sp, #424]
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #984
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_valid_decimals_expected@PAGE
	add	x1, x1, l___const.main.test_valid_decimals_expected@PAGEOFF
	mov	x2, #528
	.loc	2 98 11 is_stmt 1               ; test.c:98:11
	bl	_memcpy
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	mov	x8, #33
	.loc	2 108 25                        ; test.c:108:25
	str	x8, [sp, #440]
	.loc	2 109 35                        ; test.c:109:35
	ldr	x0, [sp, #424]
	.loc	2 109 86 is_stmt 0              ; test.c:109:86
	ldr	x2, [sp, #440]
	mov	w3, #2
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.35@PAGE
	add	x4, x4, l_.str.35@PAGEOFF
	.loc	2 109 5                         ; test.c:109:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.36@PAGE
	add	x8, x8, l_.str.36@PAGEOFF
	.loc	2 119 17 is_stmt 1              ; test.c:119:17
	str	x8, [sp, #416]
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #856
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_invalid_increment_expected@PAGE
	add	x1, x1, l___const.main.test_invalid_increment_expected@PAGEOFF
	mov	x2, #128
	str	x2, [sp, #96]                   ; 8-byte Folded Spill
	.loc	2 120 11 is_stmt 1              ; test.c:120:11
	bl	_memcpy
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	mov	x8, #8
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	.loc	2 125 25                        ; test.c:125:25
	str	x8, [sp, #440]
	.loc	2 126 35                        ; test.c:126:35
	ldr	x0, [sp, #416]
	.loc	2 126 92 is_stmt 0              ; test.c:126:92
	ldr	x2, [sp, #440]
	mov	w3, #3
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.37@PAGE
	add	x4, x4, l_.str.37@PAGEOFF
	.loc	2 126 5                         ; test.c:126:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.38@PAGE
	add	x8, x8, l_.str.38@PAGEOFF
	.loc	2 135 17 is_stmt 1              ; test.c:135:17
	str	x8, [sp, #408]
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #616
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_lt_symbol_expected@PAGE
	add	x1, x1, l___const.main.test_lt_symbol_expected@PAGEOFF
	mov	x2, #240
	.loc	2 136 11 is_stmt 1              ; test.c:136:11
	bl	_memcpy
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	mov	x8, #15
	.loc	2 142 25                        ; test.c:142:25
	str	x8, [sp, #440]
	.loc	2 143 35                        ; test.c:143:35
	ldr	x0, [sp, #408]
	.loc	2 143 76 is_stmt 0              ; test.c:143:76
	ldr	x2, [sp, #440]
	mov	w3, #4
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.44@PAGE
	add	x4, x4, l_.str.44@PAGEOFF
	.loc	2 143 5                         ; test.c:143:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.45@PAGE
	add	x8, x8, l_.str.45@PAGEOFF
	.loc	2 153 17 is_stmt 1              ; test.c:153:17
	str	x8, [sp, #400]
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #328
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_gt_symbol_expected@PAGE
	add	x1, x1, l___const.main.test_gt_symbol_expected@PAGEOFF
	mov	x2, #288
	str	x2, [sp, #72]                   ; 8-byte Folded Spill
	.loc	2 154 11 is_stmt 1              ; test.c:154:11
	bl	_memcpy
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	mov	x8, #18
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	.loc	2 161 25                        ; test.c:161:25
	str	x8, [sp, #440]
	.loc	2 162 35                        ; test.c:162:35
	ldr	x0, [sp, #400]
	.loc	2 162 76 is_stmt 0              ; test.c:162:76
	ldr	x2, [sp, #440]
	mov	w3, #5
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.49@PAGE
	add	x4, x4, l_.str.49@PAGEOFF
	.loc	2 162 5                         ; test.c:162:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.50@PAGE
	add	x8, x8, l_.str.50@PAGEOFF
	.loc	2 171 17 is_stmt 1              ; test.c:171:17
	str	x8, [sp, #392]
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #216
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_not_expected@PAGE
	add	x1, x1, l___const.main.test_not_expected@PAGEOFF
	mov	x2, #112
	str	x2, [sp, #192]                  ; 8-byte Folded Spill
	.loc	2 172 11 is_stmt 1              ; test.c:172:11
	bl	_memcpy
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	mov	x8, #7
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	.loc	2 179 25                        ; test.c:179:25
	str	x8, [sp, #440]
	.loc	2 180 35                        ; test.c:180:35
	ldr	x0, [sp, #392]
	.loc	2 180 64 is_stmt 0              ; test.c:180:64
	ldr	x2, [sp, #440]
	mov	w3, #6
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.54@PAGE
	add	x4, x4, l_.str.54@PAGEOFF
	.loc	2 180 5                         ; test.c:180:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #72]                   ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.55@PAGE
	add	x8, x8, l_.str.55@PAGEOFF
	.loc	2 189 17 is_stmt 1              ; test.c:189:17
	str	x8, [sp, #384]
	add	x0, sp, #4024
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_and_or_exepected@PAGE
	add	x1, x1, l___const.main.test_and_or_exepected@PAGEOFF
	.loc	2 190 11 is_stmt 1              ; test.c:190:11
	bl	_memcpy
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	.loc	2 196 25                        ; test.c:196:25
	str	x8, [sp, #440]
	.loc	2 197 35                        ; test.c:197:35
	ldr	x0, [sp, #384]
	.loc	2 197 71 is_stmt 0              ; test.c:197:71
	ldr	x2, [sp, #440]
	mov	w3, #7
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.60@PAGE
	add	x4, x4, l_.str.60@PAGEOFF
	.loc	2 197 5                         ; test.c:197:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #96]                   ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.61@PAGE
	add	x8, x8, l_.str.61@PAGEOFF
	.loc	2 206 17 is_stmt 1              ; test.c:206:17
	str	x8, [sp, #376]
	add	x0, sp, #3896
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_true_false_expected@PAGE
	add	x1, x1, l___const.main.test_true_false_expected@PAGEOFF
	.loc	2 207 11 is_stmt 1              ; test.c:207:11
	bl	_memcpy
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	.loc	2 212 25                        ; test.c:212:25
	str	x8, [sp, #440]
	.loc	2 213 35                        ; test.c:213:35
	ldr	x0, [sp, #376]
	.loc	2 213 78 is_stmt 0              ; test.c:213:78
	ldr	x2, [sp, #440]
	mov	w3, #8
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.64@PAGE
	add	x4, x4, l_.str.64@PAGEOFF
	.loc	2 213 5                         ; test.c:213:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.65@PAGE
	add	x8, x8, l_.str.65@PAGEOFF
	.loc	2 222 17 is_stmt 1              ; test.c:222:17
	str	x8, [sp, #368]
	add	x0, sp, #3736
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_bad_names_expected@PAGE
	add	x1, x1, l___const.main.test_bad_names_expected@PAGEOFF
	mov	x2, #160
	.loc	2 223 11 is_stmt 1              ; test.c:223:11
	bl	_memcpy
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	mov	x8, #10
	.loc	2 228 25                        ; test.c:228:25
	str	x8, [sp, #440]
	.loc	2 229 35                        ; test.c:229:35
	ldr	x0, [sp, #368]
	.loc	2 229 76 is_stmt 0              ; test.c:229:76
	ldr	x2, [sp, #440]
	mov	w3, #9
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.70@PAGE
	add	x4, x4, l_.str.70@PAGEOFF
	.loc	2 229 5                         ; test.c:229:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.71@PAGE
	add	x8, x8, l_.str.71@PAGEOFF
	.loc	2 238 17 is_stmt 1              ; test.c:238:17
	str	x8, [sp, #360]
	add	x0, sp, #3560
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_line_column_number_expected@PAGE
	add	x1, x1, l___const.main.test_line_column_number_expected@PAGEOFF
	mov	x2, #176
	.loc	2 239 11 is_stmt 1              ; test.c:239:11
	bl	_memcpy
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x0, l_.str.74@PAGE
	add	x0, x0, l_.str.74@PAGEOFF
	.loc	2 245 5 is_stmt 1               ; test.c:245:5
	bl	_printf
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	mov	x8, #11
	.loc	2 246 25                        ; test.c:246:25
	str	x8, [sp, #440]
	.loc	2 247 35                        ; test.c:247:35
	ldr	x0, [sp, #360]
	.loc	2 247 94 is_stmt 0              ; test.c:247:94
	ldr	x2, [sp, #440]
	mov	w3, #10
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.75@PAGE
	add	x4, x4, l_.str.75@PAGEOFF
	.loc	2 247 5                         ; test.c:247:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.76@PAGE
	add	x8, x8, l_.str.76@PAGEOFF
	.loc	2 256 17 is_stmt 1              ; test.c:256:17
	str	x8, [sp, #352]
	add	x0, sp, #2952
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_keywords_again_expected@PAGE
	add	x1, x1, l___const.main.test_keywords_again_expected@PAGEOFF
	mov	x2, #608
	.loc	2 257 11 is_stmt 1              ; test.c:257:11
	bl	_memcpy
	ldr	x1, [sp, #136]                  ; 8-byte Folded Reload
	mov	x8, #38
	.loc	2 267 25                        ; test.c:267:25
	str	x8, [sp, #440]
	.loc	2 268 35                        ; test.c:268:35
	ldr	x0, [sp, #352]
	.loc	2 268 86 is_stmt 0              ; test.c:268:86
	ldr	x2, [sp, #440]
	mov	w3, #11
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.86@PAGE
	add	x4, x4, l_.str.86@PAGEOFF
	.loc	2 268 5                         ; test.c:268:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #224]                  ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.87@PAGE
	add	x8, x8, l_.str.87@PAGEOFF
	.loc	2 277 17 is_stmt 1              ; test.c:277:17
	str	x8, [sp, #344]
	add	x0, sp, #2888
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_string_recognition_expected@PAGE
	add	x1, x1, l___const.main.test_string_recognition_expected@PAGEOFF
	.loc	2 278 11 is_stmt 1              ; test.c:278:11
	bl	_memcpy
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
	.loc	2 282 25                        ; test.c:282:25
	str	x8, [sp, #440]
	.loc	2 283 35                        ; test.c:283:35
	ldr	x0, [sp, #344]
	.loc	2 283 94 is_stmt 0              ; test.c:283:94
	ldr	x2, [sp, #440]
	mov	w3, #12
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.90@PAGE
	add	x4, x4, l_.str.90@PAGEOFF
	.loc	2 283 5                         ; test.c:283:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #152]                  ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.91@PAGE
	add	x8, x8, l_.str.91@PAGEOFF
	.loc	2 292 17 is_stmt 1              ; test.c:292:17
	str	x8, [sp, #336]
	add	x0, sp, #2664
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_numbers_and_strings_expected@PAGE
	add	x1, x1, l___const.main.test_numbers_and_strings_expected@PAGEOFF
	.loc	2 293 11 is_stmt 1              ; test.c:293:11
	bl	_memcpy
	ldr	x8, [sp, #160]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #168]                  ; 8-byte Folded Reload
	.loc	2 300 25                        ; test.c:300:25
	str	x8, [sp, #440]
	.loc	2 301 35                        ; test.c:301:35
	ldr	x0, [sp, #336]
	.loc	2 301 96 is_stmt 0              ; test.c:301:96
	ldr	x2, [sp, #440]
	mov	w3, #13
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.95@PAGE
	add	x4, x4, l_.str.95@PAGEOFF
	.loc	2 301 5                         ; test.c:301:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.96@PAGE
	add	x8, x8, l_.str.96@PAGEOFF
	.loc	2 310 17 is_stmt 1              ; test.c:310:17
	str	x8, [sp, #328]
	add	x0, sp, #2568
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_lbrace_rbrace_expected@PAGE
	add	x1, x1, l___const.main.test_lbrace_rbrace_expected@PAGEOFF
	mov	x2, #96
	.loc	2 311 11 is_stmt 1              ; test.c:311:11
	bl	_memcpy
	ldr	x1, [sp, #176]                  ; 8-byte Folded Reload
	mov	x8, #6
	.loc	2 316 25                        ; test.c:316:25
	str	x8, [sp, #440]
	.loc	2 317 35                        ; test.c:317:35
	ldr	x0, [sp, #328]
	.loc	2 317 84 is_stmt 0              ; test.c:317:84
	ldr	x2, [sp, #440]
	mov	w3, #14
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.102@PAGE
	add	x4, x4, l_.str.102@PAGEOFF
	.loc	2 317 5                         ; test.c:317:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #192]                  ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.103@PAGE
	add	x8, x8, l_.str.103@PAGEOFF
	.loc	2 326 17 is_stmt 1              ; test.c:326:17
	str	x8, [sp, #320]
	add	x0, sp, #2456
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_dollar_expected@PAGE
	add	x1, x1, l___const.main.test_dollar_expected@PAGEOFF
	.loc	2 327 11 is_stmt 1              ; test.c:327:11
	bl	_memcpy
	ldr	x1, [sp, #184]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	.loc	2 333 25                        ; test.c:333:25
	str	x8, [sp, #440]
	.loc	2 334 35                        ; test.c:334:35
	ldr	x0, [sp, #320]
	.loc	2 334 70 is_stmt 0              ; test.c:334:70
	ldr	x2, [sp, #440]
	mov	w3, #15
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.105@PAGE
	add	x4, x4, l_.str.105@PAGEOFF
	.loc	2 334 5                         ; test.c:334:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #192]                  ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.106@PAGE
	add	x8, x8, l_.str.106@PAGEOFF
	.loc	2 343 17 is_stmt 1              ; test.c:343:17
	str	x8, [sp, #312]
	add	x0, sp, #2344
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_lsquare_rsquare_expected@PAGE
	add	x1, x1, l___const.main.test_lsquare_rsquare_expected@PAGEOFF
	.loc	2 344 11 is_stmt 1              ; test.c:344:11
	bl	_memcpy
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #208]                  ; 8-byte Folded Reload
	.loc	2 350 25                        ; test.c:350:25
	str	x8, [sp, #440]
	.loc	2 351 35                        ; test.c:351:35
	ldr	x0, [sp, #312]
	.loc	2 351 87 is_stmt 0              ; test.c:351:87
	ldr	x2, [sp, #440]
	mov	w3, #16
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.109@PAGE
	add	x4, x4, l_.str.109@PAGEOFF
	.loc	2 351 5                         ; test.c:351:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.110@PAGE
	add	x8, x8, l_.str.110@PAGEOFF
	.loc	2 360 17 is_stmt 1              ; test.c:360:17
	str	x8, [sp, #304]
	add	x0, sp, #1640
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_valid_program_expected@PAGE
	add	x1, x1, l___const.main.test_valid_program_expected@PAGEOFF
	mov	x2, #704
	.loc	2 362 11 is_stmt 1              ; test.c:362:11
	bl	_memcpy
	ldr	x1, [sp, #216]                  ; 8-byte Folded Reload
	mov	x8, #44
	.loc	2 374 25                        ; test.c:374:25
	str	x8, [sp, #440]
	.loc	2 375 35                        ; test.c:375:35
	ldr	x0, [sp, #304]
	.loc	2 375 84 is_stmt 0              ; test.c:375:84
	ldr	x2, [sp, #440]
	mov	w3, #17
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.114@PAGE
	add	x4, x4, l_.str.114@PAGEOFF
	.loc	2 375 5                         ; test.c:375:5
	bl	_test_tokenize_string_to_array
	ldr	x2, [sp, #224]                  ; 8-byte Folded Reload
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.115@PAGE
	add	x8, x8, l_.str.115@PAGEOFF
	.loc	2 384 17 is_stmt 1              ; test.c:384:17
	str	x8, [sp, #296]
	add	x0, sp, #1576
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_long_string_expected@PAGE
	add	x1, x1, l___const.main.test_long_string_expected@PAGEOFF
	.loc	2 430 11 is_stmt 1              ; test.c:430:11
	bl	_memcpy
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #240]                  ; 8-byte Folded Reload
	.loc	2 481 25                        ; test.c:481:25
	str	x8, [sp, #440]
	.loc	2 482 35                        ; test.c:482:35
	ldr	x0, [sp, #296]
	.loc	2 482 80 is_stmt 0              ; test.c:482:80
	ldr	x2, [sp, #440]
	mov	w3, #18
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.118@PAGE
	add	x4, x4, l_.str.118@PAGEOFF
	.loc	2 482 5                         ; test.c:482:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.119@PAGE
	add	x8, x8, l_.str.119@PAGEOFF
	.loc	2 489 17 is_stmt 1              ; test.c:489:17
	str	x8, [sp, #288]
	add	x0, sp, #1384
	str	x0, [sp, #248]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_string_variable_assign_expected@PAGE
	add	x1, x1, l___const.main.test_string_variable_assign_expected@PAGEOFF
	mov	x2, #192
	.loc	2 493 11 is_stmt 1              ; test.c:493:11
	bl	_memcpy
	ldr	x1, [sp, #248]                  ; 8-byte Folded Reload
	mov	x8, #12
	.loc	2 499 25                        ; test.c:499:25
	str	x8, [sp, #440]
	.loc	2 500 35                        ; test.c:500:35
	ldr	x0, [sp, #288]
	.loc	2 500 102 is_stmt 0             ; test.c:500:102
	ldr	x2, [sp, #440]
	mov	w3, #19
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.124@PAGE
	add	x4, x4, l_.str.124@PAGEOFF
	.loc	2 500 5                         ; test.c:500:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.125@PAGE
	add	x8, x8, l_.str.125@PAGEOFF
	.loc	2 509 17 is_stmt 1              ; test.c:509:17
	str	x8, [sp, #280]
	add	x0, sp, #888
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_function_declaration_expected@PAGE
	add	x1, x1, l___const.main.test_function_declaration_expected@PAGEOFF
	mov	x2, #496
	.loc	2 515 11 is_stmt 1              ; test.c:515:11
	bl	_memcpy
	ldr	x1, [sp, #256]                  ; 8-byte Folded Reload
	mov	x8, #31
	.loc	2 526 25                        ; test.c:526:25
	str	x8, [sp, #440]
	.loc	2 527 35                        ; test.c:527:35
	ldr	x0, [sp, #280]
	.loc	2 527 98 is_stmt 0              ; test.c:527:98
	ldr	x2, [sp, #440]
	mov	w3, #20
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.131@PAGE
	add	x4, x4, l_.str.131@PAGEOFF
	.loc	2 527 5                         ; test.c:527:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x8, l_.str.132@PAGE
	add	x8, x8, l_.str.132@PAGEOFF
	.loc	2 535 17 is_stmt 1              ; test.c:535:17
	str	x8, [sp, #272]
	add	x0, sp, #472
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
	.loc	2 0 0 is_stmt 0                 ; test.c:0:0
	adrp	x1, l___const.main.test_array_recognition_expected@PAGE
	add	x1, x1, l___const.main.test_array_recognition_expected@PAGEOFF
	mov	x2, #416
	.loc	2 539 11 is_stmt 1              ; test.c:539:11
	bl	_memcpy
	ldr	x1, [sp, #264]                  ; 8-byte Folded Reload
	mov	x8, #26
	.loc	2 548 25                        ; test.c:548:25
	str	x8, [sp, #440]
	.loc	2 549 35                        ; test.c:549:35
	ldr	x0, [sp, #272]
	.loc	2 549 92 is_stmt 0              ; test.c:549:92
	ldr	x2, [sp, #440]
	mov	w3, #21
	.loc	2 0 0                           ; test.c:0:0
	adrp	x4, l_.str.142@PAGE
	add	x4, x4, l_.str.142@PAGEOFF
	.loc	2 549 5                         ; test.c:549:5
	bl	_test_tokenize_string_to_array
	.loc	2 0 0                           ; test.c:0:0
	adrp	x0, l_.str.143@PAGE
	add	x0, x0, l_.str.143@PAGEOFF
	.loc	2 553 5 is_stmt 1               ; test.c:553:5
	bl	_printf
	.loc	2 554 5                         ; test.c:554:5
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB2_2
	b	LBB2_1
LBB2_1:
	bl	___stack_chk_fail
LBB2_2:
	.loc	2 0 5 is_stmt 0                 ; test.c:0:5
	mov	w0, #0
	.loc	2 554 5                         ; test.c:554:5
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #1808
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
Ltmp22:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Test string_: %s\n"

l_.str.1:                               ; @.str.1
	.asciz	"Fail. Found wrong number of tokens than expected.\n"

l_.str.2:                               ; @.str.2
	.asciz	"expected type / lexeme: %s / %s vs. actual type / lexeme: %s / %s\n"

l_.str.3:                               ; @.str.3
	.asciz	"Fail at: %s. Expected: %s\n"

l_.str.4:                               ; @.str.4
	.asciz	"PASS test %d: %s\n\n"

l_.str.5:                               ; @.str.5
	.asciz	"FAIL test %d: %s\n\n"

l_.str.6:                               ; @.str.6
	.asciz	"x + 9 = 24; x++;"

l_.str.7:                               ; @.str.7
	.asciz	"x"

l_.str.8:                               ; @.str.8
	.asciz	"+"

l_.str.9:                               ; @.str.9
	.asciz	"9"

l_.str.10:                              ; @.str.10
	.asciz	"24"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.incorrect_tokens_expected
l___const.main.incorrect_tokens_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.9
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.10

	.section	__TEXT,__cstring,cstring_literals
l_.str.11:                              ; @.str.11
	.asciz	"should always fail"

l_.str.12:                              ; @.str.12
	.asciz	"j = 0; j++; result_1 = 66+(55 - 7.9.9) / (Test_Value * 11.71); result_1++; j--; 6 % 3;"

l_.str.13:                              ; @.str.13
	.asciz	"j"

l_.str.14:                              ; @.str.14
	.asciz	"="

l_.str.15:                              ; @.str.15
	.asciz	"0"

l_.str.16:                              ; @.str.16
	.asciz	";"

l_.str.17:                              ; @.str.17
	.asciz	"++"

l_.str.18:                              ; @.str.18
	.asciz	"result_1"

l_.str.19:                              ; @.str.19
	.asciz	"66"

l_.str.20:                              ; @.str.20
	.asciz	"("

l_.str.21:                              ; @.str.21
	.asciz	"55"

l_.str.22:                              ; @.str.22
	.asciz	"-"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_too_many_decimals_expected
l___const.main.test_too_many_decimals_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.18
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.19
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.21
	.long	5                               ; 0x5
	.space	4
	.quad	l_.str.22

	.section	__TEXT,__cstring,cstring_literals
l_.str.23:                              ; @.str.23
	.asciz	"too many decimals"

l_.str.24:                              ; @.str.24
	.asciz	"j = 0; j++; result_1 = 66+(55 - 7.99) / (Test_Value * 11.71); result_1++; j--; 6 % 3;"

l_.str.25:                              ; @.str.25
	.asciz	"7.99"

l_.str.26:                              ; @.str.26
	.asciz	")"

l_.str.27:                              ; @.str.27
	.asciz	"/"

l_.str.28:                              ; @.str.28
	.asciz	"Test_Value"

l_.str.29:                              ; @.str.29
	.asciz	"*"

l_.str.30:                              ; @.str.30
	.asciz	"11.71"

l_.str.31:                              ; @.str.31
	.asciz	"--"

l_.str.32:                              ; @.str.32
	.asciz	"6"

l_.str.33:                              ; @.str.33
	.asciz	"%"

l_.str.34:                              ; @.str.34
	.asciz	"3"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_valid_decimals_expected
l___const.main.test_valid_decimals_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.18
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.19
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.21
	.long	5                               ; 0x5
	.space	4
	.quad	l_.str.22
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.25
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	9                               ; 0x9
	.space	4
	.quad	l_.str.27
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.28
	.long	8                               ; 0x8
	.space	4
	.quad	l_.str.29
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.30
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.18
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	4                               ; 0x4
	.space	4
	.quad	l_.str.31
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.32
	.long	10                              ; 0xa
	.space	4
	.quad	l_.str.33
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.34
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.35:                              ; @.str.35
	.asciz	"valid decimals"

l_.str.36:                              ; @.str.36
	.asciz	"j = 0; j+++;"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_invalid_increment_expected
l___const.main.test_invalid_increment_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.37:                              ; @.str.37
	.asciz	"invalid increment"

l_.str.38:                              ; @.str.38
	.asciz	"k=0;k<8;k<=0;k<<;"

l_.str.39:                              ; @.str.39
	.asciz	"k"

l_.str.40:                              ; @.str.40
	.asciz	"<"

l_.str.41:                              ; @.str.41
	.asciz	"8"

l_.str.42:                              ; @.str.42
	.asciz	"<="

l_.str.43:                              ; @.str.43
	.asciz	"<<"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_lt_symbol_expected
l___const.main.test_lt_symbol_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	20                              ; 0x14
	.space	4
	.quad	l_.str.40
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.41
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	24                              ; 0x18
	.space	4
	.quad	l_.str.42
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	12                              ; 0xc
	.space	4
	.quad	l_.str.43
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.44:                              ; @.str.44
	.asciz	"lt_symbol"

l_.str.45:                              ; @.str.45
	.asciz	"k = 0; k>8; k>=0; k>>;<>;"

l_.str.46:                              ; @.str.46
	.asciz	">"

l_.str.47:                              ; @.str.47
	.asciz	">="

l_.str.48:                              ; @.str.48
	.asciz	">>"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_gt_symbol_expected
l___const.main.test_gt_symbol_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	21                              ; 0x15
	.space	4
	.quad	l_.str.46
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.41
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	25                              ; 0x19
	.space	4
	.quad	l_.str.47
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	13                              ; 0xd
	.space	4
	.quad	l_.str.48
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	20                              ; 0x14
	.space	4
	.quad	l_.str.40
	.long	21                              ; 0x15
	.space	4
	.quad	l_.str.46
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.49:                              ; @.str.49
	.asciz	"gt_symbol"

l_.str.50:                              ; @.str.50
	.asciz	"!k; k != 7;"

l_.str.51:                              ; @.str.51
	.asciz	"!"

l_.str.52:                              ; @.str.52
	.asciz	"!="

l_.str.53:                              ; @.str.53
	.asciz	"7"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_not_expected
l___const.main.test_not_expected:
	.long	17                              ; 0x11
	.space	4
	.quad	l_.str.51
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	23                              ; 0x17
	.space	4
	.quad	l_.str.52
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.53
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.54:                              ; @.str.54
	.asciz	"not operator"

l_.str.55:                              ; @.str.55
	.asciz	"(k && j) || !(k||(g && !f));"

l_.str.56:                              ; @.str.56
	.asciz	"&&"

l_.str.57:                              ; @.str.57
	.asciz	"||"

l_.str.58:                              ; @.str.58
	.asciz	"g"

l_.str.59:                              ; @.str.59
	.asciz	"f"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_and_or_exepected
l___const.main.test_and_or_exepected:
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	18                              ; 0x12
	.space	4
	.quad	l_.str.56
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	19                              ; 0x13
	.space	4
	.quad	l_.str.57
	.long	17                              ; 0x11
	.space	4
	.quad	l_.str.51
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	19                              ; 0x13
	.space	4
	.quad	l_.str.57
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.58
	.long	18                              ; 0x12
	.space	4
	.quad	l_.str.56
	.long	17                              ; 0x11
	.space	4
	.quad	l_.str.51
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.59
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.60:                              ; @.str.60
	.asciz	"and / or"

l_.str.61:                              ; @.str.61
	.asciz	"k = True; j = False;"

l_.str.62:                              ; @.str.62
	.asciz	"True"

l_.str.63:                              ; @.str.63
	.asciz	"False"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_true_false_expected
l___const.main.test_true_false_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	26                              ; 0x1a
	.space	4
	.quad	l_.str.62
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	27                              ; 0x1b
	.space	4
	.quad	l_.str.63
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.64:                              ; @.str.64
	.asciz	"True / False"

l_.str.65:                              ; @.str.65
	.asciz	"14days = 14; 21jump_street = 9;"

l_.str.66:                              ; @.str.66
	.asciz	"14"

l_.str.67:                              ; @.str.67
	.asciz	"days"

l_.str.68:                              ; @.str.68
	.asciz	"21"

l_.str.69:                              ; @.str.69
	.asciz	"jump_street"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_bad_names_expected
l___const.main.test_bad_names_expected:
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.66
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.67
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.66
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.68
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.69
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.9
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.70:                              ; @.str.70
	.asciz	"Bad names"

l_.str.71:                              ; @.str.71
	.asciz	"j = 9:;\nj=9.9,\nx=10?;"

l_.str.72:                              ; @.str.72
	.asciz	"9.9"

l_.str.73:                              ; @.str.73
	.asciz	"10"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_line_column_number_expected
l___const.main.test_line_column_number_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.9
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.72
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.73
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.74:                              ; @.str.74
	.asciz	"Expecting 1st error at line 1 col 6.\nExpecting 2nd error at line 2 col 6\nExpecting 3rd error at line 3 col 5\n"

l_.str.75:                              ; @.str.75
	.asciz	"test line and column numbers"

l_.str.76:                              ; @.str.76
	.asciz	"do j++ while (j < 30); if (j == 0) then j--; else if (j == 20) then j++; else j = j+4;\n"

l_.str.77:                              ; @.str.77
	.asciz	"do"

l_.str.78:                              ; @.str.78
	.asciz	"while"

l_.str.79:                              ; @.str.79
	.asciz	"30"

l_.str.80:                              ; @.str.80
	.asciz	"if"

l_.str.81:                              ; @.str.81
	.asciz	"=="

l_.str.82:                              ; @.str.82
	.asciz	"then"

l_.str.83:                              ; @.str.83
	.asciz	"else"

l_.str.84:                              ; @.str.84
	.asciz	"20"

l_.str.85:                              ; @.str.85
	.asciz	"4"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_keywords_again_expected
l___const.main.test_keywords_again_expected:
	.long	32                              ; 0x20
	.space	4
	.quad	l_.str.77
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	36                              ; 0x24
	.space	4
	.quad	l_.str.78
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	20                              ; 0x14
	.space	4
	.quad	l_.str.40
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.79
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	31                              ; 0x1f
	.space	4
	.quad	l_.str.80
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	22                              ; 0x16
	.space	4
	.quad	l_.str.81
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	35                              ; 0x23
	.space	4
	.quad	l_.str.82
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	4                               ; 0x4
	.space	4
	.quad	l_.str.31
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	34                              ; 0x22
	.space	4
	.quad	l_.str.83
	.long	31                              ; 0x1f
	.space	4
	.quad	l_.str.80
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	22                              ; 0x16
	.space	4
	.quad	l_.str.81
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.84
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	35                              ; 0x23
	.space	4
	.quad	l_.str.82
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	34                              ; 0x22
	.space	4
	.quad	l_.str.83
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.85
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.86:                              ; @.str.86
	.asciz	"test keywords."

l_.str.87:                              ; @.str.87
	.asciz	"greeting = \"hello, Bob!\";"

l_.str.88:                              ; @.str.88
	.asciz	"greeting"

l_.str.89:                              ; @.str.89
	.asciz	"\"hello, Bob!\""

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_string_recognition_expected
l___const.main.test_string_recognition_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.88
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.89
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.90:                              ; @.str.90
	.asciz	"test string recognition"

l_.str.91:                              ; @.str.91
	.asciz	"j = 9; name = \"joseph\"; joseph = name + 9;"

l_.str.92:                              ; @.str.92
	.asciz	"name"

l_.str.93:                              ; @.str.93
	.asciz	"\"joseph\""

l_.str.94:                              ; @.str.94
	.asciz	"joseph"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_numbers_and_strings_expected
l___const.main.test_numbers_and_strings_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.13
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.9
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.92
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.93
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.94
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.92
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.9
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.95:                              ; @.str.95
	.asciz	"test numbers and strings"

l_.str.96:                              ; @.str.96
	.asciz	"dl{sdlfkjsdlkj}sdfkjsldkfj;"

l_.str.97:                              ; @.str.97
	.asciz	"dl"

l_.str.98:                              ; @.str.98
	.asciz	"{"

l_.str.99:                              ; @.str.99
	.asciz	"sdlfkjsdlkj"

l_.str.100:                             ; @.str.100
	.asciz	"}"

l_.str.101:                             ; @.str.101
	.asciz	"sdfkjsldkfj"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_lbrace_rbrace_expected
l___const.main.test_lbrace_rbrace_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.97
	.long	38                              ; 0x26
	.space	4
	.quad	l_.str.98
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.99
	.long	39                              ; 0x27
	.space	4
	.quad	l_.str.100
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.101
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.102:                             ; @.str.102
	.asciz	"test lbrace and rbrace"

l_.str.103:                             ; @.str.103
	.asciz	"dl$sdlfkjsdlkj$sdfkjsldkfj;$"

l_.str.104:                             ; @.str.104
	.asciz	"$"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_dollar_expected
l___const.main.test_dollar_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.97
	.long	40                              ; 0x28
	.space	4
	.quad	l_.str.104
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.99
	.long	40                              ; 0x28
	.space	4
	.quad	l_.str.104
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.101
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	40                              ; 0x28
	.space	4
	.quad	l_.str.104

	.section	__TEXT,__cstring,cstring_literals
l_.str.105:                             ; @.str.105
	.asciz	"test dollar"

l_.str.106:                             ; @.str.106
	.asciz	"dl[sdlfkjsdlkj]sdfkjsldkfj;["

l_.str.107:                             ; @.str.107
	.asciz	"["

l_.str.108:                             ; @.str.108
	.asciz	"]"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_lsquare_rsquare_expected
l___const.main.test_lsquare_rsquare_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.97
	.long	41                              ; 0x29
	.space	4
	.quad	l_.str.107
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.99
	.long	42                              ; 0x2a
	.space	4
	.quad	l_.str.108
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.101
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	41                              ; 0x29
	.space	4
	.quad	l_.str.107

	.section	__TEXT,__cstring,cstring_literals
l_.str.109:                             ; @.str.109
	.asciz	"test lsquare and rsquare"

l_.str.110:                             ; @.str.110
	.asciz	"let i = 0; let f(x) = f(x){x#3;}; let k = $while(i < 0) do {f(i); i++}$;"

l_.str.111:                             ; @.str.111
	.asciz	"let"

l_.str.112:                             ; @.str.112
	.asciz	"i"

l_.str.113:                             ; @.str.113
	.asciz	"#"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_valid_program_expected
l___const.main.test_valid_program_expected:
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.112
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.59
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.59
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	38                              ; 0x26
	.space	4
	.quad	l_.str.98
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	7                               ; 0x7
	.space	4
	.quad	l_.str.113
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.34
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	39                              ; 0x27
	.space	4
	.quad	l_.str.100
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.39
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	40                              ; 0x28
	.space	4
	.quad	l_.str.104
	.long	36                              ; 0x24
	.space	4
	.quad	l_.str.78
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.112
	.long	20                              ; 0x14
	.space	4
	.quad	l_.str.40
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.15
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	32                              ; 0x20
	.space	4
	.quad	l_.str.77
	.long	38                              ; 0x26
	.space	4
	.quad	l_.str.98
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.59
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.112
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.112
	.long	3                               ; 0x3
	.space	4
	.quad	l_.str.17
	.long	39                              ; 0x27
	.space	4
	.quad	l_.str.100
	.long	40                              ; 0x28
	.space	4
	.quad	l_.str.104
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.114:                             ; @.str.114
	.asciz	"test valid program"

l_.str.115:                             ; @.str.115
	.asciz	"report = \"This is the report of today.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\n\";"

l_.str.116:                             ; @.str.116
	.asciz	"report"

l_.str.117:                             ; @.str.117
	.asciz	"\"This is the report of today.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\nToday we simply sat on our asses and watched a bunch of tv.\nand then we went outside and ate some lunch.\nand THEN and ONLY then did we decide to work.\nAnd oh boy! did we work! yes we worked! We wrote 10,000 lines of code in the end.\n\""

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_long_string_expected
l___const.main.test_long_string_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.116
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.117
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.118:                             ; @.str.118
	.asciz	"test long string"

l_.str.119:                             ; @.str.119
	.asciz	"greeting = \"hello, Bob!\";\ncurse    = \"Curse you, Bob.\";\nlove     = \"All you need is love, Bob.\n\";"

l_.str.120:                             ; @.str.120
	.asciz	"curse"

l_.str.121:                             ; @.str.121
	.asciz	"\"Curse you, Bob.\""

l_.str.122:                             ; @.str.122
	.asciz	"love"

l_.str.123:                             ; @.str.123
	.asciz	"\"All you need is love, Bob.\n\""

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_string_variable_assign_expected
l___const.main.test_string_variable_assign_expected:
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.88
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.89
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.120
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.121
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.122
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.123
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.124:                             ; @.str.124
	.asciz	"test string variable_assign"

l_.str.125:                             ; @.str.125
	.asciz	"let func f(x) = {x+9.999;};\nlet func print_greeting(name) = {print(\"hello \" $name);};"

l_.str.126:                             ; @.str.126
	.asciz	"func"

l_.str.127:                             ; @.str.127
	.asciz	"9.999"

l_.str.128:                             ; @.str.128
	.asciz	"print_greeting"

l_.str.129:                             ; @.str.129
	.asciz	"print"

l_.str.130:                             ; @.str.130
	.asciz	"\"hello \""

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_function_declaration_expected
l___const.main.test_function_declaration_expected:
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	45                              ; 0x2d
	.space	4
	.quad	l_.str.126
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.59
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	38                              ; 0x26
	.space	4
	.quad	l_.str.98
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.7
	.long	11                              ; 0xb
	.space	4
	.quad	l_.str.8
	.long	28                              ; 0x1c
	.space	4
	.quad	l_.str.127
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	39                              ; 0x27
	.space	4
	.quad	l_.str.100
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	45                              ; 0x2d
	.space	4
	.quad	l_.str.126
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.128
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.92
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	38                              ; 0x26
	.space	4
	.quad	l_.str.98
	.long	46                              ; 0x2e
	.space	4
	.quad	l_.str.129
	.long	1                               ; 0x1
	.space	4
	.quad	l_.str.20
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.130
	.long	40                              ; 0x28
	.space	4
	.quad	l_.str.104
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.92
	.long	2                               ; 0x2
	.space	4
	.quad	l_.str.26
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	39                              ; 0x27
	.space	4
	.quad	l_.str.100
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.131:                             ; @.str.131
	.asciz	"test function declaration"

l_.str.132:                             ; @.str.132
	.asciz	"let empty_list = [];let singleton_list = [\"bob\"];let list = [\"bo\", \"zo\", \"the\", \"clown\"];"

l_.str.133:                             ; @.str.133
	.asciz	"empty_list"

l_.str.134:                             ; @.str.134
	.asciz	"singleton_list"

l_.str.135:                             ; @.str.135
	.asciz	"\"bob\""

l_.str.136:                             ; @.str.136
	.asciz	"list"

l_.str.137:                             ; @.str.137
	.asciz	"\"bo\""

l_.str.138:                             ; @.str.138
	.asciz	","

l_.str.139:                             ; @.str.139
	.asciz	"\"zo\""

l_.str.140:                             ; @.str.140
	.asciz	"\"the\""

l_.str.141:                             ; @.str.141
	.asciz	"\"clown\""

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.test_array_recognition_expected
l___const.main.test_array_recognition_expected:
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.133
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	41                              ; 0x29
	.space	4
	.quad	l_.str.107
	.long	42                              ; 0x2a
	.space	4
	.quad	l_.str.108
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.134
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	41                              ; 0x29
	.space	4
	.quad	l_.str.107
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.135
	.long	42                              ; 0x2a
	.space	4
	.quad	l_.str.108
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16
	.long	44                              ; 0x2c
	.space	4
	.quad	l_.str.111
	.long	29                              ; 0x1d
	.space	4
	.quad	l_.str.136
	.long	30                              ; 0x1e
	.space	4
	.quad	l_.str.14
	.long	41                              ; 0x29
	.space	4
	.quad	l_.str.107
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.137
	.long	43                              ; 0x2b
	.space	4
	.quad	l_.str.138
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.139
	.long	43                              ; 0x2b
	.space	4
	.quad	l_.str.138
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.140
	.long	43                              ; 0x2b
	.space	4
	.quad	l_.str.138
	.long	37                              ; 0x25
	.space	4
	.quad	l_.str.141
	.long	42                              ; 0x2a
	.space	4
	.quad	l_.str.108
	.long	0                               ; 0x0
	.space	4
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.142:                             ; @.str.142
	.asciz	"test array recognition"

l_.str.143:                             ; @.str.143
	.asciz	"\n\n"

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
	.byte	6                               ; Abbreviation Code
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
	.byte	7                               ; Abbreviation Code
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
	.byte	8                               ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
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
	.byte	10                              ; Abbreviation Code
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
	.byte	11                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
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
	.byte	14                              ; Abbreviation Code
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
	.byte	15                              ; Abbreviation Code
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
	.byte	16                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6ae DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	50                              ; DW_AT_name
	.long	57                              ; DW_AT_LLVM_sysroot
	.long	109                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	120                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end2-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x12d DW_TAG_enumeration_type
	.long	351                             ; DW_AT_type
	.long	165                             ; DW_AT_name
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	189                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	201                             ; DW_AT_name
	.byte	1                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	210                             ; DW_AT_name
	.byte	2                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	219                             ; DW_AT_name
	.byte	3                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	231                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	243                             ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x62:0x6 DW_TAG_enumerator
	.long	251                             ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x68:0x6 DW_TAG_enumerator
	.long	259                             ; DW_AT_name
	.byte	7                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x6e:0x6 DW_TAG_enumerator
	.long	267                             ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x74:0x6 DW_TAG_enumerator
	.long	275                             ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x7a:0x6 DW_TAG_enumerator
	.long	284                             ; DW_AT_name
	.byte	10                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x80:0x6 DW_TAG_enumerator
	.long	290                             ; DW_AT_name
	.byte	11                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x86:0x6 DW_TAG_enumerator
	.long	297                             ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x8c:0x6 DW_TAG_enumerator
	.long	306                             ; DW_AT_name
	.byte	13                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x92:0x6 DW_TAG_enumerator
	.long	316                             ; DW_AT_name
	.byte	14                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x98:0x6 DW_TAG_enumerator
	.long	324                             ; DW_AT_name
	.byte	15                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x9e:0x6 DW_TAG_enumerator
	.long	330                             ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xa4:0x6 DW_TAG_enumerator
	.long	337                             ; DW_AT_name
	.byte	17                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xaa:0x6 DW_TAG_enumerator
	.long	343                             ; DW_AT_name
	.byte	18                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xb0:0x6 DW_TAG_enumerator
	.long	349                             ; DW_AT_name
	.byte	19                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xb6:0x6 DW_TAG_enumerator
	.long	354                             ; DW_AT_name
	.byte	20                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xbc:0x6 DW_TAG_enumerator
	.long	363                             ; DW_AT_name
	.byte	21                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xc2:0x6 DW_TAG_enumerator
	.long	375                             ; DW_AT_name
	.byte	22                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xc8:0x6 DW_TAG_enumerator
	.long	388                             ; DW_AT_name
	.byte	23                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xce:0x6 DW_TAG_enumerator
	.long	405                             ; DW_AT_name
	.byte	24                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xd4:0x6 DW_TAG_enumerator
	.long	417                             ; DW_AT_name
	.byte	25                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xda:0x6 DW_TAG_enumerator
	.long	432                             ; DW_AT_name
	.byte	26                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xe0:0x6 DW_TAG_enumerator
	.long	439                             ; DW_AT_name
	.byte	27                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xe6:0x6 DW_TAG_enumerator
	.long	447                             ; DW_AT_name
	.byte	28                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xec:0x6 DW_TAG_enumerator
	.long	456                             ; DW_AT_name
	.byte	29                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xf2:0x6 DW_TAG_enumerator
	.long	463                             ; DW_AT_name
	.byte	30                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xf8:0x6 DW_TAG_enumerator
	.long	472                             ; DW_AT_name
	.byte	31                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0xfe:0x6 DW_TAG_enumerator
	.long	477                             ; DW_AT_name
	.byte	32                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x104:0x6 DW_TAG_enumerator
	.long	482                             ; DW_AT_name
	.byte	33                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x10a:0x6 DW_TAG_enumerator
	.long	488                             ; DW_AT_name
	.byte	34                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x110:0x6 DW_TAG_enumerator
	.long	495                             ; DW_AT_name
	.byte	35                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x116:0x6 DW_TAG_enumerator
	.long	502                             ; DW_AT_name
	.byte	36                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x11c:0x6 DW_TAG_enumerator
	.long	510                             ; DW_AT_name
	.byte	37                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x122:0x6 DW_TAG_enumerator
	.long	519                             ; DW_AT_name
	.byte	38                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x128:0x6 DW_TAG_enumerator
	.long	528                             ; DW_AT_name
	.byte	39                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x12e:0x6 DW_TAG_enumerator
	.long	537                             ; DW_AT_name
	.byte	40                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x134:0x6 DW_TAG_enumerator
	.long	546                             ; DW_AT_name
	.byte	41                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x13a:0x6 DW_TAG_enumerator
	.long	556                             ; DW_AT_name
	.byte	42                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x140:0x6 DW_TAG_enumerator
	.long	566                             ; DW_AT_name
	.byte	43                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x146:0x6 DW_TAG_enumerator
	.long	574                             ; DW_AT_name
	.byte	44                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x14c:0x6 DW_TAG_enumerator
	.long	580                             ; DW_AT_name
	.byte	45                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x152:0x6 DW_TAG_enumerator
	.long	587                             ; DW_AT_name
	.byte	46                              ; DW_AT_const_value
	.byte	3                               ; Abbrev [3] 0x158:0x6 DW_TAG_enumerator
	.long	595                             ; DW_AT_name
	.byte	47                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x15f:0x7 DW_TAG_base_type
	.long	176                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x166:0x97 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	605                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1354                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	6                               ; Abbrev [6] 0x17f:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	664                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x18d:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	681                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	1378                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x19b:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	104
	.long	715                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	1443                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x1a9:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	100
	.long	773                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.long	1354                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x1b7:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	80
	.long	778                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	1472                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1c5:0x37 DW_TAG_lexical_block
.set Lset5, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset5
	.byte	7                               ; Abbrev [7] 0x1ca:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	76
	.long	819                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	1354                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1d8:0x23 DW_TAG_lexical_block
.set Lset6, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset6
	.byte	7                               ; Abbrev [7] 0x1dd:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\300"
	.long	821                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	1443                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x1ec:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	56
	.long	848                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	1443                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x1fd:0x5c DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset7, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset7
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	625                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	6                               ; Abbrev [6] 0x212:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	871                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x220:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	883                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	1378                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x22e:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	104
	.long	904                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	1443                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x23c:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	100
	.long	924                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	1354                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x24a:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	936                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	1438                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x259:0x2f1 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset8, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset8
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	655                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1354                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	6                               ; Abbrev [6] 0x272:0xf DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\320\003"
	.long	946                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.long	1354                            ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x281:0xf DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\310\003"
	.long	951                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.long	1528                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x290:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\300\003"
	.long	956                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x29f:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	966                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	1533                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x2ae:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\270\003"
	.long	904                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	1443                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x2bd:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\260\003"
	.long	1012                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	78                              ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x2cc:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\310}"
	.long	1035                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	1552                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x2db:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\250\003"
	.long	1067                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	96                              ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x2ea:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\270y"
	.long	1087                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.long	1564                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x2f9:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\240\003"
	.long	1116                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x308:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\270x"
	.long	1139                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	120                             ; DW_AT_decl_line
	.long	1576                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x317:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\230\003"
	.long	1171                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x326:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\310v"
	.long	1186                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	136                             ; DW_AT_decl_line
	.long	1588                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x335:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\220\003"
	.long	1210                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	153                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x344:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\250t"
	.long	1225                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	154                             ; DW_AT_decl_line
	.long	1600                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x353:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\210\003"
	.long	1249                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	171                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x362:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\270s"
	.long	1258                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.long	1612                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x371:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\200\003"
	.long	1276                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	189                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x380:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\230q"
	.long	1288                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	190                             ; DW_AT_decl_line
	.long	1600                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x38f:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\370\002"
	.long	1310                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	206                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x39e:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\230p"
	.long	1326                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	207                             ; DW_AT_decl_line
	.long	1576                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3ad:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\360\002"
	.long	1351                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	222                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3bc:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\370n"
	.long	1366                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	223                             ; DW_AT_decl_line
	.long	1624                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3cb:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\350\002"
	.long	1390                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	238                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3da:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\310m"
	.long	1414                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	239                             ; DW_AT_decl_line
	.long	1636                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x3e9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\340\002"
	.long	1447                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	256                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x3f9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\210\027"
	.long	1467                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	257                             ; DW_AT_decl_line
	.long	1648                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x409:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\330\002"
	.long	1496                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	277                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x419:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\310\026"
	.long	1520                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	278                             ; DW_AT_decl_line
	.long	1533                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x429:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\320\002"
	.long	1553                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	292                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x439:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\350\024"
	.long	1578                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	293                             ; DW_AT_decl_line
	.long	1552                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x449:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\310\002"
	.long	1612                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	310                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x459:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\210\024"
	.long	1631                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	311                             ; DW_AT_decl_line
	.long	1660                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x469:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\300\002"
	.long	1659                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	326                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x479:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\230\023"
	.long	1671                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	327                             ; DW_AT_decl_line
	.long	1612                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x489:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\270\002"
	.long	1692                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	343                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x499:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\250\022"
	.long	1712                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	344                             ; DW_AT_decl_line
	.long	1612                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4a9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\260\002"
	.long	1742                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	360                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4b9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\350\f"
	.long	1761                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	362                             ; DW_AT_decl_line
	.long	1672                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4c9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\250\002"
	.long	1789                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	384                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4d9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\250\f"
	.long	1806                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	430                             ; DW_AT_decl_line
	.long	1533                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4e9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\240\002"
	.long	1832                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	489                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4f9:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\350\n"
	.long	1860                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	493                             ; DW_AT_decl_line
	.long	1684                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x509:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\230\002"
	.long	1897                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	509                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x519:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\370\006"
	.long	1923                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	515                             ; DW_AT_decl_line
	.long	1696                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x529:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\220\002"
	.long	1958                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	535                             ; DW_AT_decl_line
	.long	1361                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x539:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\330\003"
	.long	1981                            ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.short	539                             ; DW_AT_decl_line
	.long	1708                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x54a:0x7 DW_TAG_base_type
	.long	660                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	11                              ; Abbrev [11] 0x551:0x5 DW_TAG_pointer_type
	.long	1366                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x556:0x5 DW_TAG_const_type
	.long	1371                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x55b:0x7 DW_TAG_base_type
	.long	676                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	11                              ; Abbrev [11] 0x562:0x5 DW_TAG_pointer_type
	.long	1383                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x567:0xb DW_TAG_typedef
	.long	1394                            ; DW_AT_type
	.long	697                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.byte	14                              ; Abbrev [14] 0x572:0x21 DW_TAG_structure_type
	.long	697                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.byte	15                              ; Abbrev [15] 0x57a:0xc DW_TAG_member
	.long	703                             ; DW_AT_name
	.long	1427                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	15                              ; Abbrev [15] 0x586:0xc DW_TAG_member
	.long	708                             ; DW_AT_name
	.long	1438                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x593:0xb DW_TAG_typedef
	.long	50                              ; DW_AT_type
	.long	165                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	60                              ; DW_AT_decl_line
	.byte	11                              ; Abbrev [11] 0x59e:0x5 DW_TAG_pointer_type
	.long	1371                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x5a3:0xb DW_TAG_typedef
	.long	1454                            ; DW_AT_type
	.long	736                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x5ae:0xb DW_TAG_typedef
	.long	1465                            ; DW_AT_type
	.long	743                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.byte	4                               ; Abbrev [4] 0x5b9:0x7 DW_TAG_base_type
	.long	759                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x5c0:0xb DW_TAG_typedef
	.long	1483                            ; DW_AT_type
	.long	786                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	74                              ; DW_AT_decl_line
	.byte	14                              ; Abbrev [14] 0x5cb:0x2d DW_TAG_structure_type
	.long	786                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.byte	15                              ; Abbrev [15] 0x5d3:0xc DW_TAG_member
	.long	798                             ; DW_AT_name
	.long	1378                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	15                              ; Abbrev [15] 0x5df:0xc DW_TAG_member
	.long	805                             ; DW_AT_name
	.long	1354                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	15                              ; Abbrev [15] 0x5eb:0xc DW_TAG_member
	.long	810                             ; DW_AT_name
	.long	1354                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.byte	12                              ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x5f8:0x5 DW_TAG_pointer_type
	.long	1438                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x5fd:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x602:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	4                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x609:0x7 DW_TAG_base_type
	.long	992                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	16                              ; Abbrev [16] 0x610:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x615:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	14                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x61c:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x621:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	33                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x628:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x62d:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x634:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x639:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	15                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x640:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x645:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	18                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x64c:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x651:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x658:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x65d:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	10                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x664:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x669:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	11                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x670:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x675:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	38                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x67c:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x681:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	6                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x688:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x68d:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	44                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x694:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x699:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	12                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x6a0:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x6a5:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	31                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x6ac:0xc DW_TAG_array_type
	.long	1383                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x6b1:0x6 DW_TAG_subrange_type
	.long	1545                            ; DW_AT_type
	.byte	26                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset9, Ltmp3-Lfunc_begin0
	.quad	Lset9
.set Lset10, Ltmp4-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp5-Lfunc_begin0
	.quad	Lset11
.set Lset12, Ltmp14-Lfunc_begin0
	.quad	Lset12
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset13, Ltmp3-Lfunc_begin0
	.quad	Lset13
.set Lset14, Ltmp4-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp8-Lfunc_begin0
	.quad	Lset15
.set Lset16, Ltmp13-Lfunc_begin0
	.quad	Lset16
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 14.0.3 (clang-1403.0.22.14.1)" ; string offset=0
	.asciz	"test.c"                        ; string offset=50
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=57
	.asciz	"MacOSX.sdk"                    ; string offset=109
	.asciz	"/Users/warren/Development/Github/Tirja/lexer" ; string offset=120
	.asciz	"Token_Type"                    ; string offset=165
	.asciz	"unsigned int"                  ; string offset=176
	.asciz	"T_SEMICOLON"                   ; string offset=189
	.asciz	"T_LPAREN"                      ; string offset=201
	.asciz	"T_RPAREN"                      ; string offset=210
	.asciz	"T_INCREMENT"                   ; string offset=219
	.asciz	"T_DECREMENT"                   ; string offset=231
	.asciz	"T_MINUS"                       ; string offset=243
	.asciz	"T_BWNOT"                       ; string offset=251
	.asciz	"T_POWER"                       ; string offset=259
	.asciz	"T_TIMES"                       ; string offset=267
	.asciz	"T_DIVIDE"                      ; string offset=275
	.asciz	"T_MOD"                         ; string offset=284
	.asciz	"T_PLUS"                        ; string offset=290
	.asciz	"T_BWLEFT"                      ; string offset=297
	.asciz	"T_BWRIGHT"                     ; string offset=306
	.asciz	"T_BWAND"                       ; string offset=316
	.asciz	"T_XOR"                         ; string offset=324
	.asciz	"T_BWOR"                        ; string offset=330
	.asciz	"T_NOT"                         ; string offset=337
	.asciz	"T_AND"                         ; string offset=343
	.asciz	"T_OR"                          ; string offset=349
	.asciz	"T_LESS_T"                      ; string offset=354
	.asciz	"T_GREATER_T"                   ; string offset=363
	.asciz	"T_EQUIVALENT"                  ; string offset=375
	.asciz	"T_NOT_EQUIVALENT"              ; string offset=388
	.asciz	"T_LESS_T_EQ"                   ; string offset=405
	.asciz	"T_GREATER_T_EQ"                ; string offset=417
	.asciz	"T_TRUE"                        ; string offset=432
	.asciz	"T_FALSE"                       ; string offset=439
	.asciz	"T_NUMBER"                      ; string offset=447
	.asciz	"T_NAME"                        ; string offset=456
	.asciz	"T_EQUALS"                      ; string offset=463
	.asciz	"T_IF"                          ; string offset=472
	.asciz	"T_DO"                          ; string offset=477
	.asciz	"T_FOR"                         ; string offset=482
	.asciz	"T_ELSE"                        ; string offset=488
	.asciz	"T_THEN"                        ; string offset=495
	.asciz	"T_WHILE"                       ; string offset=502
	.asciz	"T_STRING"                      ; string offset=510
	.asciz	"T_LBRACE"                      ; string offset=519
	.asciz	"T_RBRACE"                      ; string offset=528
	.asciz	"T_DOLLAR"                      ; string offset=537
	.asciz	"T_LSQUARE"                     ; string offset=546
	.asciz	"T_RSQUARE"                     ; string offset=556
	.asciz	"T_COMMA"                       ; string offset=566
	.asciz	"T_LET"                         ; string offset=574
	.asciz	"T_FUNC"                        ; string offset=580
	.asciz	"T_PRINT"                       ; string offset=587
	.asciz	"T_NOTHING"                     ; string offset=595
	.asciz	"token_array_compare"           ; string offset=605
	.asciz	"test_tokenize_string_to_array" ; string offset=625
	.asciz	"main"                          ; string offset=655
	.asciz	"int"                           ; string offset=660
	.asciz	"test_string"                   ; string offset=664
	.asciz	"char"                          ; string offset=676
	.asciz	"tokens_expected"               ; string offset=681
	.asciz	"Token"                         ; string offset=697
	.asciz	"type"                          ; string offset=703
	.asciz	"lexeme"                        ; string offset=708
	.asciz	"size_tokens_expected"          ; string offset=715
	.asciz	"size_t"                        ; string offset=736
	.asciz	"__darwin_size_t"               ; string offset=743
	.asciz	"unsigned long"                 ; string offset=759
	.asciz	"pass"                          ; string offset=773
	.asciz	"t_array"                       ; string offset=778
	.asciz	"Token_Array"                   ; string offset=786
	.asciz	"tokens"                        ; string offset=798
	.asciz	"size"                          ; string offset=805
	.asciz	"capacity"                      ; string offset=810
	.asciz	"i"                             ; string offset=819
	.asciz	"size_to_compare_token_type"    ; string offset=821
	.asciz	"size_to_compare_lexeme"        ; string offset=848
	.asciz	"string_test"                   ; string offset=871
	.asciz	"token_array_expected"          ; string offset=883
	.asciz	"size_array_expected"           ; string offset=904
	.asciz	"test_number"                   ; string offset=924
	.asciz	"test_name"                     ; string offset=936
	.asciz	"argc"                          ; string offset=946
	.asciz	"argv"                          ; string offset=951
	.asciz	"test_fail"                     ; string offset=956
	.asciz	"incorrect_tokens_expected"     ; string offset=966
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=992
	.asciz	"test_too_many_decimals"        ; string offset=1012
	.asciz	"test_too_many_decimals_expected" ; string offset=1035
	.asciz	"test_valid_decimals"           ; string offset=1067
	.asciz	"test_valid_decimals_expected"  ; string offset=1087
	.asciz	"test_invalid_increment"        ; string offset=1116
	.asciz	"test_invalid_increment_expected" ; string offset=1139
	.asciz	"test_lt_symbol"                ; string offset=1171
	.asciz	"test_lt_symbol_expected"       ; string offset=1186
	.asciz	"test_gt_symbol"                ; string offset=1210
	.asciz	"test_gt_symbol_expected"       ; string offset=1225
	.asciz	"test_not"                      ; string offset=1249
	.asciz	"test_not_expected"             ; string offset=1258
	.asciz	"test_and_or"                   ; string offset=1276
	.asciz	"test_and_or_exepected"         ; string offset=1288
	.asciz	"test_true_false"               ; string offset=1310
	.asciz	"test_true_false_expected"      ; string offset=1326
	.asciz	"test_bad_names"                ; string offset=1351
	.asciz	"test_bad_names_expected"       ; string offset=1366
	.asciz	"test_line_column_number"       ; string offset=1390
	.asciz	"test_line_column_number_expected" ; string offset=1414
	.asciz	"test_keywords_again"           ; string offset=1447
	.asciz	"test_keywords_again_expected"  ; string offset=1467
	.asciz	"test_string_recognition"       ; string offset=1496
	.asciz	"test_string_recognition_expected" ; string offset=1520
	.asciz	"test_numbers_and_strings"      ; string offset=1553
	.asciz	"test_numbers_and_strings_expected" ; string offset=1578
	.asciz	"test_lbrace_rbrace"            ; string offset=1612
	.asciz	"test_lbrace_rbrace_expected"   ; string offset=1631
	.asciz	"test_dollar"                   ; string offset=1659
	.asciz	"test_dollar_expected"          ; string offset=1671
	.asciz	"test_lsqure_rsquqre"           ; string offset=1692
	.asciz	"test_lsquare_rsquare_expected" ; string offset=1712
	.asciz	"test_valid_program"            ; string offset=1742
	.asciz	"test_valid_program_expected"   ; string offset=1761
	.asciz	"test_long_string"              ; string offset=1789
	.asciz	"test_long_string_expected"     ; string offset=1806
	.asciz	"test_string_variable_assign"   ; string offset=1832
	.asciz	"test_string_variable_assign_expected" ; string offset=1860
	.asciz	"test_function_declaration"     ; string offset=1897
	.asciz	"test_function_declaration_expected" ; string offset=1923
	.asciz	"test_array_recognition"        ; string offset=1958
	.asciz	"test_array_recognition_expected" ; string offset=1981
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	3                               ; Header Bucket Count
	.long	3                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	1061281930                      ; Hash in Bucket 1
	.long	2090499946                      ; Hash in Bucket 1
	.long	-598819325                      ; Hash in Bucket 2
.set Lset17, LNames0-Lnames_begin       ; Offset in Bucket 1
	.long	Lset17
.set Lset18, LNames1-Lnames_begin       ; Offset in Bucket 1
	.long	Lset18
.set Lset19, LNames2-Lnames_begin       ; Offset in Bucket 2
	.long	Lset19
LNames0:
	.long	605                             ; token_array_compare
	.long	1                               ; Num DIEs
	.long	358
	.long	0
LNames1:
	.long	655                             ; main
	.long	1                               ; Num DIEs
	.long	601
	.long	0
LNames2:
	.long	625                             ; test_tokenize_string_to_array
	.long	1                               ; Num DIEs
	.long	509
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
	.long	10                              ; Header Bucket Count
	.long	10                              ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	1                               ; Bucket 4
	.long	2                               ; Bucket 5
	.long	3                               ; Bucket 6
	.long	4                               ; Bucket 7
	.long	6                               ; Bucket 8
	.long	8                               ; Bucket 9
	.long	-594775205                      ; Hash in Bucket 1
	.long	1247757124                      ; Hash in Bucket 4
	.long	-1304652851                     ; Hash in Bucket 5
	.long	237878566                       ; Hash in Bucket 6
	.long	819404327                       ; Hash in Bucket 7
	.long	-282664779                      ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	-103762318                      ; Hash in Bucket 8
	.long	466678419                       ; Hash in Bucket 9
	.long	2090147939                      ; Hash in Bucket 9
.set Lset20, Ltypes4-Ltypes_begin       ; Offset in Bucket 1
	.long	Lset20
.set Lset21, Ltypes3-Ltypes_begin       ; Offset in Bucket 4
	.long	Lset21
.set Lset22, Ltypes5-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset22
.set Lset23, Ltypes1-Ltypes_begin       ; Offset in Bucket 6
	.long	Lset23
.set Lset24, Ltypes2-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset24
.set Lset25, Ltypes0-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset25
.set Lset26, Ltypes6-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset26
.set Lset27, Ltypes7-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset27
.set Lset28, Ltypes9-Ltypes_begin       ; Offset in Bucket 9
	.long	Lset28
.set Lset29, Ltypes8-Ltypes_begin       ; Offset in Bucket 9
	.long	Lset29
Ltypes4:
	.long	992                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	1545
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	786                             ; Token_Array
	.long	2                               ; Num DIEs
	.long	1472
	.short	22
	.byte	0
	.long	1483
	.short	19
	.byte	0
	.long	0
Ltypes5:
	.long	176                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	351
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	697                             ; Token
	.long	2                               ; Num DIEs
	.long	1383
	.short	22
	.byte	0
	.long	1394
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	165                             ; Token_Type
	.long	2                               ; Num DIEs
	.long	50
	.short	4
	.byte	0
	.long	1427
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	743                             ; __darwin_size_t
	.long	1                               ; Num DIEs
	.long	1454
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	660                             ; int
	.long	1                               ; Num DIEs
	.long	1354
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	759                             ; unsigned long
	.long	1                               ; Num DIEs
	.long	1465
	.short	36
	.byte	0
	.long	0
Ltypes9:
	.long	736                             ; size_t
	.long	1                               ; Num DIEs
	.long	1443
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	676                             ; char
	.long	1                               ; Num DIEs
	.long	1371
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
