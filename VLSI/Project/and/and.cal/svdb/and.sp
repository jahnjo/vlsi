* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT and VDD ground Y A B
** N=7 EP=5 IP=0 FDC=6
* PORT VDD VDD 25320 112660 metal1
* PORT ground ground 25320 95440 metal1
* PORT Y Y 26355 107860 metal3
* PORT A A 25005 105745 metal3
* PORT B B 25565 105745 metal3
M0 3 A 2 ground nmos L=1.3e-07 W=1.2e-06 $X=24885 $Y=96580 $D=19
M1 ground B 3 ground nmos L=1.3e-07 W=1.2e-06 $X=25195 $Y=96580 $D=19
M2 Y 2 ground ground nmos L=1.3e-07 W=6e-07 $X=25735 $Y=97180 $D=19
M3 2 A VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=24745 $Y=110170 $D=25
M4 VDD B 2 VDD pmos L=1.3e-07 W=1.35e-06 $X=25255 $Y=110170 $D=25
M5 Y 2 VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=25765 $Y=110170 $D=25
.ENDS
***************************************
