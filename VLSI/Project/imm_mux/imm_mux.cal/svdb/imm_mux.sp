* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT Mux21 VDD A Y B ground S
** N=7 EP=6 IP=0 FDC=6
* PORT VDD VDD -95 111215 metal1
* PORT A A -1415 102195 metal3
* PORT Y Y -1100 103780 metal3
* PORT B B 270 102065 metal3
* PORT ground ground -95 93995 metal1
* PORT S S 935 102925 metal3
M0 Y 7 A ground nmos L=1.3e-07 W=6e-07 $X=-1155 $Y=95135 $D=19
M1 B S Y ground nmos L=1.3e-07 W=6e-07 $X=-645 $Y=95135 $D=19
M2 7 S ground ground nmos L=1.3e-07 W=6e-07 $X=835 $Y=95135 $D=19
M3 Y S A VDD pmos L=1.3e-07 W=1.35e-06 $X=-1165 $Y=108725 $D=25
M4 B 7 Y VDD pmos L=1.3e-07 W=1.35e-06 $X=-655 $Y=108725 $D=25
M5 7 S VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=825 $Y=108725 $D=25
.ENDS
***************************************
.SUBCKT imm_mux VDD ground result_3 busW_result_3 imm_3 result_2 busW_result_2 imm_2 result_0 input_select busW_result_0 imm_0 result_1 busW_result_1 imm_1
** N=28 EP=15 IP=24 FDC=24
* PORT VDD VDD 5250 160305 metal1
* PORT ground ground 5250 143085 metal1
* PORT result_3 result_3 -2815 149995 metal7
* PORT busW_result_3 busW_result_3 -2515 154490 metal7
* PORT imm_3 imm_3 -1135 149935 metal7
* PORT result_2 result_2 1685 149995 metal7
* PORT busW_result_2 busW_result_2 1995 154380 metal7
* PORT imm_2 imm_2 3370 149900 metal7
* PORT result_0 result_0 6180 149840 metal7
* PORT input_select input_select 6405 152010 metal7
* PORT busW_result_0 busW_result_0 6495 154475 metal7
* PORT imm_0 imm_0 7860 149845 metal7
* PORT result_1 result_1 10680 149910 metal7
* PORT busW_result_1 busW_result_1 10995 154550 metal7
* PORT imm_1 imm_1 12365 149865 metal7
X0 VDD result_3 busW_result_3 imm_3 ground input_select Mux21 $T=-1405 49090 0 0 $X=-4010 $Y=142255
X1 VDD result_2 busW_result_2 imm_2 ground input_select Mux21 $T=3095 49090 0 0 $X=490 $Y=142255
X2 VDD result_0 busW_result_0 imm_0 ground input_select Mux21 $T=7595 49090 0 0 $X=4990 $Y=142255
X3 VDD result_1 busW_result_1 imm_1 ground input_select Mux21 $T=12095 49090 0 0 $X=9490 $Y=142255
.ENDS
***************************************
