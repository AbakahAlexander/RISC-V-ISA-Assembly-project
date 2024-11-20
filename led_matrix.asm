.text

main:
    li a0, 0x100
    la s0, logo
    li s2, 0
    li s3, 10

outer:
    li s1, 0

inner:
    lw a2, 0(s0)
    slli a1, s2, 16
    or a1, a1, s1
    ecall

    addi s0, s0, 4
    addi s1, s1, 1
    bne s1, s3 inner

    addi s2, s2, 1
    bne s2, s3, outer

    li a0, 10
    ecall


.equ black 0x00000000
.equ yellow 0x00F6B21A
.equ blue 0x002A3172


.data

# The following are the logo pixels,
# specified column by column
logo:

# Column 0
.word black
.word blue
.word blue
.word blue
.word blue
.word blue
.word blue
.word blue
.word blue
.word blue

# Column 1
.word black
.word blue
.word blue
.word blue
.word blue
.word black
.word black
.word blue
.word blue
.word blue

# Column 2
.word black
.word blue
.word blue
.word blue
.word blue
.word black
.word black
.word black
.word blue
.word blue

# Column 3
.word black
.word black
.word blue
.word blue
.word black
.word black
.word yellow
.word black
.word black
.word blue

# Column 4
.word yellow
.word black
.word black
.word black
.word black
.word yellow
.word yellow
.word yellow
.word black
.word black

# Column 5
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word black

# Column 6
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word black
.word black

# Column 7
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word black
.word black
.word blue

# Column 8
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word black
.word black
.word blue
.word blue

# Column 9
.word yellow
.word yellow
.word yellow
.word yellow
.word yellow
.word black
.word black
.word blue
.word blue
.word blue