*  Spice netlist Mux21.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: Mux21.pex.netlist
* Created: Mon Apr 15 16:16:27 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "Mux21.pex.netlist.pex"
* 
* S	S
* GROUND	GROUND
* B	B
* Y	Y
* A	A
* VDD	VDD
M0 N_Y_M0_d N_6_M0_g N_A_M0_s N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M1 N_B_M1_d N_S_M1_g N_Y_M0_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M2 N_6_M2_d N_S_M2_g N_GROUND_M2_s N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M3 N_Y_M3_d N_S_M3_g N_A_M3_s N_VDD_M3_b PMOS L=1.3e-07 W=1.35e-06
M4 N_B_M4_d N_6_M4_g N_Y_M3_d N_VDD_M3_b PMOS L=1.3e-07 W=1.35e-06
M5 N_6_M5_d N_S_M5_g N_VDD_M5_s N_VDD_M3_b PMOS L=1.3e-07 W=1.35e-06
*
.include "Mux21.pex.netlist.MUX21.pxi"
*
.End
*
*
