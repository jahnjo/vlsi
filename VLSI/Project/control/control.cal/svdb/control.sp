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
X0 VDD ground 7 B A or $T=-24955 1965 0 0 $X=-1725 $Y=86270
X1 VDD ground Y C 7 or $T=-20955 1965 0 0 $X=2275 $Y=86270
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
.SUBCKT control VDD ground op_0 op_1 REG_WRITE ALU_OP_1 op_2 PC_SRC ALU_OP_0 ALU_SRC
** N=31 EP=10 IP=99 FDC=168
* PORT VDD VDD 2260 84315 metal1
* PORT ground ground 2260 67095 metal1
* PORT op_0 op_0 1700 57495 metal7
* PORT op_1 op_1 -830 54470 metal7
* PORT REG_WRITE REG_WRITE -5840 73465 metal7
* PORT ALU_OP_1 ALU_OP_1 6160 72985 metal7
* PORT op_2 op_2 21775 50880 metal7
* PORT PC_SRC PC_SRC 21120 72385 metal7
* PORT ALU_OP_0 ALU_OP_0 27605 74185 metal7
* PORT ALU_SRC ALU_SRC 14160 71175 metal7
X0 VDD ground 3 4 5 6 and3 $T=-11030 13745 0 0 $X=-27445 $Y=43275
X1 VDD ground op_0 4 5 8 and3 $T=-1430 13745 0 0 $X=-17845 $Y=43275
X2 VDD ground 3 op_1 5 13 and3 $T=6570 13745 0 0 $X=-9845 $Y=43275
X3 VDD ground op_0 op_1 5 15 and3 $T=16170 13745 0 0 $X=-245 $Y=43275
X4 VDD ground 3 4 op_2 18 and3 $T=24170 13745 0 0 $X=7755 $Y=43275
X5 VDD ground op_0 4 op_2 10 and3 $T=33770 13745 0 0 $X=17355 $Y=43275
X6 VDD ground 3 op_1 op_2 PC_SRC and3 $T=41770 13745 0 0 $X=25355 $Y=43275
X7 VDD ground REG_WRITE 10 12 or $T=-31230 -18040 0 0 $X=-8000 $Y=66265
X8 VDD ground ALU_OP_1 10 16 or $T=-19230 -18040 0 0 $X=4000 $Y=66265
X9 VDD ground ALU_OP_0 PC_SRC 21 or $T=770 -18040 0 0 $X=24000 $Y=66265
X10 VDD ground 8 6 22 13 or3 $T=-22275 -20005 0 0 $X=-24000 $Y=66265
X11 VDD ground 15 22 12 18 or3 $T=-14275 -20005 0 0 $X=-16000 $Y=66265
X12 VDD ground 15 13 16 18 or3 $T=-2275 -20005 0 0 $X=-4000 $Y=66265
X13 VDD ground 10 15 ALU_SRC PC_SRC or3 $T=9725 -20005 0 0 $X=8000 $Y=66265
X14 VDD ground 18 8 21 10 or3 $T=17725 -20005 0 0 $X=16000 $Y=66265
X15 VDD ground 3 op_0 inv $T=-17385 -44540 0 0 $X=-19445 $Y=43275
X16 VDD ground 4 op_1 inv $T=215 -44540 0 0 $X=-1845 $Y=43275
X17 VDD ground 5 op_2 inv $T=17815 -44540 0 0 $X=15755 $Y=43275
.ENDS
***************************************
