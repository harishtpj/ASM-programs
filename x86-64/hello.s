# Hello, World in x86-64 Assembly

.global main

.data
msg: 
  .string "Hello, World!"

.text
main:
    mov $msg, %rdi
    call puts
    ret
    
