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
.SUBCKT alu VDD ground Cout Cin A ALUop_0 B result ALUop_1
** N=28 EP=9 IP=38 FDC=66
* PORT VDD VDD 705 82830 metal1
* PORT ground ground 705 65610 metal1
* PORT Cout Cout 500 53935 metal6
* PORT Cin Cin 3075 55475 metal6
* PORT A A -3405 68545 metal6
* PORT ALUop_0 ALUop_0 6995 68955 metal6
* PORT B B -6450 61510 metal6
* PORT result result 3700 76240 metal6
* PORT ALUop_1 ALUop_1 8200 79250 metal6
M0 11 Cin 10 ground nmos L=1.3e-07 W=2e-06 $X=-2985 $Y=47050 $D=19
M1 12 23 11 ground nmos L=1.3e-07 W=2e-06 $X=-2675 $Y=47050 $D=19
M2 ground A 12 ground nmos L=1.3e-07 W=2e-06 $X=-2365 $Y=47050 $D=19
M3 Cout 16 ground ground nmos L=1.3e-07 W=2e-06 $X=-1855 $Y=47050 $D=19
M4 ground 10 13 ground nmos L=1.3e-07 W=2e-06 $X=-375 $Y=47050 $D=19
M5 14 Cin ground ground nmos L=1.3e-07 W=2e-06 $X=135 $Y=47050 $D=19
M6 ground 23 14 ground nmos L=1.3e-07 W=2e-06 $X=645 $Y=47050 $D=19
M7 14 A ground ground nmos L=1.3e-07 W=2e-06 $X=1155 $Y=47050 $D=19
M8 10 16 14 ground nmos L=1.3e-07 W=2e-06 $X=1665 $Y=47050 $D=19
M9 15 23 ground ground nmos L=1.3e-07 W=2e-06 $X=3145 $Y=47050 $D=19
M10 16 Cin 15 ground nmos L=1.3e-07 W=2e-06 $X=3655 $Y=47050 $D=19
M11 17 A 16 ground nmos L=1.3e-07 W=2e-06 $X=4165 $Y=47050 $D=19
M12 ground 23 17 ground nmos L=1.3e-07 W=2e-06 $X=4475 $Y=47050 $D=19
M13 15 A ground ground nmos L=1.3e-07 W=2e-06 $X=4985 $Y=47050 $D=19
M14 16 Cin 18 VDD pmos L=1.3e-07 W=2e-06 $X=-2970 $Y=59990 $D=25
M15 19 A 16 VDD pmos L=1.3e-07 W=2e-06 $X=-2460 $Y=59990 $D=25
M16 VDD 23 19 VDD pmos L=1.3e-07 W=2e-06 $X=-2150 $Y=59990 $D=25
M17 18 23 VDD VDD pmos L=1.3e-07 W=2e-06 $X=-1640 $Y=59990 $D=25
M18 VDD A 18 VDD pmos L=1.3e-07 W=2e-06 $X=-1130 $Y=59990 $D=25
M19 20 A VDD VDD pmos L=1.3e-07 W=2e-06 $X=-620 $Y=59990 $D=25
M20 21 23 20 VDD pmos L=1.3e-07 W=2e-06 $X=-310 $Y=59990 $D=25
M21 10 Cin 21 VDD pmos L=1.3e-07 W=2e-06 $X=0 $Y=59990 $D=25
M22 22 16 10 VDD pmos L=1.3e-07 W=2e-06 $X=510 $Y=59990 $D=25
M23 VDD 16 Cout VDD pmos L=1.3e-07 W=2e-06 $X=1990 $Y=59990 $D=25
M24 22 A VDD VDD pmos L=1.3e-07 W=2e-06 $X=2500 $Y=59990 $D=25
M25 VDD 23 22 VDD pmos L=1.3e-07 W=2e-06 $X=3010 $Y=59990 $D=25
M26 22 Cin VDD VDD pmos L=1.3e-07 W=2e-06 $X=3520 $Y=59990 $D=25
M27 13 10 VDD VDD pmos L=1.3e-07 W=2e-06 $X=5000 $Y=59990 $D=25
X28 VDD ground 24 B A or $T=-33535 -19525 0 0 $X=-10305 $Y=64780
X29 VDD ground 25 B inv $T=-8210 -42735 0 0 $X=-10270 $Y=45080
X30 VDD B 23 25 ground ALUop_0 Mux21 $T=-6065 -48085 0 0 $X=-8670 $Y=45080
X31 VDD 13 27 13 ground ALUop_0 Mux21 $T=300 -28385 0 0 $X=-2305 $Y=64780
X32 VDD 27 result 28 ground ALUop_1 Mux21 $T=4800 -28385 0 0 $X=2195 $Y=64780
X33 VDD 26 28 24 ground ALUop_0 Mux21 $T=9300 -28385 0 0 $X=6695 $Y=64780
X34 VDD ground 26 A B and $T=-29365 -29830 0 0 $X=-6305 $Y=64780
.ENDS
***************************************
.SUBCKT DFFen VDD Q ground CLK D En
** N=16 EP=6 IP=6 FDC=26
* PORT VDD VDD 6535 69785 metal1
* PORT Q Q 7145 58675 metal4
* PORT ground ground 6535 52565 metal1
* PORT CLK CLK 11840 63165 metal4
* PORT D D 1150 59390 metal4
* PORT En En 3885 61495 metal4
M0 ground 11 Q ground nmos L=1.3e-07 W=6e-07 $X=4745 $Y=53705 $D=19
M1 7 10 ground ground nmos L=1.3e-07 W=6e-07 $X=5255 $Y=53705 $D=19
M2 8 15 7 ground nmos L=1.3e-07 W=6e-07 $X=5765 $Y=53705 $D=19
M3 ground 16 8 ground nmos L=1.3e-07 W=6e-07 $X=6075 $Y=53705 $D=19
M4 9 14 ground ground nmos L=1.3e-07 W=6e-07 $X=6585 $Y=53705 $D=19
M5 10 15 9 ground nmos L=1.3e-07 W=6e-07 $X=6895 $Y=53705 $D=19
M6 ground 7 10 ground nmos L=1.3e-07 W=6e-07 $X=7405 $Y=53705 $D=19
M7 11 Q ground ground nmos L=1.3e-07 W=6e-07 $X=7915 $Y=53705 $D=19
M8 12 CLK 11 ground nmos L=1.3e-07 W=6e-07 $X=9395 $Y=53705 $D=19
M9 ground 10 12 ground nmos L=1.3e-07 W=6e-07 $X=9705 $Y=53705 $D=19
M10 13 7 ground ground nmos L=1.3e-07 W=6e-07 $X=10215 $Y=53705 $D=19
M11 Q CLK 13 ground nmos L=1.3e-07 W=6e-07 $X=10525 $Y=53705 $D=19
M12 ground 16 14 ground nmos L=1.3e-07 W=6e-07 $X=12005 $Y=53705 $D=19
M13 15 CLK ground ground nmos L=1.3e-07 W=6e-07 $X=12515 $Y=53705 $D=19
M14 VDD 16 14 VDD pmos L=1.3e-07 W=6e-07 $X=6405 $Y=68045 $D=25
M15 15 CLK VDD VDD pmos L=1.3e-07 W=6e-07 $X=6915 $Y=68045 $D=25
M16 VDD 7 10 VDD pmos L=1.3e-07 W=6e-07 $X=8395 $Y=68045 $D=25
M17 7 10 VDD VDD pmos L=1.3e-07 W=6e-07 $X=8905 $Y=68045 $D=25
M18 VDD 11 Q VDD pmos L=1.3e-07 W=6e-07 $X=10385 $Y=68045 $D=25
M19 11 Q VDD VDD pmos L=1.3e-07 W=6e-07 $X=10895 $Y=68045 $D=25
X20 VDD Q 16 D ground En Mux21 $T=880 -41430 0 0 $X=-1725 $Y=51735
.ENDS
***************************************
.SUBCKT ICV_1 1 2 3 4 5 6 7 8
** N=8 EP=8 IP=12 FDC=52
X0 1 5 2 6 3 4 DFFen $T=0 0 0 0 $X=-1725 $Y=51735
X1 1 8 2 6 3 7 DFFen $T=16000 0 0 0 $X=14275 $Y=51735
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7
** N=7 EP=7 IP=10 FDC=12
X0 1 2 5 3 4 and $T=0 0 0 0 $X=23060 $Y=94610
X1 1 2 7 6 4 and $T=4000 0 0 0 $X=27060 $Y=94610
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
X0 VDD IN0 15 IN1 ground S0 Mux21 $T=880 165780 0 0 $X=-1725 $Y=258945
X1 VDD IN2 16 IN3 ground S0 Mux21 $T=5380 165780 0 0 $X=2775 $Y=258945
X2 VDD 15 19 16 ground S1 Mux21 $T=9880 165780 0 0 $X=7275 $Y=258945
X3 VDD IN4 17 IN5 ground S0 Mux21 $T=14380 165780 0 0 $X=11775 $Y=258945
X4 VDD IN6 18 IN7 ground S0 Mux21 $T=18880 165780 0 0 $X=16275 $Y=258945
X5 VDD 17 20 18 ground S1 Mux21 $T=23380 165780 0 0 $X=20775 $Y=258945
X6 VDD 19 OUT1 20 ground S2 Mux21 $T=27880 165780 0 0 $X=25275 $Y=258945
.ENDS
***************************************
.SUBCKT reg VDD ground dec0 dec1 dec2 dec3 dec4 dec5 dec6 dec7 Reg_W Rs0 Rs1 BusA Rs2 BusW Rt0 Rt1 BusB Rt2
+ clk
** N=37 EP=21 IP=88 FDC=340
* PORT VDD VDD -62575 343750 metal1
* PORT ground ground -62575 326530 metal1
* PORT dec0 dec0 -82895 365000 metal6
* PORT dec1 dec1 -78905 364770 metal6
* PORT dec2 dec2 -74905 364840 metal6
* PORT dec3 dec3 -70905 364690 metal6
* PORT dec4 dec4 -66895 364785 metal6
* PORT dec5 dec5 -62900 364770 metal6
* PORT dec6 dec6 -58905 364830 metal6
* PORT dec7 dec7 -54895 364780 metal6
* PORT Reg_W Reg_W -70195 371600 metal6
* PORT Rs0 Rs0 -81545 305990 metal6
* PORT Rs1 Rs1 -75070 295070 metal6
* PORT BusA BusA -68440 304405 metal6
* PORT Rs2 Rs2 -66415 296750 metal6
* PORT BusW BusW -68800 334745 metal6
* PORT Rt0 Rt0 -50040 306255 metal6
* PORT Rt1 Rt1 -43760 295070 metal6
* PORT BusB BusB -36940 304615 metal6
* PORT Rt2 Rt2 -34915 297140 metal6
* PORT clk clk -69070 340780 metal6
X0 VDD ground BusW 22 30 clk 23 31 ICV_1 $T=-125110 273965 0 0 $X=-126835 $Y=325700
X1 VDD ground BusW 24 32 clk 25 33 ICV_1 $T=-93110 273965 0 0 $X=-94835 $Y=325700
X2 VDD ground BusW 26 34 clk 27 35 ICV_1 $T=-61110 273965 0 0 $X=-62835 $Y=325700
X3 VDD ground BusW 28 36 clk 29 37 ICV_1 $T=-29110 273965 0 0 $X=-30835 $Y=325700
X4 VDD ground dec0 Reg_W 22 dec1 23 ICV_2 $T=-107910 261050 0 0 $X=-84850 $Y=355660
X5 VDD ground dec2 Reg_W 24 dec3 25 ICV_2 $T=-99910 261050 0 0 $X=-76850 $Y=355660
X6 VDD ground dec4 Reg_W 26 dec5 27 ICV_2 $T=-91910 261050 0 0 $X=-68850 $Y=355660
X7 VDD ground dec6 Reg_W 28 dec7 29 ICV_2 $T=-83910 261050 0 0 $X=-60850 $Y=355660
X8 VDD ground 30 31 32 33 34 35 Rs0 36 37 Rs1 BusA Rs2 Mux81 $T=-95220 32745 0 0 $X=-96945 $Y=291690
X9 VDD ground 30 31 32 33 34 35 Rt0 36 37 Rt1 BusB Rt2 Mux81 $T=-63720 32745 0 0 $X=-65445 $Y=291690
.ENDS
***************************************
.SUBCKT bitslice ground VDD dec0 Rs0 dec1 Rs1 dec2 dec3 RegW clk BusW dec4 Rs2 dec5 dec6 dec7 Rt0 Rt1 Rt2 Cout
+ Cin result ALUop0 ALUop1
** N=48 EP=24 IP=30 FDC=406
* PORT ground ground 65795 108825 metal1
* PORT VDD VDD 65795 126045 metal1
* PORT dec0 dec0 45455 134645 metal7
* PORT Rs0 Rs0 46825 86810 metal7
* PORT dec1 dec1 49445 136815 metal7
* PORT Rs1 Rs1 51645 77360 metal7
* PORT dec2 dec2 53470 138810 metal7
* PORT dec3 dec3 57465 140735 metal7
* PORT RegW RegW 60810 153895 metal7
* PORT clk clk 57510 123075 metal7
* PORT BusW BusW 59570 118465 metal7
* PORT dec4 dec4 61480 142405 metal7
* PORT Rs2 Rs2 63345 79040 metal7
* PORT dec5 dec5 65475 143800 metal7
* PORT dec6 dec6 69465 145130 metal7
* PORT dec7 dec7 73475 146335 metal7
* PORT Rt0 Rt0 78330 87040 metal7
* PORT Rt1 Rt1 82960 77365 metal7
* PORT Rt2 Rt2 93455 78170 metal7
* PORT Cout Cout -13160 95825 metal7
* PORT Cin Cin -8960 98685 metal7
* PORT result result -8585 119460 metal7
* PORT ALUop0 ALUop0 -5410 112170 metal7
* PORT ALUop1 ALUop1 -5460 121055 metal7
X0 VDD ground Cout Cin 47 ALUop0 48 result ALUop1 alu $T=-13660 43215 0 0 $X=-24640 $Y=88295
X1 VDD ground dec0 dec1 dec2 dec3 dec4 dec5 dec6 dec7 RegW Rs0 Rs1 47 Rs2 BusW Rt0 Rt1 48 Rt2
+ clk
+ reg $T=128370 -217705 0 0 $X=-1725 $Y=73985
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
X0 VDD ground 16 Rd_2 inv $T=2250 -74575 0 0 $X=190 $Y=13240
X1 VDD ground 14 Rd_0 inv $T=19850 -74575 0 0 $X=17790 $Y=13240
X2 VDD ground 15 Rd_1 inv $T=37450 -74575 0 0 $X=35390 $Y=13240
X3 VDD ground 14 15 16 reg0 and3 $T=605 -16290 0 0 $X=-15810 $Y=13240
X4 VDD ground Rd_0 15 16 reg1 and3 $T=8605 -16290 0 0 $X=-7810 $Y=13240
X5 VDD ground 14 Rd_1 16 reg2 and3 $T=18205 -16290 0 0 $X=1790 $Y=13240
X6 VDD ground Rd_0 Rd_1 16 reg3 and3 $T=26205 -16290 0 0 $X=9790 $Y=13240
X7 VDD ground 14 15 Rd_2 reg4 and3 $T=35805 -16290 0 0 $X=19390 $Y=13240
X8 VDD ground Rd_0 15 Rd_2 reg5 and3 $T=43805 -16290 0 0 $X=27390 $Y=13240
X9 VDD ground 14 Rd_1 Rd_2 reg6 and3 $T=53405 -16290 0 0 $X=36990 $Y=13240
X10 VDD ground Rd_0 Rd_1 Rd_2 reg7 and3 $T=61405 -16290 0 0 $X=44990 $Y=13240
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
X0 VDD ground REG_WRITE 24 25 or $T=-31230 -18040 0 0 $X=-8000 $Y=66265
X1 VDD ground ALU_OP_1 24 28 or $T=-19230 -18040 0 0 $X=4000 $Y=66265
X2 VDD ground ALU_OP_0 PC_SRC 30 or $T=770 -18040 0 0 $X=24000 $Y=66265
X3 VDD ground 19 op_0 inv $T=-17385 -44540 0 0 $X=-19445 $Y=43275
X4 VDD ground 20 op_1 inv $T=215 -44540 0 0 $X=-1845 $Y=43275
X5 VDD ground 21 op_2 inv $T=17815 -44540 0 0 $X=15755 $Y=43275
X6 VDD ground 19 20 21 22 and3 $T=-11030 13745 0 0 $X=-27445 $Y=43275
X7 VDD ground op_0 20 21 23 and3 $T=-1430 13745 0 0 $X=-17845 $Y=43275
X8 VDD ground 19 op_1 21 26 and3 $T=6570 13745 0 0 $X=-9845 $Y=43275
X9 VDD ground op_0 op_1 21 27 and3 $T=16170 13745 0 0 $X=-245 $Y=43275
X10 VDD ground 19 20 op_2 29 and3 $T=24170 13745 0 0 $X=7755 $Y=43275
X11 VDD ground op_0 20 op_2 24 and3 $T=33770 13745 0 0 $X=17355 $Y=43275
X12 VDD ground 19 op_1 op_2 PC_SRC and3 $T=41770 13745 0 0 $X=25355 $Y=43275
X13 VDD ground 23 22 31 26 or3 $T=-22275 -20005 0 0 $X=-24000 $Y=66265
X14 VDD ground 27 31 25 29 or3 $T=-14275 -20005 0 0 $X=-16000 $Y=66265
X15 VDD ground 27 26 28 29 or3 $T=-2275 -20005 0 0 $X=-4000 $Y=66265
X16 VDD ground 24 27 ALU_SRC PC_SRC or3 $T=9725 -20005 0 0 $X=8000 $Y=66265
X17 VDD ground 29 23 30 24 or3 $T=17725 -20005 0 0 $X=16000 $Y=66265
.ENDS
***************************************
.SUBCKT top VDD ground result0 imm3 result1 imm2 result3 input_select imm0 result2 imm1 Rd1 Rd2 Rd0 Rs0 Rs1 clk Rs2 Rt0 Rt1
+ Rt2 op1 op0 ALUsrc PCsrc op2
** N=156 EP=26 IP=239 FDC=1918
* PORT VDD VDD 212645 388725 metal1
* PORT ground ground 212645 371505 metal1
* PORT result0 result0 466555 575035 metal8
* PORT imm3 imm3 416695 586645 metal8
* PORT result1 result1 462700 575000 metal8
* PORT imm2 imm2 421195 586720 metal8
* PORT result3 result3 455610 574925 metal8
* PORT input_select input_select 422610 590440 metal8
* PORT imm0 imm0 425690 589730 metal8
* PORT result2 result2 459220 574935 metal8
* PORT imm1 imm1 430200 586670 metal8
* PORT Rd1 Rd1 214540 583335 metal8
* PORT Rd2 Rd2 214690 569220 metal8
* PORT Rd0 Rd0 218990 577145 metal8
* PORT Rs0 Rs0 349000 350245 metal8
* PORT Rs1 Rs1 349110 345540 metal8
* PORT clk clk 350495 441645 metal8
* PORT Rs2 Rs2 349020 342425 metal8
* PORT Rt0 Rt0 349120 363085 metal8
* PORT Rt1 Rt1 349100 355995 metal8
* PORT Rt2 Rt2 349025 339350 metal8
* PORT op1 op1 334365 577145 metal8
* PORT op0 op0 338260 580165 metal8
* PORT ALUsrc ALUsrc 354885 598055 metal8
* PORT PCsrc PCsrc 361845 598115 metal8
* PORT op2 op2 360925 573550 metal8
X0 VDD result0 4 imm3 ground input_select Mux21 $T=416425 487520 0 0 $X=413820 $Y=580685
X1 VDD result1 7 imm2 ground input_select Mux21 $T=420925 487520 0 0 $X=418320 $Y=580685
X2 VDD result3 11 imm0 ground input_select Mux21 $T=425425 487520 0 0 $X=422820 $Y=580685
X3 VDD result2 14 imm1 ground input_select Mux21 $T=429925 487520 0 0 $X=427320 $Y=580685
X4 ground VDD 19 Rs0 20 Rs1 21 22 34 clk 4 23 Rs2 24 25 26 Rt0 Rt1 Rt2 27
+ 28 result3 29 30
+ bitslice $T=210770 263350 0 0 $X=186130 $Y=337335
X5 ground VDD 19 Rs0 20 Rs1 21 22 34 clk 11 23 Rs2 24 25 26 Rt0 Rt1 Rt2 39
+ 29 result0 29 30
+ bitslice $T=210770 385525 0 0 $X=186130 $Y=459510
X6 ground VDD 19 Rs0 20 Rs1 21 22 34 clk 7 23 Rs2 24 25 26 Rt0 Rt1 Rt2 28
+ 40 result2 29 30
+ bitslice $T=374960 263350 0 0 $X=350320 $Y=337335
X7 ground VDD 19 Rs0 20 Rs1 21 22 34 clk 14 23 Rs2 24 25 26 Rt0 Rt1 Rt2 40
+ 39 result1 29 30
+ bitslice $T=374960 385525 0 0 $X=350320 $Y=459510
X8 VDD ground 19 Rd0 20 Rd2 Rd1 21 22 23 24 25 26 decoder $T=202890 553420 0 0 $X=187080 $Y=566660
X9 VDD ground op0 op1 34 30 op2 PCsrc 29 ALUsrc control $T=340725 522670 0 0 $X=313280 $Y=565945
.ENDS
***************************************
