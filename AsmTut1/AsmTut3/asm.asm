.code
someFunction proc
	mov rax, -1 ; All 64 bits set to ones
	mov al, 0   ; All 8 lower bits set to zeros
	mov ax, 0   ; All 16 lower bits set to zeros
	mov eax, 0  ; All 32 lower bits set to zeros AND 32 higher bits set to zeroes due to a 32 op to a 64 bit register
	ret
someFunction endp
end