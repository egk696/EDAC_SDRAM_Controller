/*
 * main.c
 *
 *  Created on: 8 Ιουλ 2017
 *      Author: Lefteris Kyriakakis
 */
#include<stdio.h>
#include"x_sdram_ctrl_tmr_regs.h"
//#include "xgpio.h"

void dummy_delay(int n){
	volatile unsigned i = 0;
	for (i = 0; i<n ; i++){
		continue;//delay
	}
}

static void print_scrubbing_status(){
	volatile int state = SDRAM_CTRL_TMR_ReadReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SCRUBBING_OFFSET);
	if (state == 1){
		xil_printf("ENABLED(%x)\r\n", state);
	} else {
		xil_printf("DISABLED(%x)\r\n", state);
	}

}

int getSEUCount(){
	return SDRAM_CTRL_TMR_ReadReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SEU_COUNTER_OFFSET);
}

void resetSEUCount(){
	SDRAM_CTRL_TMR_WriteReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SEU_COUNTER_OFFSET, 0x0); //value does not actual matter, counter is reset on write command
}

static void monitor_states(int samples){
	volatile unsigned i = 0;
	for(i=0;i<samples;i++){
		volatile u16 state = (u16)SDRAM_CTRL_TMR_ReadReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_CTRL_STATE_OFFSET);
		xil_printf("--SDRAM_State\t=%d - %s\r\n", state & CTRL_STATE_MASK, convert_state_to_str((state & CTRL_STATE_MASK)>>2));
		dummy_delay(333);
		xil_printf("--SDRAM Mode\t=%d - %s\r\n", state & CTRL_MODE_MASK, convert_scrub_state_to_str(state & CTRL_MODE_MASK));
		dummy_delay(500);
	}
}

void toggle_scrubbing_test_loop(int n, int delay){
	volatile unsigned i = 0;
	for (i=0;i<n;i++){
		xil_printf("Enabling scrubbing...\r\n");
		SDRAM_CTRL_TMR_WriteReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SCRUBBING_OFFSET, 0x1);
		dummy_delay(delay);
		print_scrubbing_status();
		dummy_delay(delay);
		xil_printf("Disabling scrubbing...\r\n");
		SDRAM_CTRL_TMR_WriteReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SCRUBBING_OFFSET, 0x0);
		dummy_delay(delay);
		print_scrubbing_status();
		dummy_delay(delay);
	}
}

void write_to_read_test_loop(int n, int delay, int addr_range){
	volatile unsigned i = 0;
	volatile u32 *LocalAddr;
	volatile s16 temp;
	volatile s16 mockup_data = 0x0;
	unsigned test_errors = 0;
	for (i=0; i<n; i++){
		xil_printf("Write TMR memory...\r\n");
		for(i=XPAR_AXI_AMM_BRIDGE_0_BASEADDR; i < XPAR_AXI_AMM_BRIDGE_0_BASEADDR+addr_range; i++){
			LocalAddr = (volatile u32 *)(i);
			*LocalAddr = mockup_data;
			mockup_data++;
		}
		mockup_data = 0;
		dummy_delay(delay);
		xil_printf("Read & Check TMR memory...\r\n");
		for(i=XPAR_AXI_AMM_BRIDGE_0_BASEADDR; i < XPAR_AXI_AMM_BRIDGE_0_BASEADDR+addr_range; i++){
			LocalAddr = (volatile u32 *)(i);
			temp = (s16)*LocalAddr;
			if (temp != (s16) mockup_data){
				xil_printf("read error value in address %p (value=%x)\r\n", (u32*) i, (s16) temp);
				test_errors++;
			}
			mockup_data++;
		}
	}
	if (test_errors == 0){
		xil_printf("Test Successful");
	} else {
		xil_printf("Test Failed (errors=%d)\r\n", test_errors);
	}
}

int main(){
	const int addr_range = 4;
	volatile unsigned i = XPAR_AXI_AMM_BRIDGE_0_BASEADDR;
	volatile u32 *LocalAddr;
	volatile s16 temp;
	volatile s16 mockup_data = 0x0;
	unsigned test_errors = 0;
	xil_printf("SDRAM Test started:\r\n\n");

	xil_printf("Current SEU_Count = %d\r\n", getSEUCount());

	xil_printf("Resetting SEU_Counter...");
	resetSEUCount();

	xil_printf("SEU_Count = %d\r\n", getSEUCount());

	xil_printf("Disabling scrubbing...\r\n");
	SDRAM_CTRL_TMR_WriteReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SCRUBBING_OFFSET, 0x0);
	print_scrubbing_status();

	xil_printf("Write TMR memory...\r\n");
	for(i=XPAR_AXI_AMM_BRIDGE_0_BASEADDR; i < XPAR_AXI_AMM_BRIDGE_0_BASEADDR+addr_range; i++){
		LocalAddr = (volatile u32 *)(i);
		*LocalAddr = mockup_data;
		mockup_data++;
	}
	mockup_data = 0;
	xil_printf("Read & Check TMR memory...\r\n");
	for(i=XPAR_AXI_AMM_BRIDGE_0_BASEADDR; i < XPAR_AXI_AMM_BRIDGE_0_BASEADDR+addr_range; i++){
		LocalAddr = (volatile u32 *)(i);
		temp = (s16)*LocalAddr;
		if (temp != (s16) mockup_data){
			xil_printf("read error value in address %p (value=%x)\r\n", (u32*) i, (s16) temp);
			test_errors++;
		}
		mockup_data++;
	}

	xil_printf("Enabling scrubbing...\r\n");
	SDRAM_CTRL_TMR_WriteReg(XPAR_AXI_AMM_BRIDGE_0_BASEADDR, REG_SCRUBBING_OFFSET, 0x1);
	print_scrubbing_status();

	if (test_errors == 0){
		xil_printf("Test Successful");
	} else {
		xil_printf("Test Failed (errors=%d)\r\n", test_errors);
	}

//	toggle_scrubbing_test_loop(1, 250);
//	write_to_read_test_loop(2, 250, 128);

	xil_printf("\r\nSDRAM Test ended.\r\n");
	return 0;
}


