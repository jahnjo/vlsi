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
.SUBCKT reg VDD ground dec0 dec1 dec2 dec3 dec4 dec5 dec6 dec7 Reg_W Rt0 Rt1 BusA Rt2 BusW Rs0 Rs1 BusB Rs2
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
* PORT Rt0 Rt0 -81365 305640 metal6
* PORT Rt1 Rt1 -74815 295070 metal6
* PORT BusA BusA -68440 304690 metal6
* PORT Rt2 Rt2 -66425 296105 metal6
* PORT BusW BusW -68800 334745 metal6
* PORT Rs0 Rs0 -49930 305955 metal6
* PORT Rs1 Rs1 -42810 295070 metal6
* PORT BusB BusB -36925 304290 metal6
* PORT Rs2 Rs2 -34900 296015 metal6
* PORT clk clk -69070 340780 metal6
X0 VDD ground BusW 4 20 clk 6 21 ICV_1 $T=-125110 273965 0 0 $X=-126835 $Y=325700
X1 VDD ground BusW 8 22 clk 10 23 ICV_1 $T=-93110 273965 0 0 $X=-94835 $Y=325700
X2 VDD ground BusW 12 24 clk 14 26 ICV_1 $T=-61110 273965 0 0 $X=-62835 $Y=325700
X3 VDD ground BusW 16 27 clk 19 28 ICV_1 $T=-29110 273965 0 0 $X=-30835 $Y=325700
X4 VDD ground dec0 Reg_W 4 dec1 6 ICV_2 $T=-107910 261050 0 0 $X=-84850 $Y=355660
X5 VDD ground dec2 Reg_W 8 dec3 10 ICV_2 $T=-99910 261050 0 0 $X=-76850 $Y=355660
X6 VDD ground dec4 Reg_W 12 dec5 14 ICV_2 $T=-91910 261050 0 0 $X=-68850 $Y=355660
X7 VDD ground dec6 Reg_W 16 dec7 19 ICV_2 $T=-83910 261050 0 0 $X=-60850 $Y=355660
X8 VDD ground 20 21 22 23 24 26 Rt0 27 28 Rt1 BusA Rt2 Mux81 $T=-95220 32745 0 0 $X=-96945 $Y=291690
X9 VDD ground 20 21 22 23 24 26 Rs0 27 28 Rs1 BusB Rs2 Mux81 $T=-63720 32745 0 0 $X=-65445 $Y=291690
.ENDS
***************************************
