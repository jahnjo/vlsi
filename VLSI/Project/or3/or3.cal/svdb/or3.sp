* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT or 1 2 Y B A
** N=7 EP=5 IP=0 FDC=6
* PORT Y Y 25390 92225 metal3
* PORT B B 24650 92965 metal3
* PORT A A 26400 93840 metal3
M0 6 B 2 2 nmos L=1.3e-07 W=6e-07 $X=24920 $Y=86275 $D=19
M1 2 A 6 2 nmos L=1.3e-07 W=6e-07 $X=25430 $Y=86275 $D=19
M2 Y 6 2 2 nmos L=1.3e-07 W=6e-07 $X=25940 $Y=86275 $D=19
M3 1 6 Y 1 pmos L=1.3e-07 W=1.35e-06 $X=25000 $Y=98515 $D=25
M4 7 A 1 1 pmos L=1.3e-07 W=2.7e-06 $X=25540 $Y=98515 $D=25
M5 6 B 7 1 pmos L=1.3e-07 W=2.7e-06 $X=25850 $Y=98515 $D=25
.ENDS
***************************************
.SUBCKT or3 VDD ground B A Y C
** N=7 EP=6 IP=10 FDC=12
* PORT VDD VDD 2535 104320 metal1
* PORT ground ground 2535 87100 metal1
* PORT B B -305 93065 metal4
* PORT A A 1445 97970 metal4
* PORT Y Y 4435 92850 metal4
* PORT C C 5330 94930 metal4
X0 VDD ground 5 B A or $T=-24955 1965 0 0 $X=-1725 $Y=86270
X1 VDD ground Y C 5 or $T=-20955 1965 0 0 $X=2275 $Y=86270
.ENDS
***************************************
