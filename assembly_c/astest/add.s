    .globl      add
    .p2align    2
    .type       add,%function

add:
    .fnstart
    add         r0, r0, r1
    bx          lr          // return by branching to address in Link Register
    .fnend
