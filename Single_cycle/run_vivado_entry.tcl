# Wrapper to suppress Tcl command trace from the main simulation script.
source -notrace [file join [file dirname [info script]] run_vivado_sim.tcl]
