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
M0 7 A 6 ground nmos L=1.3e-07 W=1.2e-06 $X=24885 $Y=96580 $D=19
M1 ground B 7 ground nmos L=1.3e-07 W=1.2e-06 $X=25195 $Y=96580 $D=19
M2 Y 6 ground ground nmos L=1.3e-07 W=6e-07 $X=25735 $Y=97180 $D=19
M3 6 A VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=24745 $Y=110170 $D=25
M4 VDD B 6 VDD pmos L=1.3e-07 W=1.35e-06 $X=25255 $Y=110170 $D=25
M5 Y 6 VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=25765 $Y=110170 $D=25
.ENDS
***************************************
.SUBCKT and3 VDD ground A B C Y
** N=7 EP=6 IP=10 FDC=12
* PORT VDD VDD -12155 47580 metal1
* PORT ground ground -12155 30360 metal1
* PORT A A -14470 41710 metal3
* PORT B B -13910 39405 metal3
* PORT C C -9910 37125 metal3
* PORT Y Y -9120 44455 metal3
X0 VDD ground 5 A B and $T=-39475 -65080 0 0 $X=-16415 $Y=29530
X1 VDD ground Y 5 C and $T=-35475 -65080 0 0 $X=-12415 $Y=29530
.ENDS
***************************************
