* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT or Y B A
** N=7 EP=3 IP=0 FDC=6
* PORT Y Y 25390 92225 metal3
* PORT B B 24650 92965 metal3
* PORT A A 26400 93840 metal3
M0 3 B 2 2 nmos L=1.3e-07 W=6e-07 $X=24920 $Y=86275 $D=19
M1 2 A 3 2 nmos L=1.3e-07 W=6e-07 $X=25430 $Y=86275 $D=19
M2 Y 3 2 2 nmos L=1.3e-07 W=6e-07 $X=25940 $Y=86275 $D=19
M3 1 3 Y 1 pmos L=1.3e-07 W=1.35e-06 $X=25000 $Y=98515 $D=25
M4 5 A 1 1 pmos L=1.3e-07 W=2.7e-06 $X=25540 $Y=98515 $D=25
M5 3 B 5 1 pmos L=1.3e-07 W=2.7e-06 $X=25850 $Y=98515 $D=25
.ENDS
***************************************
