# Simple input in x86-64

.global main

.data
msg: .string "Enter your name: "
fmt: .string "%s"
greet: .string "Hello, %s!"

.bss
    .comm name, 25
    
.text
main:
    sub $8, %rsp
    
    mov $msg, %rdi
    call printf
    
    mov $fmt, %rdi
    mov $name, %rsi
    call scanf
    
    mov $greet, %rdi
    mov $name, %rsi
    call printf
    
    add $8, %rsp
    ret
