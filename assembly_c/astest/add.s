// http://www.keil.com/support/man/docs/armclang_intro/armclang_intro_lmi1470147220260.htm

    .globl      add
    .p2align    2
    .type       add,%function

add:
    .fnstart
    add         r0, r0, r1
    bx          lr          // return by branching to address in Link Register
    .fnend
