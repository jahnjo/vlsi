*  Spice netlist and3.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: and3.pex.netlist
* Created: Mon Apr 15 16:27:06 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "and3.pex.netlist.pex"
* 
* Y	Y
* C	C
* B	B
* A	A
* GROUND	GROUND
* VDD	VDD
mX0_M0 X0_7 N_A_X0_M0_g N_X0_6_X0_M0_s N_GROUND_X0_M0_b NMOS L=1.3e-07 W=1.2e-06
mX0_M1 N_GROUND_X0_M1_d N_B_X0_M1_g X0_7 N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=1.2e-06
mX0_M2 N_5_X0_M2_d N_X0_6_X0_M2_g N_GROUND_X0_M1_d N_GROUND_X0_M0_b NMOS
+ L=1.3e-07 W=6e-07
mX0_M3 N_X0_6_X0_M3_d N_A_X0_M3_g N_VDD_X0_M3_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX0_M4 N_VDD_X0_M4_d N_B_X0_M4_g N_X0_6_X0_M3_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX0_M5 N_5_X0_M5_d N_X0_6_X0_M5_g N_VDD_X0_M4_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX1_M0 X1_7 N_5_X1_M0_g N_X1_6_X1_M0_s N_GROUND_X0_M0_b NMOS L=1.3e-07 W=1.2e-06
mX1_M1 N_GROUND_X1_M1_d N_C_X1_M1_g X1_7 N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=1.2e-06
mX1_M2 N_Y_X1_M2_d N_X1_6_X1_M2_g N_GROUND_X1_M1_d N_GROUND_X0_M0_b NMOS
+ L=1.3e-07 W=6e-07
mX1_M3 N_X1_6_X1_M3_d N_5_X1_M3_g N_VDD_X1_M3_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX1_M4 N_VDD_X1_M4_d N_C_X1_M4_g N_X1_6_X1_M3_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX1_M5 N_Y_X1_M5_d N_X1_6_X1_M5_g N_VDD_X1_M4_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
*
.include "and3.pex.netlist.AND3.pxi"
*
.End
*
*
