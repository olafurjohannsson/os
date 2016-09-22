global start

section .text
bits 32
start:
	; print 'OK' to screen
	mov dword [0xb8000], 0x2f4b2f4f ; mov the const to addr b8000
	hlt ; stop CPU

; global exports a public label, it's the entry point of our kernel
; .text is default section for executable code
; bits 32 specifies lines are 32bit instructions, the CPU is still in Protected mode when GRUB starts our kernel
; When w switch to long mode, we can switch to 64bit

