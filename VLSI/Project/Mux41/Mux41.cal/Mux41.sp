*  Spice netlist Mux41.pex.netlist transformed for AMS-Sim
*    additions

.LIB $MGC_DESIGN_KIT/models/lib.eldo TT

Vvdd VDD 0 2.5
Vgnd ground 0 0

*  Here begins the original spice file

* File: Mux41.pex.netlist
* Created: Mon Apr 15 16:03:44 2019
* Program "Calibre xRC"
* Version "v2012.2_36.25"
* 
.global VDD VSS 
.include "Mux41.pex.netlist.pex"
* 
* S0	S0
* IN2	IN2
* IN3	IN3
* S1	S1
* OUT1	OUT1
* IN1	IN1
* IN0	IN0
* GROUND	GROUND
* VDD	VDD
mX0_M0 N_5_X0_M0_d N_X0_7_X0_M0_g N_IN0_X0_M0_s N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=6e-07
mX0_M1 N_IN1_X0_M1_d N_S0_X0_M1_g N_5_X0_M0_d N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=6e-07
mX0_M2 N_X0_7_X0_M2_d N_S0_X0_M2_g N_GROUND_X0_M2_s N_GROUND_X0_M0_b NMOS
+ L=1.3e-07 W=6e-07
mX0_M3 N_5_X0_M3_d N_S0_X0_M3_g N_IN0_X0_M3_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX0_M4 N_IN1_X0_M4_d N_X0_7_X0_M4_g N_5_X0_M3_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX0_M5 N_X0_7_X0_M5_d N_S0_X0_M5_g N_VDD_X0_M5_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX1_M0 N_OUT1_X1_M0_d N_X1_7_X1_M0_g N_5_X1_M0_s N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=6e-07
mX1_M1 N_8_X1_M1_d N_S1_X1_M1_g N_OUT1_X1_M0_d N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=6e-07
mX1_M2 N_X1_7_X1_M2_d N_S1_X1_M2_g N_GROUND_X1_M2_s N_GROUND_X0_M0_b NMOS
+ L=1.3e-07 W=6e-07
mX1_M3 N_OUT1_X1_M3_d N_S1_X1_M3_g N_5_X1_M3_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX1_M4 N_8_X1_M4_d N_X1_7_X1_M4_g N_OUT1_X1_M3_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX1_M5 N_X1_7_X1_M5_d N_S1_X1_M5_g N_VDD_X1_M5_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX2_M0 N_8_X2_M0_d N_X2_7_X2_M0_g N_IN2_X2_M0_s N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=6e-07
mX2_M1 N_IN3_X2_M1_d N_S0_X2_M1_g N_8_X2_M0_d N_GROUND_X0_M0_b NMOS L=1.3e-07
+ W=6e-07
mX2_M2 N_X2_7_X2_M2_d N_S0_X2_M2_g N_GROUND_X2_M2_s N_GROUND_X0_M0_b NMOS
+ L=1.3e-07 W=6e-07
mX2_M3 N_8_X2_M3_d N_S0_X2_M3_g N_IN2_X2_M3_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX2_M4 N_IN3_X2_M4_d N_X2_7_X2_M4_g N_8_X2_M3_d N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
mX2_M5 N_X2_7_X2_M5_d N_S0_X2_M5_g N_VDD_X2_M5_s N_VDD_X0_M3_b PMOS L=1.3e-07
+ W=1.35e-06
*
.include "Mux41.pex.netlist.MUX41.pxi"
*
.End
*
*
