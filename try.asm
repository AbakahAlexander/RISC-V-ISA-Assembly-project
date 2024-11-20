.data
prompt: .string "Hello, what's your name?\n"
response: .string "\nIt's good to meet you, "
name: .string "                  "


.text 

main:
    la t0, name 
    la a1, prompt 
    li a0, 4
    ecall 
    
    jal read_str

    la a1, response
    li a0, 4
    ecall

    la a1, name
    li a0, 4
    ecall

    li a1, '!'
    li a0, 11
    ecall

    li a1, '\n'
    ecall
    ecall

    li a0, 10
    ecall


read_str:
    li a5, 1

    li a0, 0x130
    ecall 

read_char:
    li a0, 0x131
    ecall

    beq a0, a5, read_char

    beq a0, zero, finish

    sb a1, 0(t0)

    addi t0, t0, 1

    j read_char

finish:
    sb zero, 0(t0)
    jr ra
