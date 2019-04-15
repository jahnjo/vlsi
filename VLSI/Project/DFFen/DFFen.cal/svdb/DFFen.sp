* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT DFFen VDD Q D ground En CLK
** N=17 EP=6 IP=0 FDC=26
* PORT VDD VDD 6535 69785 metal1
* PORT Q Q 7145 58675 metal4
* PORT D D 1150 59390 metal4
* PORT ground ground 6535 52565 metal1
* PORT En En 3885 61495 metal4
* PORT CLK CLK 11840 63165 metal4
M0 3 6 Q ground nmos L=1.3e-07 W=6e-07 $X=-275 $Y=53705 $D=19
M1 D En 3 ground nmos L=1.3e-07 W=6e-07 $X=235 $Y=53705 $D=19
M2 6 En ground ground nmos L=1.3e-07 W=6e-07 $X=1715 $Y=53705 $D=19
M3 ground 11 Q ground nmos L=1.3e-07 W=6e-07 $X=4745 $Y=53705 $D=19
M4 7 10 ground ground nmos L=1.3e-07 W=6e-07 $X=5255 $Y=53705 $D=19
M5 8 15 7 ground nmos L=1.3e-07 W=6e-07 $X=5765 $Y=53705 $D=19
M6 ground 3 8 ground nmos L=1.3e-07 W=6e-07 $X=6075 $Y=53705 $D=19
M7 9 14 ground ground nmos L=1.3e-07 W=6e-07 $X=6585 $Y=53705 $D=19
M8 10 15 9 ground nmos L=1.3e-07 W=6e-07 $X=6895 $Y=53705 $D=19
M9 ground 7 10 ground nmos L=1.3e-07 W=6e-07 $X=7405 $Y=53705 $D=19
M10 11 Q ground ground nmos L=1.3e-07 W=6e-07 $X=7915 $Y=53705 $D=19
M11 12 CLK 11 ground nmos L=1.3e-07 W=6e-07 $X=9395 $Y=53705 $D=19
M12 ground 10 12 ground nmos L=1.3e-07 W=6e-07 $X=9705 $Y=53705 $D=19
M13 13 7 ground ground nmos L=1.3e-07 W=6e-07 $X=10215 $Y=53705 $D=19
M14 Q CLK 13 ground nmos L=1.3e-07 W=6e-07 $X=10525 $Y=53705 $D=19
M15 ground 3 14 ground nmos L=1.3e-07 W=6e-07 $X=12005 $Y=53705 $D=19
M16 15 CLK ground ground nmos L=1.3e-07 W=6e-07 $X=12515 $Y=53705 $D=19
M17 3 En Q VDD pmos L=1.3e-07 W=1.35e-06 $X=-285 $Y=67295 $D=25
M18 D 6 3 VDD pmos L=1.3e-07 W=1.35e-06 $X=225 $Y=67295 $D=25
M19 6 En VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=1705 $Y=67295 $D=25
M20 VDD 3 14 VDD pmos L=1.3e-07 W=6e-07 $X=6405 $Y=68045 $D=25
M21 15 CLK VDD VDD pmos L=1.3e-07 W=6e-07 $X=6915 $Y=68045 $D=25
M22 VDD 7 10 VDD pmos L=1.3e-07 W=6e-07 $X=8395 $Y=68045 $D=25
M23 7 10 VDD VDD pmos L=1.3e-07 W=6e-07 $X=8905 $Y=68045 $D=25
M24 VDD 11 Q VDD pmos L=1.3e-07 W=6e-07 $X=10385 $Y=68045 $D=25
M25 11 Q VDD VDD pmos L=1.3e-07 W=6e-07 $X=10895 $Y=68045 $D=25
.ENDS
***************************************
