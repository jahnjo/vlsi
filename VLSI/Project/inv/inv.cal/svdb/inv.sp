* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
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
