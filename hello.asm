section .data
        mensagem db 'Hello, World!'

section .text
        global _start

_start:
        mov rax, 1 ;identificador da chamada sys__write
        mov rdi, 1 ;saida padrao 
        mov rsi, mensagem
        mov rdx, 13
        syscall

        mov rax, 60 ;identificador de chamada sys_exit
        mov rdi, 0
        syscall
