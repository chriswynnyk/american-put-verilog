###########################################################
##  ModelSimSE general compile script version 1.1
##  Copyright (c) Doulos June 2004, SD
###########################################################
##  Modified by Chris Wynnyk
##  2/9/2009
###########################################################

# Update file dependencies here.

set library_file_list {    
	work {		
		addrgen.v
		addrdecode.v
		amer_put.v
		amer_put_tb.v
		compute_vex.v
		eval_node.v
		fp_add_v1.v
		fp_compare_v1.v
		fp_exp.v
 		fp_mult_slow.v
 		fp_mult_v1.v
        fp_sub.v
        int_to_fp.v
        lpm_ff_v1.v
        mem_1k.v
        value_buffer.v
        value_membank.v
        vex.v
}}

set top_level work.amer_put_tb

###########################################################
# After sourcing the script from ModelSim for the
# first time use these commands to recompile.
###########################################################
proc r  {} {uplevel #0 source compile.tcl}
proc rr {} {global last_compile_time
            set last_compile_time 0
            r                            }
proc q  {} {quit -force                  }


###########################################################
# Prefer a fixed point font for the transcript
###########################################################
##set PrefMain(font) {Courier 10 roman normal}

###########################################################
# Compile out of date files
###########################################################
set time_now [clock seconds]
if [catch {set last_compile_time}] {
  set last_compile_time 0
}
foreach {library file_list} $library_file_list {
  vlib $library
  vmap work $library
  foreach file $file_list {
    if { $last_compile_time < [file mtime $file] } {
      if [regexp {.vhdl?$} $file] {
        vcom -93 $file
      } else {
        vlog $file
      }
      set last_compile_time 0
    }
  }
}
set last_compile_time $time_now

###########################################################
# Load the simulation
###########################################################
eval vsim $top_level -L lpm_ver -L altera_mf_ver
view wave
do wave.do
view structure
view signals
run 2000000ns
