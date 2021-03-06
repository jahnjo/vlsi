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
.SUBCKT alu VDD ground Cout B A Cin ALUop_0 result ALUop_1
** N=32 EP=9 IP=24 FDC=66
* PORT VDD VDD 705 82830 metal1
* PORT ground ground 705 65610 metal1
* PORT Cout Cout 500 53935 metal6
* PORT B B -6450 61510 metal6
* PORT A A -3405 68545 metal6
* PORT Cin Cin 3075 55475 metal6
* PORT ALUop_0 ALUop_0 6995 68955 metal6
* PORT result result 3700 76240 metal6
* PORT ALUop_1 ALUop_1 8200 79250 metal6
M0 3 B ground ground nmos L=1.3e-07 W=6e-07 $X=-9295 $Y=47050 $D=19
M1 4 B ground ground nmos L=1.3e-07 W=6e-07 $X=-8615 $Y=66750 $D=19
M2 ground A 4 ground nmos L=1.3e-07 W=6e-07 $X=-8105 $Y=66750 $D=19
M3 5 4 ground ground nmos L=1.3e-07 W=6e-07 $X=-7595 $Y=66750 $D=19
M4 7 A 6 ground nmos L=1.3e-07 W=1.2e-06 $X=-4480 $Y=66750 $D=19
M5 ground B 7 ground nmos L=1.3e-07 W=1.2e-06 $X=-4170 $Y=66750 $D=19
M6 8 6 ground ground nmos L=1.3e-07 W=6e-07 $X=-3630 $Y=67350 $D=19
M7 10 Cin 9 ground nmos L=1.3e-07 W=2e-06 $X=-2985 $Y=47050 $D=19
M8 11 27 10 ground nmos L=1.3e-07 W=2e-06 $X=-2675 $Y=47050 $D=19
M9 ground A 11 ground nmos L=1.3e-07 W=2e-06 $X=-2365 $Y=47050 $D=19
M10 Cout 16 ground ground nmos L=1.3e-07 W=2e-06 $X=-1855 $Y=47050 $D=19
M11 ground 9 13 ground nmos L=1.3e-07 W=2e-06 $X=-375 $Y=47050 $D=19
M12 14 Cin ground ground nmos L=1.3e-07 W=2e-06 $X=135 $Y=47050 $D=19
M13 ground 27 14 ground nmos L=1.3e-07 W=2e-06 $X=645 $Y=47050 $D=19
M14 14 A ground ground nmos L=1.3e-07 W=2e-06 $X=1155 $Y=47050 $D=19
M15 9 16 14 ground nmos L=1.3e-07 W=2e-06 $X=1665 $Y=47050 $D=19
M16 15 27 ground ground nmos L=1.3e-07 W=2e-06 $X=3145 $Y=47050 $D=19
M17 16 Cin 15 ground nmos L=1.3e-07 W=2e-06 $X=3655 $Y=47050 $D=19
M18 17 A 16 ground nmos L=1.3e-07 W=2e-06 $X=4165 $Y=47050 $D=19
M19 ground 27 17 ground nmos L=1.3e-07 W=2e-06 $X=4475 $Y=47050 $D=19
M20 15 A ground ground nmos L=1.3e-07 W=2e-06 $X=4985 $Y=47050 $D=19
M21 3 B VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=-9285 $Y=60640 $D=25
M22 VDD 4 5 VDD pmos L=1.3e-07 W=1.35e-06 $X=-8535 $Y=78990 $D=25
M23 18 A VDD VDD pmos L=1.3e-07 W=2.7e-06 $X=-7995 $Y=78990 $D=25
M24 4 B 18 VDD pmos L=1.3e-07 W=2.7e-06 $X=-7685 $Y=78990 $D=25
M25 6 A VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=-4620 $Y=80340 $D=25
M26 VDD B 6 VDD pmos L=1.3e-07 W=1.35e-06 $X=-4110 $Y=80340 $D=25
M27 8 6 VDD VDD pmos L=1.3e-07 W=1.35e-06 $X=-3600 $Y=80340 $D=25
M28 16 Cin 19 VDD pmos L=1.3e-07 W=2e-06 $X=-2970 $Y=59990 $D=25
M29 20 A 16 VDD pmos L=1.3e-07 W=2e-06 $X=-2460 $Y=59990 $D=25
M30 VDD 27 20 VDD pmos L=1.3e-07 W=2e-06 $X=-2150 $Y=59990 $D=25
M31 19 27 VDD VDD pmos L=1.3e-07 W=2e-06 $X=-1640 $Y=59990 $D=25
M32 VDD A 19 VDD pmos L=1.3e-07 W=2e-06 $X=-1130 $Y=59990 $D=25
M33 21 A VDD VDD pmos L=1.3e-07 W=2e-06 $X=-620 $Y=59990 $D=25
M34 22 27 21 VDD pmos L=1.3e-07 W=2e-06 $X=-310 $Y=59990 $D=25
M35 9 Cin 22 VDD pmos L=1.3e-07 W=2e-06 $X=0 $Y=59990 $D=25
M36 23 16 9 VDD pmos L=1.3e-07 W=2e-06 $X=510 $Y=59990 $D=25
M37 VDD 16 Cout VDD pmos L=1.3e-07 W=2e-06 $X=1990 $Y=59990 $D=25
M38 23 A VDD VDD pmos L=1.3e-07 W=2e-06 $X=2500 $Y=59990 $D=25
M39 VDD 27 23 VDD pmos L=1.3e-07 W=2e-06 $X=3010 $Y=59990 $D=25
M40 23 Cin VDD VDD pmos L=1.3e-07 W=2e-06 $X=3520 $Y=59990 $D=25
M41 13 9 VDD VDD pmos L=1.3e-07 W=2e-06 $X=5000 $Y=59990 $D=25
X42 VDD B 27 3 ground ALUop_0 Mux21 $T=-6065 -48085 0 0 $X=-8670 $Y=45080
X43 VDD 13 29 13 ground ALUop_0 Mux21 $T=300 -28385 0 0 $X=-2305 $Y=64780
X44 VDD 29 result 32 ground ALUop_1 Mux21 $T=4800 -28385 0 0 $X=2195 $Y=64780
X45 VDD 8 32 5 ground ALUop_0 Mux21 $T=9300 -28385 0 0 $X=6695 $Y=64780
.ENDS
***************************************
