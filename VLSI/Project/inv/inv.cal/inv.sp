*  Spice netlist inv.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: inv.pex.netlist
* Created: Mon Apr 15 16:30:49 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "inv.pex.netlist.pex"
* 
* IN	IN
* OUT	OUT
* GROUND	GROUND
* VDD	VDD
M0 N_OUT_M0_d N_IN_M0_g N_GROUND_M0_s N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M1 N_OUT_M1_d N_IN_M1_g N_VDD_M1_s N_VDD_M1_b PMOS L=1.3e-07 W=1.35e-06
*
.include "inv.pex.netlist.INV.pxi"
*
.End
*
*
