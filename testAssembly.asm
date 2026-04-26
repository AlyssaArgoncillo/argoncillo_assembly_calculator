.386
.model flat, stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
    msg_ax db "AX = ", 0
    msg_bx db "BX = ", 0
    msg_op db "Operation = ", 0
    msg_result db "Result = ", 0
    buffer db 16 dup(0)
    newline db 13, 10, 0
    ax_value dd 0
    bx_value dd 0

.code
start:
    invoke StdOut, addr msg_ax
    invoke StdIn, addr buffer, 16
    invoke atodw, addr buffer
    mov ax_value, eax

    invoke StdOut, addr msg_bx
    invoke StdIn, addr buffer, 16
    invoke atodw, addr buffer
    mov bx_value, eax

    invoke StdOut, addr msg_op
    invoke StdIn, addr buffer, 16
    invoke atodw, addr buffer
    mov ecx, eax

    mov eax, ax_value
    mov ebx, bx_value

    cmp ecx, 1
    je addition
    cmp ecx, 2
    je subtraction
    cmp ecx, 3
    je multiplication
    cmp ecx, 4
    je division

addition:
    add eax, ebx
    jmp display

subtraction:
    sub eax, ebx
    jmp display

multiplication:
    mul ebx
    jmp display

division:
    xor edx, edx
    cmp ebx, 0
    je display
    div ebx

display:
    push eax
    invoke StdOut, addr msg_result
    pop eax
    
    invoke dwtoa, eax, addr buffer
    invoke StdOut, addr buffer
    invoke StdOut, addr newline
    
    invoke ExitProcess, 0

end start