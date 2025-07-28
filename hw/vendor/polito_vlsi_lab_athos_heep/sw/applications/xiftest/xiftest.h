#define XIFTEST asm volatile ( \ 
                              ".insn u 0x77, x30, 1738\r\n" \ 
                              ".insn u 0x77, x30, 8906\r\n" \ 
                              ".insn u 0x77, x30, 17610\r\n" \ 
                              ".insn u 0x77, x30, 26826\r\n" \ 
                              ".insn u 0x77, x30, 34506\r\n" \ 
                              ".insn u 0x77, x30, 42698\r\n" \ 
                              ".insn u 0x77, x30, 49866\r\n" \ 
                              ".insn u 0x77, x30, 58570\r\n" \ 
                              ".insn u 0x77, x30, 67786\r\n" \ 
                              ".insn u 0x77, x30, 75466\r\n" \ 
                              ".insn u 0x77, x30, 83658\r\n" \ 
                              ".insn u 0x77, x30, 90826\r\n" \ 
                              ".insn u 0x77, x30, 99530\r\n" \ 
                              ".insn u 0x77, x30, 108746\r\n" \ 
                              ".insn u 0x77, x30, 116426\r\n" \ 
                              ".insn u 0x77, x30, 124618\r\n" \ 
                              );