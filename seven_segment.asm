.text

main:
    li t0, 0
    li t1, 0
    li t2, 0
    li t3, 0
    li t4, 0
    li t5, 0

    la s0, digit
    li s1, 100
    li s2, -1
    li s3, 10

    li a2, 0xFFFFFFFF

loop:
    div t1, t0, s3
    add t1, s0, t1
    lb t1, 0(t1)

    rem t2, t0, s3
    add t2, s0, t2
    lb t2 0(t2)

    slli a1, t1, 8
    or a1, a1, t2

    li a0 0x120
    ecall

    li a0, 0x122
    ecall

    andi t4, a0, 0x1
    andi t5, a0, 0x2

    xor t3, t3, a0

    mv a1, t3
    li a0, 0x121
    ecall

    beqz t4, not_b0
    addi t0, t0, -1

not_b0:
    beqz t5, not_b1
    addi, t0, t0, 1

not_b1:
    bne t0, s1, no_reset_0
    li t0, 0

no_reset_0:
    bne t0, s2, no_reset_99
    li, t0, 99

no_reset_99:
    j loop

.data


digit:
    .byte 0b00111111 # 0
    .byte 0b00000110 # 1
    .byte 0b01011011 # 2
    .byte 0b01001111 # 3
    .byte 0b01100110 # 4
    .byte 0b01101101 # 5
    .byte 0b01111101 # 6
    .byte 0b00000111 # 7
    .byte 0b01111111 # 8
    .byte 0b01101111 # 9