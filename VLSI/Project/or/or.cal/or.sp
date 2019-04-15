*  Spice netlist or.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: or.pex.netlist
* Created: Mon Apr 15 15:54:33 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "or.pex.netlist.pex"
* 
* A	A
* B	B
* Y	Y
M0 N_3_M0_d N_B_M0_g N_2_M0_s N_2_M0_b NMOS L=1.3e-07 W=6e-07
M1 N_2_M1_d N_A_M1_g N_3_M0_d N_2_M0_b NMOS L=1.3e-07 W=6e-07
M2 N_Y_M2_d N_3_M2_g N_2_M1_d N_2_M0_b NMOS L=1.3e-07 W=6e-07
M3 N_1_M3_d N_3_M3_g N_Y_M3_s N_1_M3_b PMOS L=1.3e-07 W=1.35e-06
M4 5 N_A_M4_g N_1_M3_d N_1_M3_b PMOS L=1.3e-07 W=2.7e-06
M5 N_3_M5_d N_B_M5_g 5 N_1_M3_b PMOS L=1.3e-07 W=2.7e-06
*
.include "or.pex.netlist.OR.pxi"
*
.End
*
*
