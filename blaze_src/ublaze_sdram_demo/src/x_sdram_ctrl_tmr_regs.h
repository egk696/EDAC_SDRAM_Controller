/*
 * x_sdram_ctrl_tmr_regs.h
 *
 *  Created on: 18 Jan 2017
 *      Author: Lefteris Kyriakakis
 */

#ifndef SRC_X_SDRAM_CTRL_TMR_REGS_H_
#define SRC_X_SDRAM_CTRL_TMR_REGS_H_

#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"
#include "xparameters.h"

#define TMR_COLS    128
#define RAM_COLS    512
#define RAM_ROWS    8192
#define RAM_BANKS   4

#define CTRL_MODE_MASK   0x00000003
#define CTRL_STATE_MASK  0xFFFFFFFC
#define ADDRESS_COUNT	(RAM_COLS/4*RAM_ROWS*RAM_BANKS)
#define REGS_OFFSET		ADDRESS_COUNT*2

#define TMRSAFE_ADDRESS_SPAN(BaseOffset)	(BaseOffset+ADDRESS_COUNT)
#define UNSAFE_ADDRESS_START(BaseOffset)	(TMRSAFE_ADDRESS_SPAN(BaseOffset)+ADDRESS_COUNT)
#define UNSAFE_ADDRESS_SPAN(BaseOffset)		(UNSAFE_ADDRESS_START(BaseOffset)+ADDRESS_COUNT)
#define REG_SEU_COUNTER_OFFSET		((REGS_OFFSET+1))
#define REG_ERR_INJECTION_OFFSET    ((REGS_OFFSET+2))
#define REG_SCRUBBING_OFFSET        ((REGS_OFFSET+4))
#define REG_CTRL_STATE_OFFSET       ((REGS_OFFSET+8))

#define SDRAM_CTRL_TMR_WriteReg(BaseOffset, RegOffset, Data) Xil_Out32((BaseOffset) + (RegOffset), (u32)(Data))
#define SDRAM_CTRL_TMR_ReadReg(BaseOffset, RegOffset) Xil_In32((BaseOffset) + (RegOffset))

#define SDRAM_ADDRESS_CALC(base, bank, row, col)  (base+(((bank << 23) + (row << 10) + col)*4))


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

#endif /* SRC_X_SDRAM_CTRL_TMR_REGS_H_ */
