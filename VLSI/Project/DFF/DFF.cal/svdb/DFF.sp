* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT DFF VDD Q ground D CLK
** N=14 EP=5 IP=0 FDC=20
* PORT VDD VDD 1225 105255 metal1
* PORT Q Q 1165 99065 metal3
* PORT ground ground 1225 88035 metal1
* PORT D D -3035 100225 metal3
* PORT CLK CLK 4360 99735 metal3
M0 ground 8 Q ground nmos L=1.3e-07 W=6e-07 $X=-2735 $Y=89175 $D=19
M1 4 7 ground ground nmos L=1.3e-07 W=6e-07 $X=-2225 $Y=89175 $D=19
M2 5 12 4 ground nmos L=1.3e-07 W=6e-07 $X=-1715 $Y=89175 $D=19
M3 ground D 5 ground nmos L=1.3e-07 W=6e-07 $X=-1405 $Y=89175 $D=19
M4 6 11 ground ground nmos L=1.3e-07 W=6e-07 $X=-895 $Y=89175 $D=19
M5 7 12 6 ground nmos L=1.3e-07 W=6e-07 $X=-585 $Y=89175 $D=19
M6 ground 4 7 ground nmos L=1.3e-07 W=6e-07 $X=-75 $Y=89175 $D=19
M7 8 Q ground ground nmos L=1.3e-07 W=6e-07 $X=435 $Y=89175 $D=19
M8 9 CLK 8 ground nmos L=1.3e-07 W=6e-07 $X=1915 $Y=89175 $D=19
M9 ground 7 9 ground nmos L=1.3e-07 W=6e-07 $X=2225 $Y=89175 $D=19
M10 10 4 ground ground nmos L=1.3e-07 W=6e-07 $X=2735 $Y=89175 $D=19
M11 Q CLK 10 ground nmos L=1.3e-07 W=6e-07 $X=3045 $Y=89175 $D=19
M12 ground D 11 ground nmos L=1.3e-07 W=6e-07 $X=4525 $Y=89175 $D=19
M13 12 CLK ground ground nmos L=1.3e-07 W=6e-07 $X=5035 $Y=89175 $D=19
M14 VDD D 11 VDD pmos L=1.3e-07 W=6e-07 $X=-1075 $Y=103515 $D=25
M15 12 CLK VDD VDD pmos L=1.3e-07 W=6e-07 $X=-565 $Y=103515 $D=25
M16 VDD 4 7 VDD pmos L=1.3e-07 W=6e-07 $X=915 $Y=103515 $D=25
M17 4 7 VDD VDD pmos L=1.3e-07 W=6e-07 $X=1425 $Y=103515 $D=25
M18 VDD 8 Q VDD pmos L=1.3e-07 W=6e-07 $X=2905 $Y=103515 $D=25
M19 8 Q VDD VDD pmos L=1.3e-07 W=6e-07 $X=3415 $Y=103515 $D=25
.ENDS
***************************************
