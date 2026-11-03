global _start

section .text
_start:
    ; Системний виклик write (sys_write)
    mov rax, 1                  ; Номер системного виклику: 1 (sys_write)
    mov rdi, 1                  ; Файловий дескриптор: 1 (stdout)
    mov rsi, message            ; Вказівник на рядок у пам'яті
    mov rdx, 15                 ; Кількість байтів (14 символів тексту + \n)
    syscall                     ; Виклик ядра Linux

    ; Системний виклик exit (sys_exit)
    mov rax, 60                 ; Номер системного виклику: 60 (sys_exit)
    xor rdi, rdi                ; Код виходу: 0 (успішне завершення)
    syscall                     ; Виклик ядра Linux

section .data
    message: db "KI-251 Ivaneko", 10   ; 10 — символ нового рядка (\n)