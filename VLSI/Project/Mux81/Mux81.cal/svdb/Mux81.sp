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
.SUBCKT Mux81 VDD ground IN0 IN1 IN2 IN3 IN4 IN5 S0 IN6 IN7 S1 OUT1 S2
** N=20 EP=14 IP=42 FDC=42
* PORT VDD VDD 14285 276995 metal1
* PORT ground ground 14285 259775 metal1
* PORT IN0 IN0 -535 265915 metal4
* PORT IN1 IN1 1160 264825 metal4
* PORT IN2 IN2 3960 264800 metal4
* PORT IN3 IN3 5660 266125 metal4
* PORT IN4 IN4 12960 265375 metal4
* PORT IN5 IN5 14660 266200 metal4
* PORT S0 S0 14135 274825 metal4
* PORT IN6 IN6 17460 265100 metal4
* PORT IN7 IN7 19160 265825 metal4
* PORT S1 S1 18860 262325 metal4
* PORT OUT1 OUT1 26780 273305 metal4
* PORT S2 S2 28805 265145 metal4
X0 VDD IN0 4 IN1 ground S0 Mux21 $T=880 165780 0 0 $X=-1725 $Y=258945
X1 VDD IN2 8 IN3 ground S0 Mux21 $T=5380 165780 0 0 $X=2775 $Y=258945
X2 VDD 4 17 8 ground S1 Mux21 $T=9880 165780 0 0 $X=7275 $Y=258945
X3 VDD IN4 10 IN5 ground S0 Mux21 $T=14380 165780 0 0 $X=11775 $Y=258945
X4 VDD IN6 15 IN7 ground S0 Mux21 $T=18880 165780 0 0 $X=16275 $Y=258945
X5 VDD 10 19 15 ground S1 Mux21 $T=23380 165780 0 0 $X=20775 $Y=258945
X6 VDD 17 OUT1 19 ground S2 Mux21 $T=27880 165780 0 0 $X=25275 $Y=258945
.ENDS
***************************************
