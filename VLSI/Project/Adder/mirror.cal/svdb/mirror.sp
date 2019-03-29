* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT mirror VDD ground Cout S Cin B A
** N=19 EP=7 IP=0 FDC=28
* PORT VDD VDD 32800 107775 metal1
* PORT ground ground 32800 90555 metal1
* PORT Cout Cout 30510 98580 metal3
* PORT S S 36200 102110 metal3
* PORT Cin Cin 32570 100120 metal3
* PORT B B 34520 100965 metal3
* PORT A A 30135 101995 metal3
M0 3 Cin 2 ground nmos L=1.3e-07 W=2e-06 $X=28725 $Y=91695 $D=19
M1 4 B 3 ground nmos L=1.3e-07 W=2e-06 $X=29035 $Y=91695 $D=19
M2 ground A 4 ground nmos L=1.3e-07 W=2e-06 $X=29345 $Y=91695 $D=19
M3 Cout 10 ground ground nmos L=1.3e-07 W=2e-06 $X=29855 $Y=91695 $D=19
M4 ground 2 S ground nmos L=1.3e-07 W=2e-06 $X=31335 $Y=91695 $D=19
M5 8 Cin ground ground nmos L=1.3e-07 W=2e-06 $X=31845 $Y=91695 $D=19
M6 ground B 8 ground nmos L=1.3e-07 W=2e-06 $X=32355 $Y=91695 $D=19
M7 8 A ground ground nmos L=1.3e-07 W=2e-06 $X=32865 $Y=91695 $D=19
M8 2 10 8 ground nmos L=1.3e-07 W=2e-06 $X=33375 $Y=91695 $D=19
M9 9 B ground ground nmos L=1.3e-07 W=2e-06 $X=34855 $Y=91695 $D=19
M10 10 Cin 9 ground nmos L=1.3e-07 W=2e-06 $X=35365 $Y=91695 $D=19
M11 11 A 10 ground nmos L=1.3e-07 W=2e-06 $X=35875 $Y=91695 $D=19
M12 ground B 11 ground nmos L=1.3e-07 W=2e-06 $X=36185 $Y=91695 $D=19
M13 9 A ground ground nmos L=1.3e-07 W=2e-06 $X=36695 $Y=91695 $D=19
M14 10 Cin 12 VDD pmos L=1.3e-07 W=2e-06 $X=28740 $Y=104635 $D=25
M15 13 A 10 VDD pmos L=1.3e-07 W=2e-06 $X=29250 $Y=104635 $D=25
M16 VDD B 13 VDD pmos L=1.3e-07 W=2e-06 $X=29560 $Y=104635 $D=25
M17 12 B VDD VDD pmos L=1.3e-07 W=2e-06 $X=30070 $Y=104635 $D=25
M18 VDD A 12 VDD pmos L=1.3e-07 W=2e-06 $X=30580 $Y=104635 $D=25
M19 14 A VDD VDD pmos L=1.3e-07 W=2e-06 $X=31090 $Y=104635 $D=25
M20 15 B 14 VDD pmos L=1.3e-07 W=2e-06 $X=31400 $Y=104635 $D=25
M21 2 Cin 15 VDD pmos L=1.3e-07 W=2e-06 $X=31710 $Y=104635 $D=25
M22 16 10 2 VDD pmos L=1.3e-07 W=2e-06 $X=32220 $Y=104635 $D=25
M23 VDD 10 Cout VDD pmos L=1.3e-07 W=2e-06 $X=33700 $Y=104635 $D=25
M24 16 A VDD VDD pmos L=1.3e-07 W=2e-06 $X=34210 $Y=104635 $D=25
M25 VDD B 16 VDD pmos L=1.3e-07 W=2e-06 $X=34720 $Y=104635 $D=25
M26 16 Cin VDD VDD pmos L=1.3e-07 W=2e-06 $X=35230 $Y=104635 $D=25
M27 S 2 VDD VDD pmos L=1.3e-07 W=2e-06 $X=36710 $Y=104635 $D=25
.ENDS
***************************************
