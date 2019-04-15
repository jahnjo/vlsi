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
.SUBCKT Mux41 VDD ground IN0 IN1 OUT1 S1 IN3 IN2 S0
** N=11 EP=9 IP=18 FDC=18
* PORT VDD VDD 5410 138855 metal1
* PORT ground ground 5530 121675 metal1
* PORT IN0 IN0 -535 126300 metal4
* PORT IN1 IN1 1145 124690 metal4
* PORT OUT1 OUT1 4280 133630 metal4
* PORT S1 S1 6285 135275 metal4
* PORT IN3 IN3 10125 127165 metal4
* PORT IN2 IN2 10485 133765 metal4
* PORT S0 S0 5375 124980 metal4
X0 VDD IN0 5 IN1 ground S0 Mux21 $T=880 27640 0 0 $X=-1725 $Y=120805
X1 VDD 5 OUT1 8 ground S1 Mux21 $T=5380 27640 0 0 $X=2775 $Y=120805
X2 VDD IN2 8 IN3 ground S0 Mux21 $T=9880 27640 0 0 $X=7275 $Y=120805
.ENDS
***************************************
