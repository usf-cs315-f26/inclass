#include <stdio.h>
#include <stdint.h>

#define NREGS 32
#define A0 10
#define A1 11
#define A2 12

int add2_s(int, int);

struct rv_state {
    uint64_t regs[NREGS];
    uint64_t pc;
};

void init_state(struct rv_state *ps, uint32_t *func, uint64_t a0, uint64_t a1, uint64_t a2) {
    for (int i = 0; i < NREGS; i++) {
        ps->regs[i] = 0;
    }

    ps->regs[A0] = a0;
    ps->regs[A1] = a1;
    ps->regs[A2] = a2;
    
    ps->pc = (uint64_t) func;
}

void run_r_type(struct rv_state *ps, uint32_t iw) {
    uint32_t funct3 = (iw >> 12) & 0b111;
    uint32_t funct7 = (iw >> 25) & 0x7F;
    uint32_t rd = (iw >> 7) & 0x1F;
    uint32_t rs1 = (iw >> 15) & 0x1F;
    uint32_t rs2 = (iw >> 20) & 0x1F;

    if (funct3 == 0 && funct7 == 0) {
        // add instruction
        ps->regs[rd] = ps->regs[rs1] + ps->regs[rs2];
    }
}

void run_one(struct rv_state *ps, uint32_t iw) {
    uint32_t opcode = iw & 0x7F;   // mask with seven ones

    switch (opcode) {
        case 0b0110011:
            run_r_type(ps, iw);
            break;
        default:
            printf("unknown opcode: %x\n", opcode);
    }  
}

void run(struct rv_state *ps) {
    // loop

/*
    uint32_t *piw = (uint32_t*) ps->pc;
    uint32_t iw = *piw;
*/
    uint32_t iw = *(uint32_t*) ps->pc;
    run_one(ps, iw);
}

int main(int argc, char **argv) {
    struct rv_state state;
    uint64_t a0 = 0;
    uint64_t a1 = 1;
    uint64_t a2 = 2;
    init_state(&state, (uint32_t*) &add2_s, a0, a1, a2);

    run(&state);
}
