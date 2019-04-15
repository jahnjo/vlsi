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
X0 VDD ground 7 A B and $T=-39475 -65080 0 0 $X=-16415 $Y=29530
X1 VDD ground Y 7 C and $T=-35475 -65080 0 0 $X=-12415 $Y=29530
.ENDS
***************************************
.SUBCKT inv VDD ground OUT IN
** N=4 EP=4 IP=0 FDC=2
* PORT VDD VDD -1000 105865 metal1
* PORT ground ground -1000 88645 metal1
* PORT OUT OUT -535 97020 metal3
* PORT IN IN -1430 96980 metal3
M0 OUT IN ground ground nmos L=1.3e-07 W=6e-07 $X=-1085 $Y=89785 $D=19
M1 OUT IN VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=-1075 $Y=103375 $D=25
.ENDS
***************************************
.SUBCKT decoder VDD ground reg0 Rd_0 reg1 Rd_2 Rd_1 reg2 reg3 reg4 reg5 reg6 reg7
** N=16 EP=13 IP=60 FDC=102
* PORT VDD VDD 18850 31290 metal1
* PORT ground ground 18850 14070 metal1
* PORT reg0 reg0 -10750 28905 metal6
* PORT Rd_0 Rd_0 16095 26035 metal6
* PORT reg1 reg1 -2505 27040 metal6
* PORT Rd_2 Rd_2 15115 15805 metal6
* PORT Rd_1 Rd_1 14530 29920 metal6
* PORT reg2 reg2 7185 29000 metal6
* PORT reg3 reg3 15335 28165 metal6
* PORT reg4 reg4 25050 27340 metal6
* PORT reg5 reg5 32860 27230 metal6
* PORT reg6 reg6 41965 28165 metal6
* PORT reg7 reg7 50215 28165 metal6
X0 VDD ground 3 4 5 reg0 and3 $T=605 -16290 0 0 $X=-15810 $Y=13240
X1 VDD ground Rd_0 4 5 reg1 and3 $T=8605 -16290 0 0 $X=-7810 $Y=13240
X2 VDD ground 3 Rd_1 5 reg2 and3 $T=18205 -16290 0 0 $X=1790 $Y=13240
X3 VDD ground Rd_0 Rd_1 5 reg3 and3 $T=26205 -16290 0 0 $X=9790 $Y=13240
X4 VDD ground 3 4 Rd_2 reg4 and3 $T=35805 -16290 0 0 $X=19390 $Y=13240
X5 VDD ground Rd_0 4 Rd_2 reg5 and3 $T=43805 -16290 0 0 $X=27390 $Y=13240
X6 VDD ground 3 Rd_1 Rd_2 reg6 and3 $T=53405 -16290 0 0 $X=36990 $Y=13240
X7 VDD ground Rd_0 Rd_1 Rd_2 reg7 and3 $T=61405 -16290 0 0 $X=44990 $Y=13240
X8 VDD ground 5 Rd_2 inv $T=2250 -74575 0 0 $X=190 $Y=13240
X9 VDD ground 3 Rd_0 inv $T=19850 -74575 0 0 $X=17790 $Y=13240
X10 VDD ground 4 Rd_1 inv $T=37450 -74575 0 0 $X=35390 $Y=13240
.ENDS
***************************************
