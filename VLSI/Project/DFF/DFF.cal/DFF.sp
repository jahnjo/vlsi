*  Spice netlist DFF.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: DFF.pex.netlist
* Created: Wed Mar 20 13:30:55 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "DFF.pex.netlist.pex"
* 
* CLK	CLK
* D	D
* GROUND	GROUND
* Q	Q
* VDD	VDD
M0 N_GROUND_M0_d N_8_M0_g N_Q_M0_s N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M1 N_4_M1_d N_7_M1_g N_GROUND_M0_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M2 5 N_12_M2_g N_4_M1_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M3 N_GROUND_M3_d N_D_M3_g 5 N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M4 6 N_11_M4_g N_GROUND_M3_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M5 N_7_M5_d N_12_M5_g 6 N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M6 N_GROUND_M6_d N_4_M6_g N_7_M5_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M7 N_8_M7_d N_Q_M7_g N_GROUND_M6_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M8 9 N_CLK_M8_g N_8_M8_s N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M9 N_GROUND_M9_d N_7_M9_g 9 N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M10 10 N_4_M10_g N_GROUND_M9_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M11 N_Q_M11_d N_CLK_M11_g 10 N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M12 N_GROUND_M12_d N_D_M12_g N_11_M12_s N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M13 N_12_M13_d N_CLK_M13_g N_GROUND_M12_d N_GROUND_M0_b NMOS L=1.3e-07 W=6e-07
M14 N_VDD_M14_d N_D_M14_g N_11_M14_s N_VDD_M14_b PMOS L=1.3e-07 W=6e-07
M15 N_12_M15_d N_CLK_M15_g N_VDD_M14_d N_VDD_M14_b PMOS L=1.3e-07 W=6e-07
M16 N_VDD_M16_d N_4_M16_g N_7_M16_s N_VDD_M14_b PMOS L=1.3e-07 W=6e-07
M17 N_4_M17_d N_7_M17_g N_VDD_M16_d N_VDD_M14_b PMOS L=1.3e-07 W=6e-07
M18 N_VDD_M18_d N_8_M18_g N_Q_M18_s N_VDD_M14_b PMOS L=1.3e-07 W=6e-07
M19 N_8_M19_d N_Q_M19_g N_VDD_M18_d N_VDD_M14_b PMOS L=1.3e-07 W=6e-07
*
.include "DFF.pex.netlist.DFF.pxi"
*
.End
*
*
