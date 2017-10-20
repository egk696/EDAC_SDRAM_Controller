/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#define CC_CLANG

#include "iki.h"
#ifdef __GNUC__
#include <stdlib.h>
#else
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#define CC_CLANG

#include "iki.h"
#ifdef __GNUC__
#include <stdlib.h>
#else
#define alloca _alloca
#endif
void relocate(char *dp) _asm("_relocate");

void relocate(char *dp)
{
	_iki_relocate(dp, "xsim.dir/DemoSDRAM_wrapper_func_synth/xsim.reloc", "xsim.dir/DemoSDRAM_wrapper_func_synth/xsimk.exe", (void*)relocate);
	_iki_vhdl_file_variable_register(dp + 16369544);
	_iki_vhdl_file_variable_register(dp + 16369600);
	_iki_vhdl_access_variable_register(dp + 16717576);
	_iki_vhdl_access_variable_register(dp + 16717640);
	_iki_vhdl_access_variable_register(dp + 16718216);
	_iki_vhdl_access_variable_register(dp + 16718408);
	_iki_vhdl_access_variable_register(dp + 16720216);
	_iki_vhdl_access_variable_register(dp + 16720384);
	_iki_vhdl_access_variable_register(dp + 16721016);
	_iki_vhdl_access_variable_register(dp + 17187056);
	_iki_vhdl_access_variable_register(dp + 17401960);
	_iki_vhdl_access_variable_register(dp + 17620664);
	_iki_vhdl_access_variable_register(dp + 17835568);
	_iki_vhdl_access_variable_register(dp + 18054272);
	_iki_vhdl_access_variable_register(dp + 18269176);
	_iki_vhdl_access_variable_register(dp + 18487880);
	_iki_vhdl_access_variable_register(dp + 18702784);
	_iki_vhdl_access_variable_register(dp + 18921488);
	_iki_vhdl_access_variable_register(dp + 19136392);
	_iki_vhdl_access_variable_register(dp + 19355096);
	_iki_vhdl_access_variable_register(dp + 19569336);
	_iki_vhdl_access_variable_register(dp + 19784240);
	_iki_vhdl_access_variable_register(dp + 20002944);
	_iki_vhdl_access_variable_register(dp + 20217848);
	_iki_vhdl_access_variable_register(dp + 20436552);
	_iki_vhdl_access_variable_register(dp + 20651456);
	_iki_vhdl_access_variable_register(dp + 20870160);
	_iki_vhdl_access_variable_register(dp + 21085064);
	_iki_vhdl_access_variable_register(dp + 21303664);
	_iki_vhdl_access_variable_register(dp + 21518408);
	_iki_vhdl_access_variable_register(dp + 21737280);
	_iki_vhdl_access_variable_register(dp + 21955984);
	_iki_vhdl_access_variable_register(dp + 22170888);
	_iki_vhdl_access_variable_register(dp + 22389592);
	_iki_vhdl_access_variable_register(dp + 22604496);
	_iki_vhdl_access_variable_register(dp + 22823200);
	_iki_vhdl_access_variable_register(dp + 23038104);
	_iki_vhdl_access_variable_register(dp + 23256808);
	_iki_vhdl_access_variable_register(dp + 32356752);
	_iki_vhdl_access_variable_register(dp + 32357088);
	_iki_vhdl_access_variable_register(dp + 32428840);
	_iki_vhdl_access_variable_register(dp + 32429176);
	_iki_vhdl_access_variable_register(dp + 32962568);
	_iki_vhdl_access_variable_register(dp + 32962904);
	_iki_vhdl_access_variable_register(dp + 33009424);
	_iki_vhdl_access_variable_register(dp + 33009760);
	_iki_vhdl_access_variable_register(dp + 33051856);
	_iki_vhdl_access_variable_register(dp + 33052192);
	_iki_vhdl_access_variable_register(dp + 37505328);
	_iki_vhdl_access_variable_register(dp + 37719920);
	_iki_vhdl_access_variable_register(dp + 37934512);
	_iki_vhdl_access_variable_register(dp + 38149104);


	/*Populate the transaction function pointer field in the whole net structure */
}
void sensitize(char *dp) _asm("_sensitize");

void sensitize(char *dp)
{
	_iki_sensitize(dp, "xsim.dir/DemoSDRAM_wrapper_func_synth/xsim.reloc");
}
void simulate(char *dp) _asm("_simulate");

void simulate(char *dp)
{
	_iki_schedule_processes_at_time_zero(dp, "xsim.dir/DemoSDRAM_wrapper_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	_iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#define CC_CLANG
#include "iki_bridge.h"
void relocate(char *dp) _asm("_relocate");
void sensitize(char *dp) _asm("_sensitize");
void simulate(char *dp) _asm("_simulate");
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int _main(int argc, char **argv)
{
_iki_heap_initialize("ms", "isimmm", 0, 10485760) ;
_iki_set_sv_type_file_path_name("xsim.dir/DemoSDRAM_wrapper_func_synth/xsim.svtype");
    void* design_handle = _iki_create_design("xsim.dir/DemoSDRAM_wrapper_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, _isimBridge_getWdbWriter(), 0, argc, argv);
     _iki_set_rc_trial_count(7);
    (void* ) design_handle;
    return _iki_simulate_design();
}
