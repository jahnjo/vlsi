*  Spice netlist and.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: and.pex.netlist
* Created: Mon Apr 15 15:43:41 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "and.pex.netlist.pex"
* 
* B	B
* A	A
* Y	Y
* GROUND	GROUND
* VDD	VDD
M0 3 N_A_M0_g N_2_M0_s N_GROUND_M0_b NMOS L=1.3e-07 W=1.2e-06
M1 N_GROUND_M1_d N_B_M1_g 3 N_GROUND_M0_b NMOS L=1.3e-07 W=1.2e-06
M2 N_Y_M2_d N_2_M2_g N_GROUND_M1_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M3 N_2_M3_d N_A_M3_g N_VDD_M3_s N_VDD_M3_b PMOS L=1.3e-07 W=1.35e-06
M4 N_VDD_M4_d N_B_M4_g N_2_M3_d N_VDD_M3_b PMOS L=1.3e-07 W=1.35e-06
M5 N_Y_M5_d N_2_M5_g N_VDD_M4_d N_VDD_M3_b PMOS L=1.3e-07 W=1.35e-06
*
.include "and.pex.netlist.AND.pxi"
*
.End
*
*
