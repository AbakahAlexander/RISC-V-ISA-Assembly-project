.data
count: .word 0
str: .string "RISC-V is the bomb!!!"


.text

main:
    la t0, count
    lw t1, 0(t0)
    la t2, str


while:
    lb t3, 0(t2)
    beqz t3, finish

    addi t1, t1, 1
    addi t2, t2, 1

    j while

finish:
    sw t1, 0(t0)

    mv a1, t1
    li a0, 1
    ecall

    li a1, '\n'
    li a0, 11
    ecall
    ecall


    li a0, 10
    ecall
