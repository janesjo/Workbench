EXTERN MessageBoxA: PROC

EXTERN GetForegroundWindow: PROC
PUBLIC hello_world_asm

hello_world_asm PROC

push rbp ; save frame pointer
mov rbp, rsp ; fix stack pointer
sub rsp, 8 * (4 + 2) ; allocate shadow register area + 2 QWORDs for stack alignment

; Get a window handle
call GetForegroundWindow
mov rcx, rax

; WINUSERAPI int WINAPI MessageBoxA(
;  RCX =>  _In_opt_ HWND hWnd,
;  RDX =>  _In_opt_ LPCSTR lpText,
;  R8  =>  _In_opt_ LPCSTR lpCaption,
;  R9  =>  _In_ UINT uType);

mov rdx, offset hello_msg
mov r8, offset info_msg
mov r9, 0 ; MB_OK

and rsp, not 8 ; align stack to 16 bytes prior to API call
call MessageBoxA

; epilog. restore stack pointer
mov rsp, rbp
pop rbp

ret
hello_world_asm ENDP