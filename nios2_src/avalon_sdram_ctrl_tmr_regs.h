#ifndef AVALON_SDRAM_CTRL_TMR_REGS_H_
#define AVALON_SDRAM_CTRL_TMR_REGS_H_
#include <io.h>
#include "system.h"

#define RAM_COLS    1024
#define RAM_ROWS    8192
#define RAM_BANKS   4
#define TMR_COLS    768

#define MODE_MASK   0x00000003
#define STATE_MASK  0xFFFFFFFC
#define ADDRESS_COUNT           0x800000

#define TMRSAFE_ADDRESS_START       (SEUD_SDRAM_CTRL_AVALON_0_BASE)
#define TMRSAFE_ADDRESS_SPAN        (TMRSAFE_ADDRESS_START+ADDRESS_COUNT*4)
#define UNSAFE_ADDRESS_START        (SEUD_SDRAM_CTRL_AVALON_0_BASE+ADDRESS_COUNT*4)
#define UNSAFE_ADDRESS_SPAN         (UNSAFE_ADDRESS_START+ADDRESS_COUNT*4)
#define SEU_COUNTER_OFFSET          0x01000001 //0010_0000_0000_0000_0000_0000_0000 when 26th bit is enabled error injecting is enabled
#define EN_ERR_INJECTION_OFFSET     0x01000002
#define EN_SCRUBBING_OFFSET         0x01000004
#define CTRL_STATE_OFFSET           0x01000008

#define SDRAM_RESET_SEU_COUNTER(base)   IOWR(base, SEU_COUNTER_OFFSET, 0x0)
#define SDRAM_READ_SEU_COUNTER(base)    IORD(base, SEU_COUNTER_OFFSET)

#define SDRAM_ENABLE_ERRINJ(base)       IOWR(base, EN_ERR_INJECTION_OFFSET, 0x1)
#define SDRAM_DISABLE_ERRINJ(base)      IOWR(base, EN_ERR_INJECTION_OFFSET, 0x0)
#define SDRAM_CHK_ERRINJ(base)          IORD(base, EN_ERR_INJECTION_OFFSET)

#define SDRAM_ENABLE_SCRUB(base)        IOWR(base, EN_SCRUBBING_OFFSET, 0x1)
#define SDRAM_DISABLE_SCRUB(base)       IOWR(base, EN_SCRUBBING_OFFSET, 0x0)
#define SDRAM_CHK_SCRUB(base)           IORD(base, EN_SCRUBBING_OFFSET)

#define SDRAM_CTRL_STATUS(base)         IORD(base, CTRL_STATE_OFFSET)
#define SDRAM_ADDRESS_TMR(addr)         (addr - addr % 3)
#define SDRAM_ADDRESS_CALC(bank, row, col)  (((bank << 23) + (row << 10) + col)*4)

char* convert_state_to_str(unsigned int state){
//--Controller states.
//type fsm_state_type is
//(
//    ST_BOOTING, 
//    ST_INIT_NOP, 
//    ST_REF1, 
//    ST_REF1_NOP, 
//    ST_REF2, 
//    ST_REF2_NOP, 
//    ST_PRECHARGE, 
//    ST_MRS, 
//    ST_MRS_NOP, 
//    ST_EMRS, 
//    ST_EMRS_NOP, 
//    ST_IDLE, 
//    ST_ACTIVATE, 
//    ST_ACT_TO_RW,
//    ST_SINGLE_READ,
//    ST_SINGLE_WRITE,
//    ST_TMR_READ_0,
//    ST_TMR_READ_1,
//    ST_TMR_READ_2, 
//    ST_TMR_CAS_0,
//    ST_TMR_CAS_1,
//    ST_TMR_CAS_2,
//    ST_TMR_WRITE_0,
//    ST_TMR_WRITE_1,
//    ST_TMR_WRITE_2, 
//    ST_WRITE_NOP,
//    ST_RESET
//);
    switch(state){
        case 1:         return "ST_BOOTING";
        case 2:         return "ST_INIT_NOP";
        case 4:         return "ST_REF1";
        case 8:         return "ST_REF1_NOP";
        case 16:        return "ST_REF2";
        case 32:        return "ST_REF2_NOP";
        case 64:        return "ST_PRECHARGE";
        case 128:       return "ST_MRS";
        case 256:       return "ST_MRS_NOP";
        case 512:       return "ST_EMRS";
        case 1024:      return "ST_EMRS_NOP";
        case 2048:      return "ST_IDLE";
        case 4096:      return "ST_ACTIVATE";
        case 8192:      return "ST_ACT_TO_RW";
        case 16348:     return "ST_SINGLE_READ";
        case 32768:     return "ST_SINGLE_WRITE";
        case 65536:     return "ST_TMR_READ_0";
        case 131072:    return "ST_TMR_READ_1";
        case 262144:    return "ST_TMR_READ_2";
        case 524288:    return "ST_TMR_CAS_0";
        case 1048576:   return "ST_TMR_CAS_1";
        case 2097152:   return "ST_TMR_CAS_2";
        case 4194304:   return "ST_TMR_WRITE_0";
        case 8388608:   return "ST_TMR_WRITE_1";
        case 16777216:   return "ST_TMR_WRITE_2";
        case 33554432:   return "ST_WRITE_NOP";
        case 67108864:   return "ST_RESET";
        default: return "ST_UNKNOWN";
    }
}

char* convert_scrub_state_to_str(unsigned int state){
    switch(state){
        case 0: return "NORMAL";
        case 1: return "SCRUBBING";
        case 2: return "HEALING";
        default: return "UNKNWON";
    }
}

#endif /*AVALON_SDRAM_CTRL_TMR_REGS_H_*/
