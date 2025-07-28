import sys

janus_op = {"NOP" : 0,
"SUM" : 1,
"DIFF" :2 ,
"MUL" : 3,
"MAC" : 4,
"FMA" : 5,
"BYPASS_0" : 6,
"BYPASS_1" : 7,
"BYPASS_2" : 8,}

direction = {
"LEFT" : 0,
"DOWN" : 1,
"RIGHT" : 2,
"UP" : 3,
"INPUT" : 4,
}

def to_bin(n, bits):
    return ''.join(str(1 & int(n) >> i) for i in range(bits)[::-1])

def to_int(s):
    return int(s, 2)

filename = sys.argv[1]
immediates = []

name = filename.split("/")[-1].split(".")[0]

with open(filename, "r") as infile:
    for line in infile:
        id, op, in0, in1, in2 = line.split()
        conf = to_bin(int(id), 7) + to_bin(janus_op[op], 4) + to_bin(direction[in0], 3) + to_bin(direction[in1], 3) + to_bin(direction[in2], 3)
        immediates.append(to_int(conf))

first_row = f"#define {name.upper()} asm volatile ( \\ \n"
tabs = len(first_row)-4

c_file_content = first_row

for imm in immediates:
    c_file_content += f'{" "*tabs}\".insn u 0x47, x30, {imm}\\r\\n\" \\ \n'
    
    
    
c_file_content +=f'{" "*tabs});'

with open(f'{filename.replace("conf", "h")}', "w") as c_file:
    c_file.write(c_file_content)