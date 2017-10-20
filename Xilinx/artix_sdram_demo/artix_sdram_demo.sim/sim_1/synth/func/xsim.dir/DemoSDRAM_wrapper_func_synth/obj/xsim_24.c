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
	_iki_vhdl_file_variable_register(dp + 14930720);
	_iki_vhdl_file_variable_register(dp + 14930776);
	_iki_vhdl_access_variable_register(dp + 15278752);
	_iki_vhdl_access_variable_register(dp + 15278816);
	_iki_vhdl_access_variable_register(dp + 15279392);
	_iki_vhdl_access_variable_register(dp + 15279584);
	_iki_vhdl_access_variable_register(dp + 15281392);
	_iki_vhdl_access_variable_register(dp + 15281560);
	_iki_vhdl_access_variable_register(dp + 15282192);
	_iki_vhdl_access_variable_register(dp + 15727584);
	_iki_vhdl_access_variable_register(dp + 15941552);
	_iki_vhdl_access_variable_register(dp + 16155520);
	_iki_vhdl_access_variable_register(dp + 16370448);
	_iki_vhdl_access_variable_register(dp + 25396168);
	_iki_vhdl_access_variable_register(dp + 25396504);
	_iki_vhdl_access_variable_register(dp + 25468256);
	_iki_vhdl_access_variable_register(dp + 25468592);
	_iki_vhdl_access_variable_register(dp + 26001984);
	_iki_vhdl_access_variable_register(dp + 26002320);
	_iki_vhdl_access_variable_register(dp + 26048840);
	_iki_vhdl_access_variable_register(dp + 26049176);
	_iki_vhdl_access_variable_register(dp + 26091272);
	_iki_vhdl_access_variable_register(dp + 26091608);
	_iki_vhdl_access_variable_register(dp + 30544744);
	_iki_vhdl_access_variable_register(dp + 30759336);
	_iki_vhdl_access_variable_register(dp + 30973928);
	_iki_vhdl_access_variable_register(dp + 31188520);


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
