.data
myByte  db -1
myWord  dw -1
myDWord dd -1
myQWord dq -1
myReal4 real4 0.0
myReal8 real8 0.0
myReal10 real10 0.0
.code
someFunction proc
	mov al, byte ptr [myByte] ; or mov al, myByte
	mov ax, word ptr [myWord]
	mov eax, dword ptr [myDWord]
	mov rax, qword ptr [myQWord]
	ret
someFunction endp
end