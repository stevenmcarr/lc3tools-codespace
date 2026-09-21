; hello.asm - print a greeting and halt
        .ORIG x3000
        LEA   R0, MSG      ; R0 <- address of the string
        PUTS               ; print it
        HALT
MSG     .STRINGZ "Hello, LC-3!"
        .END
