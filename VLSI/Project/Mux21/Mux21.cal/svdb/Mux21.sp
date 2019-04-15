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
M0 Y 6 A ground nmos L=1.3e-07 W=6e-07 $X=-1155 $Y=95135 $D=19
M1 B S Y ground nmos L=1.3e-07 W=6e-07 $X=-645 $Y=95135 $D=19
M2 6 S ground ground nmos L=1.3e-07 W=6e-07 $X=835 $Y=95135 $D=19
M3 Y S A VDD pmos L=1.3e-07 W=1.35e-06 $X=-1165 $Y=108725 $D=25
M4 B 6 Y VDD pmos L=1.3e-07 W=1.35e-06 $X=-655 $Y=108725 $D=25
M5 6 S VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=825 $Y=108725 $D=25
.ENDS
***************************************
