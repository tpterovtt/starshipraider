EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "HMCAD1520 Test Board"
Date "2020-04-03"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:CONN_INTEGRALSTICK_FPGA_HOST J12
U 1 1 5E8588AF
P 12550 5550
F 0 "J12" H 13025 8725 50  0000 C CNN
F 1 "CONN_INTEGRALSTICK_FPGA_HOST" H 13025 8634 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-060-01-L-D-A" H 12550 5550 50  0001 C CNN
F 3 "" H 12550 5550 50  0001 C CNN
	1    12550 5550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_INTEGRALSTICK_FPGA_HOST J12
U 2 1 5E858D22
P 7600 8550
F 0 "J12" H 7600 8500 50  0000 L CNN
F 1 "CONN_INTEGRALSTICK_FPGA_HOST" H 7600 8400 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-060-01-L-D-A" H 7600 8550 50  0001 C CNN
F 3 "" H 7600 8550 50  0001 C CNN
	2    7600 8550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_INTEGRALSTICK_FPGA_HOST J12
U 3 1 5E85AD2E
P 12550 9450
F 0 "J12" H 12550 9400 50  0000 L CNN
F 1 "CONN_INTEGRALSTICK_FPGA_HOST" H 12550 9300 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-060-01-L-D-A" H 12550 9450 50  0001 C CNN
F 3 "" H 12550 9450 50  0001 C CNN
	3    12550 9450
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_INTEGRALSTICK_FPGA_HOST J12
U 4 1 5E85E357
P 9850 9950
F 0 "J12" H 9850 9900 50  0000 L CNN
F 1 "CONN_INTEGRALSTICK_FPGA_HOST" H 9850 9800 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-060-01-L-D-A" H 9850 9950 50  0001 C CNN
F 3 "" H 9850 9950 50  0001 C CNN
	4    9850 9950
	1    0    0    -1  
$EndComp
$Comp
L power-azonenberg:CONN_3_PWROUT J1
U 1 1 5E8606D1
P 1150 900
F 0 "J1" H 1017 1200 50  0000 C CNN
F 1 "BARREL" H 1017 1116 40  0000 C CNN
F 2 "azonenberg_pcb:CONN_CUI_PJ-058BH_HIPWR_BARREL_NOSLOT" H 1150 900 60  0001 C CNN
F 3 "" H 1150 900 60  0000 C CNN
	1    1150 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 800  1500 800 
Text Label 1600 900  0    50   ~ 0
GND
Wire Wire Line
	1600 900  1500 900 
$Comp
L osc-azonenberg:OSC_LVDS_NOPAD U1
U 1 1 5E87D642
P 1850 2100
F 0 "U1" H 2150 2697 60  0000 C CNN
F 1 "ASG2-D-X-A-1000.000MHZ" H 2150 2591 60  0000 C CNN
F 2 "azonenberg_pcb:OSCILLATOR_LVDS_2.5x2.0" H 1850 2100 60  0001 C CNN
F 3 "" H 1850 2100 60  0000 C CNN
	1    1850 2100
	1    0    0    -1  
$EndComp
Text Label 2750 1850 0    50   ~ 0
CLK_1GHZ_P
Text Label 2750 1950 0    50   ~ 0
CLK_1GHZ_N
Text Label 1100 1750 2    50   ~ 0
3V3
Wire Wire Line
	1550 1750 1550 1850
Connection ~ 1550 1750
Text Label 1100 2050 2    50   ~ 0
GND
Wire Wire Line
	1550 2050 1550 1950
$Comp
L device:C C1
U 1 1 5E881A38
P 1100 1900
F 0 "C1" H 1215 1946 50  0000 L CNN
F 1 "0.47 uF" H 1215 1855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 1138 1750 50  0001 C CNN
F 3 "" H 1100 1900 50  0001 C CNN
	1    1100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1750 1550 1750
Wire Wire Line
	1100 2050 1550 2050
$Comp
L osc-azonenberg:OSC_LVDS_NOPAD U2
U 1 1 5E88338D
P 1850 3000
F 0 "U2" H 2150 3597 60  0000 C CNN
F 1 "SIT9122AI-2D3-33E625.000000T" H 2150 3491 60  0000 C CNN
F 2 "azonenberg_pcb:OSCILLATOR_LVDS_7.0x5.0" H 1850 3000 60  0001 C CNN
F 3 "" H 1850 3000 60  0000 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Text Label 1100 2650 2    50   ~ 0
3V3
Text Label 1100 2950 2    50   ~ 0
GND
$Comp
L device:C C2
U 1 1 5E8841CC
P 1100 2800
F 0 "C2" H 1215 2846 50  0000 L CNN
F 1 "0.47 uF" H 1215 2755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 1138 2650 50  0001 C CNN
F 3 "" H 1100 2800 50  0001 C CNN
	1    1100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2650 1550 2650
Wire Wire Line
	1100 2950 1550 2950
Wire Wire Line
	1550 2750 1550 2650
Connection ~ 1550 2650
Wire Wire Line
	1550 2850 1550 2950
Text Label 2750 2750 0    50   ~ 0
CLK_625MHZ_P
Text Label 2750 2850 0    50   ~ 0
CLK_625MHZ_N
$Comp
L special-azonenberg:PI6C59S6005 U3
U 1 1 5E887177
P 2450 5350
F 0 "U3" H 2900 7575 50  0000 C CNN
F 1 "PI6C59S6005" H 2900 7484 50  0000 C CNN
F 2 "azonenberg_pcb:QFN_24_0.5MM_4x4MM" H 2450 5050 50  0001 C CNN
F 3 "" H 2450 5050 50  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
Text Label 2150 3350 2    50   ~ 0
3V3
Wire Wire Line
	2150 3350 2350 3350
Wire Wire Line
	2350 3350 2350 3450
Connection ~ 2350 3350
Connection ~ 2350 3450
Wire Wire Line
	2350 3450 2350 3550
Connection ~ 2350 3550
Wire Wire Line
	2350 3550 2350 3650
Text Label 2150 3850 2    50   ~ 0
GND
Wire Wire Line
	2150 3850 2350 3850
Text Label 2350 4050 2    50   ~ 0
3V3
Text Label 2350 4150 2    50   ~ 0
BUF_IN_SEL
Text Label 9650 9900 2    50   ~ 0
BUF_IN_SEL
Text Label 2350 4250 2    50   ~ 0
BUF_MUXSEL
Text Label 9650 9700 2    50   ~ 0
BUF_MUXSEL
Text Label 2350 4350 2    50   ~ 0
GND
Text Notes 2450 5450 0    50   ~ 0
OS=0 means CML output levels
Wire Wire Line
	2350 4550 2250 4550
Wire Wire Line
	2250 4550 2250 4650
Wire Wire Line
	2250 4650 2350 4650
$Comp
L device:C C4
U 1 1 5E890104
P 2100 4650
F 0 "C4" V 1848 4650 50  0000 C CNN
F 1 "0.01 uF" V 1939 4650 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2138 4500 50  0001 C CNN
F 3 "" H 2100 4650 50  0001 C CNN
	1    2100 4650
	0    1    1    0   
$EndComp
Connection ~ 2250 4650
Text Label 1950 4650 2    50   ~ 0
GND
$Comp
L device:C C11
U 1 1 5E891EC2
P 4600 3900
F 0 "C11" V 4550 3750 50  0000 C CNN
F 1 "0.1 uF" V 4550 4100 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4638 3750 50  0001 C CNN
F 3 "" H 4600 3900 50  0001 C CNN
	1    4600 3900
	0    1    1    0   
$EndComp
$Comp
L device:C C12
U 1 1 5E8937F5
P 4600 4100
F 0 "C12" V 4550 3950 50  0000 C CNN
F 1 "0.1 uF" V 4550 4300 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4638 3950 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
	1    4600 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3950 4250 3900
Wire Wire Line
	4250 3900 4450 3900
Wire Wire Line
	4250 4050 4250 4100
Wire Wire Line
	4250 4100 4450 4100
Text Label 5050 3900 0    50   ~ 0
ADC_CLK_P
Wire Wire Line
	5050 3900 4750 3900
Text Label 5050 4100 0    50   ~ 0
ADC_CLK_N
Wire Wire Line
	5050 4100 4750 4100
$Comp
L device:C C9
U 1 1 5E897CD5
P 3850 3450
F 0 "C9" H 3965 3496 50  0000 L CNN
F 1 "0.47 uF" H 3965 3405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3888 3300 50  0001 C CNN
F 3 "" H 3850 3450 50  0001 C CNN
	1    3850 3450
	1    0    0    -1  
$EndComp
Text Label 3850 3300 2    50   ~ 0
3V3
Text Label 3850 3600 2    50   ~ 0
GND
$Comp
L device:C C15
U 1 1 5E898F18
P 4400 3450
F 0 "C15" H 4515 3496 50  0000 L CNN
F 1 "0.47 uF" H 4515 3405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4438 3300 50  0001 C CNN
F 3 "" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
$Comp
L device:C C18
U 1 1 5E8991B6
P 4950 3450
F 0 "C18" H 5065 3496 50  0000 L CNN
F 1 "0.47 uF" H 5065 3405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4988 3300 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L device:C C21
U 1 1 5E89980C
P 5500 3450
F 0 "C21" H 5615 3496 50  0000 L CNN
F 1 "0.47 uF" H 5615 3405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5538 3300 50  0001 C CNN
F 3 "" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3300 4950 3300
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 3850 3300
Connection ~ 4950 3300
Wire Wire Line
	4950 3300 4400 3300
Wire Wire Line
	3850 3600 4400 3600
Connection ~ 4400 3600
Wire Wire Line
	4400 3600 4950 3600
Connection ~ 4950 3600
Wire Wire Line
	4950 3600 5500 3600
$Comp
L device:C C13
U 1 1 5E89BF4D
P 4600 5100
F 0 "C13" V 4550 4950 50  0000 C CNN
F 1 "0.1 uF" V 4550 5300 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4638 4950 50  0001 C CNN
F 3 "" H 4600 5100 50  0001 C CNN
	1    4600 5100
	0    1    1    0   
$EndComp
$Comp
L device:C C14
U 1 1 5E89BF57
P 4600 5300
F 0 "C14" V 4550 5150 50  0000 C CNN
F 1 "0.1 uF" V 4550 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4638 5150 50  0001 C CNN
F 3 "" H 4600 5300 50  0001 C CNN
	1    4600 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 5150 4250 5100
Wire Wire Line
	4250 5100 4450 5100
Wire Wire Line
	4250 5250 4250 5300
Wire Wire Line
	4250 5300 4450 5300
Text Label 5050 5100 0    50   ~ 0
DEBUG_CLK_P
Text Label 5050 5300 0    50   ~ 0
DEBUG_CLK_N
$Comp
L device:C C6
U 1 1 5E89D870
P 3550 2000
F 0 "C6" V 3500 1850 50  0000 C CNN
F 1 "0.1 uF" V 3500 2200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3588 1850 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1850 3300 1850
Wire Wire Line
	3300 1850 3300 1800
Wire Wire Line
	3300 1800 3400 1800
Wire Wire Line
	2750 1950 3300 1950
Wire Wire Line
	3300 1950 3300 2000
Wire Wire Line
	3300 2000 3400 2000
$Comp
L device:C C7
U 1 1 5E8A1DEE
P 3550 2900
F 0 "C7" V 3500 2750 50  0000 C CNN
F 1 "0.1 uF" V 3500 3100 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3588 2750 50  0001 C CNN
F 3 "" H 3550 2900 50  0001 C CNN
	1    3550 2900
	0    1    1    0   
$EndComp
$Comp
L device:C C8
U 1 1 5E8A1DF8
P 3550 2700
F 0 "C8" V 3500 2550 50  0000 C CNN
F 1 "0.1 uF" V 3500 2900 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3588 2550 50  0001 C CNN
F 3 "" H 3550 2700 50  0001 C CNN
	1    3550 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2850 3300 2850
Wire Wire Line
	3300 2850 3300 2900
Wire Wire Line
	3300 2900 3400 2900
Wire Wire Line
	2750 2750 3300 2750
Wire Wire Line
	3300 2750 3300 2700
Wire Wire Line
	3300 2700 3400 2700
Text Label 3950 2900 0    50   ~ 0
CLK_625MHZ_AC_P
Wire Wire Line
	3950 2700 3700 2700
Text Label 3950 2700 0    50   ~ 0
CLK_625MHZ_AC_N
Wire Wire Line
	3950 2900 3700 2900
Text Label 3950 2000 0    50   ~ 0
CLK_1GHZ_AC_P
Text Label 3950 1800 0    50   ~ 0
CLK_1GHZ_AC_N
Wire Wire Line
	3950 2000 3700 2000
Wire Wire Line
	3700 1800 3950 1800
Text Label 2350 4850 2    50   ~ 0
CLK_1GHZ_AC_P
Text Label 2350 4950 2    50   ~ 0
CLK_1GHZ_AC_N
Text Label 2350 5150 2    50   ~ 0
CLK_625MHZ_AC_P
Text Label 2350 5250 2    50   ~ 0
CLK_625MHZ_AC_N
$Comp
L Connector:Conn_Coaxial J11
U 1 1 5E8AC5D6
P 5900 5300
F 0 "J11" H 6000 5275 50  0000 L CNN
F 1 "SMA" H 6000 5184 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 5900 5300 50  0001 C CNN
F 3 "" H 5900 5300 50  0001 C CNN
	1    5900 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J10
U 1 1 5E8ACE5D
P 5900 5100
F 0 "J10" H 6000 4982 50  0000 L CNN
F 1 "SMA" H 6000 5073 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 5900 5100 50  0001 C CNN
F 3 "" H 5900 5100 50  0001 C CNN
	1    5900 5100
	1    0    0    1   
$EndComp
Text Label 5900 4900 0    50   ~ 0
GND
Wire Wire Line
	5900 4900 6300 4900
Wire Wire Line
	6300 4900 6300 5500
Wire Wire Line
	6300 5500 5900 5500
Wire Wire Line
	4750 5300 5750 5300
Wire Wire Line
	4750 5100 5750 5100
NoConn ~ 3450 4950
NoConn ~ 3450 4850
NoConn ~ 3450 4650
NoConn ~ 3450 4550
NoConn ~ 3450 4350
NoConn ~ 3450 4250
$Comp
L analog-azonenberg:HMCAD1520 U5
U 1 1 5E8723A3
P 2450 10650
F 0 "U5" H 2925 14425 50  0000 C CNN
F 1 "HMCAD1520" H 2925 14334 50  0000 C CNN
F 2 "azonenberg_pcb:QFN_48_0.5MM_7x7MM" H 2450 10650 50  0001 C CNN
F 3 "" H 2450 10650 50  0001 C CNN
	1    2450 10650
	1    0    0    -1  
$EndComp
$Comp
L power-azonenberg:LT3042 U4
U 1 1 5E8BD0E8
P 8150 2800
F 0 "U4" H 8475 3775 50  0000 C CNN
F 1 "LT3042" H 8475 3684 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_10_0.5MM_3x3MM" H 8150 2800 50  0001 C CNN
F 3 "" H 8150 2800 50  0001 C CNN
	1    8150 2800
	1    0    0    -1  
$EndComp
Text Label 6850 2050 2    50   ~ 0
3V3
Wire Wire Line
	8050 2050 8050 2150
Connection ~ 8050 2050
Connection ~ 8050 2150
Wire Wire Line
	8050 2150 8050 2250
Text Label 7450 2450 2    50   ~ 0
GND
Wire Wire Line
	8050 2450 8050 2550
Connection ~ 8050 2450
$Comp
L device:C C3
U 1 1 5E8C1C9F
P 7550 2300
F 0 "C3" H 7435 2254 50  0000 R CNN
F 1 "4.7 uF" H 7435 2345 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 7588 2150 50  0001 C CNN
F 3 "" H 7550 2300 50  0001 C CNN
	1    7550 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2450 7550 2450
Connection ~ 7550 2450
Wire Wire Line
	7550 2450 8050 2450
Wire Wire Line
	7450 2050 7550 2050
Wire Wire Line
	7550 2050 7550 2150
Connection ~ 7550 2050
Wire Wire Line
	7550 2050 8050 2050
$Comp
L device:C C10
U 1 1 5E8C788A
P 9750 2200
F 0 "C10" H 9635 2154 50  0000 R CNN
F 1 "4.7 uF" H 9635 2245 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 9788 2050 50  0001 C CNN
F 3 "" H 9750 2200 50  0001 C CNN
	1    9750 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 2050 8900 2150
Wire Wire Line
	8900 2050 9750 2050
Connection ~ 8900 2050
Text Label 9750 2050 0    50   ~ 0
A1V8
Text Label 9750 2350 0    50   ~ 0
GND
Text Label 8900 2450 0    50   ~ 0
3V3_1
NoConn ~ 8900 2350
$Comp
L device:R R1
U 1 1 5E8CF5A2
P 9100 2700
F 0 "R1" H 9170 2746 50  0000 L CNN
F 1 "9.09K 0.1%" H 9170 2655 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 9030 2700 50  0001 C CNN
F 3 "" H 9100 2700 50  0001 C CNN
	1    9100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2550 9100 2550
Text Label 9000 2850 2    50   ~ 0
GND
Wire Wire Line
	9000 2850 9100 2850
Wire Wire Line
	8050 2550 8050 2750
Connection ~ 8050 2550
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB1
U 1 1 5E8D711E
P 7150 2050
F 0 "FB1" V 6992 2050 40  0000 C CNN
F 1 "300R" V 7068 2050 40  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_INDUCTOR_NOSILK" H 7150 2050 60  0001 C CNN
F 3 "" H 7150 2050 60  0000 C CNN
	1    7150 2050
	0    1    1    0   
$EndComp
Text Label 2100 7100 2    50   ~ 0
A1V8
Wire Wire Line
	2100 7100 2350 7100
Wire Wire Line
	2350 7100 2350 7200
Connection ~ 2350 7100
Connection ~ 2350 7200
Wire Wire Line
	2350 7200 2350 7300
$Comp
L Connector:Conn_01x01 TP1
U 1 1 5E8DC792
P 3900 7100
F 0 "TP1" H 3980 7142 50  0000 L CNN
F 1 "TESTPOINT" H 3980 7051 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 3900 7100 50  0001 C CNN
F 3 "~" H 3900 7100 50  0001 C CNN
	1    3900 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7100 3500 7100
$Comp
L device:C C17
U 1 1 5E8DEE83
P 4700 7200
F 0 "C17" H 4585 7154 50  0000 R CNN
F 1 "4.7 uF" H 4585 7245 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4738 7050 50  0001 C CNN
F 3 "" H 4700 7200 50  0001 C CNN
	1    4700 7200
	-1   0    0    1   
$EndComp
$Comp
L device:C C20
U 1 1 5E8DF409
P 5150 7200
F 0 "C20" H 5035 7154 50  0000 R CNN
F 1 "0.47 uF" H 5035 7245 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5188 7050 50  0001 C CNN
F 3 "" H 5150 7200 50  0001 C CNN
	1    5150 7200
	-1   0    0    1   
$EndComp
$Comp
L device:C C23
U 1 1 5E8DF7B4
P 5700 7200
F 0 "C23" H 5585 7154 50  0000 R CNN
F 1 "0.47 uF" H 5585 7245 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5738 7050 50  0001 C CNN
F 3 "" H 5700 7200 50  0001 C CNN
	1    5700 7200
	-1   0    0    1   
$EndComp
$Comp
L device:C C25
U 1 1 5E8DFAAB
P 6250 7200
F 0 "C25" H 6135 7154 50  0000 R CNN
F 1 "0.47 uF" H 6135 7245 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6288 7050 50  0001 C CNN
F 3 "" H 6250 7200 50  0001 C CNN
	1    6250 7200
	-1   0    0    1   
$EndComp
Text Label 4700 7050 2    50   ~ 0
A1V8
Text Label 4700 7350 2    50   ~ 0
GND
Wire Wire Line
	4700 7350 5150 7350
Connection ~ 5150 7350
Wire Wire Line
	5150 7350 5700 7350
Connection ~ 5700 7350
Wire Wire Line
	5700 7350 6250 7350
Wire Wire Line
	4700 7050 5150 7050
Connection ~ 5150 7050
Wire Wire Line
	5150 7050 5700 7050
Connection ~ 5700 7050
Wire Wire Line
	5700 7050 6250 7050
Text Label 2100 7500 2    50   ~ 0
1V8
Wire Wire Line
	2100 7500 2350 7500
Wire Wire Line
	2350 7500 2350 7600
Connection ~ 2350 7500
Wire Wire Line
	2350 7600 2350 7700
Connection ~ 2350 7600
Text Label 4700 6550 2    50   ~ 0
1V8
$Comp
L device:C C16
U 1 1 5E8EA1F4
P 4700 6700
F 0 "C16" H 4585 6654 50  0000 R CNN
F 1 "4.7 uF" H 4585 6745 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4738 6550 50  0001 C CNN
F 3 "" H 4700 6700 50  0001 C CNN
	1    4700 6700
	-1   0    0    1   
$EndComp
Text Label 4700 6850 2    50   ~ 0
GND
$Comp
L device:C C19
U 1 1 5E8EAF2C
P 5150 6700
F 0 "C19" H 5035 6654 50  0000 R CNN
F 1 "0.47 uF" H 5035 6745 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5188 6550 50  0001 C CNN
F 3 "" H 5150 6700 50  0001 C CNN
	1    5150 6700
	-1   0    0    1   
$EndComp
$Comp
L device:C C22
U 1 1 5E8EB559
P 5700 6700
F 0 "C22" H 5585 6654 50  0000 R CNN
F 1 "0.47 uF" H 5585 6745 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5738 6550 50  0001 C CNN
F 3 "" H 5700 6700 50  0001 C CNN
	1    5700 6700
	-1   0    0    1   
$EndComp
$Comp
L device:C C24
U 1 1 5E8EB9D4
P 6250 6700
F 0 "C24" H 6135 6654 50  0000 R CNN
F 1 "0.47 uF" H 6135 6745 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6288 6550 50  0001 C CNN
F 3 "" H 6250 6700 50  0001 C CNN
	1    6250 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 6550 5700 6550
Connection ~ 5150 6550
Wire Wire Line
	5150 6550 4700 6550
Connection ~ 5700 6550
Wire Wire Line
	5700 6550 5150 6550
Wire Wire Line
	4700 6850 5150 6850
Connection ~ 5150 6850
Wire Wire Line
	5150 6850 5700 6850
Connection ~ 5700 6850
Wire Wire Line
	5700 6850 6250 6850
Text Label 2100 7900 2    50   ~ 0
GND
Wire Wire Line
	2100 7900 2350 7900
Wire Wire Line
	2350 7900 2350 8000
Connection ~ 2350 7900
Connection ~ 2350 8000
Wire Wire Line
	2350 8000 2350 8100
Connection ~ 2350 8100
Wire Wire Line
	2350 8100 2350 8200
Wire Wire Line
	2350 8400 2350 8500
Text Label 2100 8700 2    50   ~ 0
SPI_CS_N
Wire Wire Line
	2100 8700 2350 8700
Text Label 2100 8800 2    50   ~ 0
SPI_SDATA
Wire Wire Line
	2100 8800 2350 8800
Text Label 2100 8900 2    50   ~ 0
SPI_SCLK
Wire Wire Line
	2100 8900 2350 8900
Text Label 2100 9000 2    50   ~ 0
ADC_RST_N
Wire Wire Line
	2100 9000 2350 9000
Text Label 2100 9100 2    50   ~ 0
ADC_PD
Wire Wire Line
	2100 9100 2350 9100
Text Label 2350 9300 2    50   ~ 0
ADC_CLK_P
Text Label 2350 9400 2    50   ~ 0
ADC_CLK_N
Text Label 2350 9600 2    50   ~ 0
IN1_P
Text Label 2350 9700 2    50   ~ 0
IN1_N
Text Label 2350 9900 2    50   ~ 0
IN2_P
Text Label 2350 10000 2    50   ~ 0
IN2_N
Text Label 2350 10200 2    50   ~ 0
IN3_P
Text Label 2350 10300 2    50   ~ 0
IN3_N
Text Label 2350 10500 2    50   ~ 0
IN4_P
Text Label 2350 10600 2    50   ~ 0
IN4_N
Text Label 4600 7850 2    50   ~ 0
IN1_P
Text Label 4600 8050 2    50   ~ 0
IN1_N
Text Label 3500 7800 0    50   ~ 0
LVDS_1A_P
Text Label 3500 7900 0    50   ~ 0
LVDS_1A_N
Text Label 3500 8100 0    50   ~ 0
LVDS_1B_P
Text Label 3500 8200 0    50   ~ 0
LVDS_1B_N
Text Label 3500 8400 0    50   ~ 0
LVDS_2A_P
Text Label 3500 8500 0    50   ~ 0
LVDS_2A_N
Text Label 3500 8700 0    50   ~ 0
LVDS_2B_P
Text Label 3500 8800 0    50   ~ 0
LVDS_2B_N
Text Label 3500 9000 0    50   ~ 0
LVDS_3A_P
Text Label 3500 9100 0    50   ~ 0
LVDS_3A_N
Text Label 3500 9300 0    50   ~ 0
LVDS_3B_P
Text Label 3500 9400 0    50   ~ 0
LVDS_3B_N
Text Label 3500 9600 0    50   ~ 0
LVDS_4A_P
Text Label 3500 9700 0    50   ~ 0
LVDS_4A_N
Text Label 7400 7100 2    50   ~ 0
SPI_CS_N
Text Label 7400 6900 2    50   ~ 0
SPI_SDATA
Text Label 7400 6700 2    50   ~ 0
SPI_SCLK
Text Label 7400 6800 2    50   ~ 0
ADC_RST_N
Text Label 7400 6600 2    50   ~ 0
ADC_PD
Text Notes 7600 8850 0    50   ~ 0
Can freely reassign
Text Label 12350 8800 2    50   ~ 0
LVDS_1A_P
Text Label 12350 8700 2    50   ~ 0
LVDS_1A_N
Text Label 12350 8200 2    50   ~ 0
LVDS_1B_P
Text Label 12350 8100 2    50   ~ 0
LVDS_1B_N
Text Label 12350 7600 2    50   ~ 0
LVDS_2A_P
Text Label 12350 7500 2    50   ~ 0
LVDS_2A_N
Text Label 12350 7000 2    50   ~ 0
LVDS_2B_P
Text Label 12350 6900 2    50   ~ 0
LVDS_2B_N
Text Label 12350 8500 2    50   ~ 0
LVDS_3A_P
Text Label 12350 8400 2    50   ~ 0
LVDS_3A_N
Text Label 12350 7900 2    50   ~ 0
LVDS_3B_P
Text Label 12350 7800 2    50   ~ 0
LVDS_3B_N
Text Label 12350 7300 2    50   ~ 0
LVDS_4A_P
Text Label 12350 7200 2    50   ~ 0
LVDS_4A_N
Text Label 12350 6700 2    50   ~ 0
LVDS_4B_P
Text Label 12350 6600 2    50   ~ 0
LVDS_4B_N
Text Label 3500 10200 0    50   ~ 0
LCLK_P
Text Label 3500 10300 0    50   ~ 0
LCLK_N
Text Label 3500 10500 0    50   ~ 0
FCLK_P
Text Label 3500 10600 0    50   ~ 0
FCLK_N
Text Label 9650 9000 2    50   ~ 0
LCLK_P
Text Label 9650 9200 2    50   ~ 0
LCLK_N
Text Label 12350 9100 2    50   ~ 0
FCLK_P
Text Label 12350 9000 2    50   ~ 0
FCLK_N
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5E92EC21
P 4750 8050
F 0 "J3" H 4850 8025 50  0000 L CNN
F 1 "SMA" H 4850 7934 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 8050 50  0001 C CNN
F 3 "" H 4750 8050 50  0001 C CNN
	1    4750 8050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5E92EC2B
P 4750 7850
F 0 "J2" H 4850 7732 50  0000 L CNN
F 1 "SMA" H 4850 7823 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 7850 50  0001 C CNN
F 3 "" H 4750 7850 50  0001 C CNN
	1    4750 7850
	1    0    0    1   
$EndComp
Text Label 4750 7650 0    50   ~ 0
GND
Wire Wire Line
	4750 7650 5150 7650
Wire Wire Line
	5150 7650 5150 8250
Wire Wire Line
	5150 8250 4750 8250
Text Label 4600 8650 2    50   ~ 0
IN2_P
Text Label 4600 8850 2    50   ~ 0
IN2_N
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5E94061D
P 4750 8850
F 0 "J5" H 4850 8825 50  0000 L CNN
F 1 "SMA" H 4850 8734 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 8850 50  0001 C CNN
F 3 "" H 4750 8850 50  0001 C CNN
	1    4750 8850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5E940627
P 4750 8650
F 0 "J4" H 4850 8532 50  0000 L CNN
F 1 "SMA" H 4850 8623 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 8650 50  0001 C CNN
F 3 "" H 4750 8650 50  0001 C CNN
	1    4750 8650
	1    0    0    1   
$EndComp
Text Label 4750 8450 0    50   ~ 0
GND
Wire Wire Line
	4750 8450 5150 8450
Wire Wire Line
	5150 8450 5150 9050
Wire Wire Line
	5150 9050 4750 9050
Text Label 4600 9450 2    50   ~ 0
IN3_P
Text Label 4600 9650 2    50   ~ 0
IN3_N
$Comp
L Connector:Conn_Coaxial J7
U 1 1 5E944E92
P 4750 9650
F 0 "J7" H 4850 9625 50  0000 L CNN
F 1 "SMA" H 4850 9534 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 9650 50  0001 C CNN
F 3 "" H 4750 9650 50  0001 C CNN
	1    4750 9650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J6
U 1 1 5E944E9C
P 4750 9450
F 0 "J6" H 4850 9332 50  0000 L CNN
F 1 "SMA" H 4850 9423 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 9450 50  0001 C CNN
F 3 "" H 4750 9450 50  0001 C CNN
	1    4750 9450
	1    0    0    1   
$EndComp
Text Label 4750 9250 0    50   ~ 0
GND
Wire Wire Line
	4750 9250 5150 9250
Wire Wire Line
	5150 9250 5150 9850
Wire Wire Line
	5150 9850 4750 9850
Text Label 4600 10250 2    50   ~ 0
IN4_P
Text Label 4600 10450 2    50   ~ 0
IN4_N
$Comp
L Connector:Conn_Coaxial J9
U 1 1 5E944EAC
P 4750 10450
F 0 "J9" H 4850 10425 50  0000 L CNN
F 1 "SMA" H 4850 10334 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 10450 50  0001 C CNN
F 3 "" H 4750 10450 50  0001 C CNN
	1    4750 10450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J8
U 1 1 5E944EB6
P 4750 10250
F 0 "J8" H 4850 10132 50  0000 L CNN
F 1 "SMA" H 4850 10223 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4750 10250 50  0001 C CNN
F 3 "" H 4750 10250 50  0001 C CNN
	1    4750 10250
	1    0    0    1   
$EndComp
Text Label 4750 10050 0    50   ~ 0
GND
Wire Wire Line
	4750 10050 5150 10050
Wire Wire Line
	5150 10050 5150 10650
Wire Wire Line
	5150 10650 4750 10650
NoConn ~ 7400 8500
NoConn ~ 7400 8400
NoConn ~ 7400 8300
NoConn ~ 7400 8200
NoConn ~ 7400 8100
NoConn ~ 7400 8000
NoConn ~ 7400 7900
NoConn ~ 7400 7800
NoConn ~ 7400 7700
NoConn ~ 7400 7600
NoConn ~ 7400 7500
NoConn ~ 7400 7400
NoConn ~ 7400 7300
NoConn ~ 7400 7200
Text Notes 9850 10250 0    50   ~ 0
Can freely reassign except for LCLK
NoConn ~ 9650 6700
NoConn ~ 9650 6600
NoConn ~ 9650 9800
NoConn ~ 9650 9600
NoConn ~ 9650 9500
NoConn ~ 9650 9400
NoConn ~ 9650 9300
NoConn ~ 9650 9100
NoConn ~ 9650 8900
NoConn ~ 9650 8800
NoConn ~ 9650 8700
NoConn ~ 9650 8600
NoConn ~ 9650 8500
NoConn ~ 9650 8400
NoConn ~ 9650 8300
NoConn ~ 9650 8200
NoConn ~ 9650 8100
NoConn ~ 9650 7000
NoConn ~ 9650 7100
NoConn ~ 9650 7200
NoConn ~ 9650 7300
NoConn ~ 9650 7400
NoConn ~ 9650 7500
NoConn ~ 9650 7600
NoConn ~ 9650 7700
NoConn ~ 9650 7800
NoConn ~ 9650 7900
NoConn ~ 9650 8000
Text Notes 12550 9800 0    50   ~ 0
Polarity inverted on all signals\nfor routability
NoConn ~ 12350 9300
NoConn ~ 12350 9400
Text Label 12100 2600 2    50   ~ 0
5V0
Wire Wire Line
	12100 2600 12350 2600
Wire Wire Line
	12350 2600 12350 2700
Connection ~ 12350 2600
Connection ~ 12350 2700
Wire Wire Line
	12350 2700 12350 2800
Connection ~ 12350 2800
Wire Wire Line
	12350 2800 12350 2900
Connection ~ 12350 2900
Wire Wire Line
	12350 2900 12350 3000
Connection ~ 12350 3000
Wire Wire Line
	12350 3000 12350 3100
Text Label 13700 2600 0    50   ~ 0
GND
Wire Wire Line
	13700 2600 13700 2700
Connection ~ 13700 2700
Wire Wire Line
	13700 2700 13700 2800
Connection ~ 13700 2800
Wire Wire Line
	13700 2800 13700 2900
Connection ~ 13700 2900
Wire Wire Line
	13700 2900 13700 3000
Connection ~ 13700 3000
Wire Wire Line
	13700 3000 13700 3100
Connection ~ 13700 3100
Wire Wire Line
	13700 3100 13700 3200
Connection ~ 13700 3200
Wire Wire Line
	13700 3200 13700 3300
Text Label 13700 3500 0    50   ~ 0
3V3
Wire Wire Line
	13700 3500 13700 3600
Connection ~ 13700 3600
Wire Wire Line
	13700 3600 13700 3700
Connection ~ 13700 3700
Wire Wire Line
	13700 3700 13700 3800
Connection ~ 13700 3800
Wire Wire Line
	13700 3800 13700 3900
Connection ~ 13700 3900
Wire Wire Line
	13700 3900 13700 4000
Connection ~ 13700 4000
Wire Wire Line
	13700 4000 13700 4100
Connection ~ 13700 4100
Wire Wire Line
	13700 4100 13700 4200
Connection ~ 13700 4200
Wire Wire Line
	13700 4200 13700 4300
Connection ~ 13700 4300
Wire Wire Line
	13700 4300 13700 4400
Connection ~ 13700 4400
Wire Wire Line
	13700 4400 13700 4500
Connection ~ 13700 4500
Wire Wire Line
	13700 4500 13700 4600
Connection ~ 13700 4600
Wire Wire Line
	13700 4600 13700 4700
Connection ~ 13700 4700
Wire Wire Line
	13700 4700 13700 4800
Connection ~ 13700 4800
Wire Wire Line
	13700 4800 13700 4900
Connection ~ 13700 4900
Wire Wire Line
	13700 4900 13700 5000
Connection ~ 13700 5000
Wire Wire Line
	13700 5000 13700 5100
Connection ~ 13700 5100
Wire Wire Line
	13700 5100 13700 5200
Text Label 12100 3300 2    50   ~ 0
1V8
Wire Wire Line
	12100 3300 12350 3300
Wire Wire Line
	12350 3300 12350 3400
Connection ~ 12350 3300
Connection ~ 12350 3400
Wire Wire Line
	12350 3400 12350 3500
Connection ~ 12350 3500
Wire Wire Line
	12350 3500 12350 3600
Connection ~ 12350 3600
Wire Wire Line
	12350 3600 12350 3700
Connection ~ 12350 3700
Wire Wire Line
	12350 3700 12350 3800
Connection ~ 12350 3800
Wire Wire Line
	12350 3800 12350 3900
Connection ~ 12350 3900
Wire Wire Line
	12350 3900 12350 4000
Connection ~ 12350 4000
Wire Wire Line
	12350 4000 12350 4100
Connection ~ 12350 4100
Wire Wire Line
	12350 4100 12350 4200
Text Label 12100 4400 2    50   ~ 0
2V5
Wire Wire Line
	12100 4400 12350 4400
Wire Wire Line
	12350 5500 12350 5400
Connection ~ 12350 4400
Connection ~ 12350 4500
Wire Wire Line
	12350 4500 12350 4400
Connection ~ 12350 4600
Wire Wire Line
	12350 4600 12350 4500
Connection ~ 12350 4700
Wire Wire Line
	12350 4700 12350 4600
Connection ~ 12350 4800
Wire Wire Line
	12350 4800 12350 4700
Connection ~ 12350 4900
Wire Wire Line
	12350 4900 12350 4800
Connection ~ 12350 5000
Wire Wire Line
	12350 5000 12350 4900
Connection ~ 12350 5100
Wire Wire Line
	12350 5100 12350 5000
Connection ~ 12350 5200
Wire Wire Line
	12350 5200 12350 5100
Connection ~ 12350 5300
Wire Wire Line
	12350 5300 12350 5200
Connection ~ 12350 5400
Wire Wire Line
	12350 5400 12350 5300
NoConn ~ 1500 1000
Text Label 2100 800  0    50   ~ 0
5V0
$Comp
L power-azonenberg:FUSE_PWROUT F1
U 1 1 5E8618CA
P 1850 800
F 0 "F1" H 1850 1040 50  0000 C CNN
F 1 "2A" H 1850 949 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_INDUCTOR_NOSILK" H 1850 800 60  0001 C CNN
F 3 "" H 1850 800 60  0000 C CNN
	1    1850 800 
	1    0    0    -1  
$EndComp
$Comp
L device:R R2
U 1 1 5EAA9478
P 5750 7650
F 0 "R2" V 5700 7800 50  0000 C CNN
F 1 "100" V 5750 7650 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5680 7650 50  0001 C CNN
F 3 "" H 5750 7650 50  0001 C CNN
	1    5750 7650
	0    1    1    0   
$EndComp
Text Label 5600 7650 2    50   ~ 0
IN1_P
Text Label 6000 7650 0    50   ~ 0
IN1_N
Wire Wire Line
	6000 7650 5900 7650
$Comp
L device:R R3
U 1 1 5EAB1986
P 5750 7800
F 0 "R3" V 5700 7950 50  0000 C CNN
F 1 "100" V 5750 7800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5680 7800 50  0001 C CNN
F 3 "" H 5750 7800 50  0001 C CNN
	1    5750 7800
	0    1    1    0   
$EndComp
Text Label 5600 7800 2    50   ~ 0
IN2_P
Text Label 6000 7800 0    50   ~ 0
IN2_N
Wire Wire Line
	6000 7800 5900 7800
$Comp
L device:R R4
U 1 1 5EAB89A4
P 5750 7950
F 0 "R4" V 5700 8100 50  0000 C CNN
F 1 "100" V 5750 7950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5680 7950 50  0001 C CNN
F 3 "" H 5750 7950 50  0001 C CNN
	1    5750 7950
	0    1    1    0   
$EndComp
Text Label 5600 7950 2    50   ~ 0
IN3_P
Text Label 6000 7950 0    50   ~ 0
IN3_N
Wire Wire Line
	6000 7950 5900 7950
$Comp
L device:R R5
U 1 1 5EABFADE
P 5750 8100
F 0 "R5" V 5700 8250 50  0000 C CNN
F 1 "100" V 5750 8100 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5680 8100 50  0001 C CNN
F 3 "" H 5750 8100 50  0001 C CNN
	1    5750 8100
	0    1    1    0   
$EndComp
Text Label 5600 8100 2    50   ~ 0
IN4_P
Text Label 6000 8100 0    50   ~ 0
IN4_N
Wire Wire Line
	6000 8100 5900 8100
Text Label 3500 10000 0    50   ~ 0
LVDS_4B_N
Text Label 3500 9900 0    50   ~ 0
LVDS_4B_P
Wire Wire Line
	2350 8200 2350 8300
Connection ~ 2350 8200
Connection ~ 2350 8400
Connection ~ 2350 8300
Wire Wire Line
	2350 8300 2350 8400
Text Label 7550 2050 0    50   ~ 0
3V3_1
Wire Wire Line
	3450 3950 4250 3950
Wire Wire Line
	3450 4050 4250 4050
Wire Wire Line
	3450 5150 4250 5150
Wire Wire Line
	3450 5250 4250 5250
Text Label 3500 5150 0    50   ~ 0
DEBUG_AC_P
Text Label 3500 5250 0    50   ~ 0
DEBUG_AC_N
Text Label 3500 3950 0    50   ~ 0
ADC_AC_P
Text Label 3500 4050 0    50   ~ 0
ADC_AC_N
$Comp
L device:C C5
U 1 1 5E89D866
P 3550 1800
F 0 "C5" V 3500 1650 50  0000 C CNN
F 1 "0.1 uF" V 3500 2000 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3588 1650 50  0001 C CNN
F 3 "" H 3550 1800 50  0001 C CNN
	1    3550 1800
	0    1    1    0   
$EndComp
$Comp
L power-azonenberg:LT3042 U6
U 1 1 5EDC4E33
P 8150 4000
F 0 "U6" H 8475 4975 50  0000 C CNN
F 1 "LT3042" H 8475 4884 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_10_0.5MM_3x3MM" H 8150 4000 50  0001 C CNN
F 3 "" H 8150 4000 50  0001 C CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
Text Label 9100 2550 0    50   ~ 0
RSET
Text Label 7550 3250 2    50   ~ 0
3V3_1
$Comp
L device:C C26
U 1 1 5EDC602F
P 7550 3400
F 0 "C26" H 7435 3354 50  0000 R CNN
F 1 "4.7 uF" H 7435 3445 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 7588 3250 50  0001 C CNN
F 3 "" H 7550 3400 50  0001 C CNN
	1    7550 3400
	-1   0    0    1   
$EndComp
Text Label 7550 3650 2    50   ~ 0
GND
Wire Wire Line
	7550 3650 7550 3550
Wire Wire Line
	7550 3650 8050 3650
Wire Wire Line
	8050 3650 8050 3750
Connection ~ 8050 3650
Wire Wire Line
	7550 3250 8050 3250
Wire Wire Line
	8050 3250 8050 3350
Connection ~ 8050 3250
Connection ~ 8050 3350
Wire Wire Line
	8050 3350 8050 3450
Wire Wire Line
	8050 3750 8050 3950
Connection ~ 8050 3750
Text Label 8900 3650 0    50   ~ 0
3V3_1
NoConn ~ 8900 3550
Text Label 8900 3750 0    50   ~ 0
RSET
Wire Wire Line
	8900 3350 8900 3250
$Comp
L device:C C27
U 1 1 5EDF52CC
P 9750 3400
F 0 "C27" H 9635 3354 50  0000 R CNN
F 1 "4.7 uF" H 9635 3445 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 9788 3250 50  0001 C CNN
F 3 "" H 9750 3400 50  0001 C CNN
	1    9750 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 3250 9750 3250
Text Label 9750 3250 0    50   ~ 0
A1V8
Text Label 9750 3550 0    50   ~ 0
GND
Connection ~ 8900 3250
NoConn ~ 9650 6800
NoConn ~ 9650 6900
NoConn ~ 7400 7000
$Comp
L device:C C28
U 1 1 5EE6112E
P 8200 4400
F 0 "C28" H 8085 4354 50  0000 R CNN
F 1 "0.47 uF" H 8085 4445 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8238 4250 50  0001 C CNN
F 3 "" H 8200 4400 50  0001 C CNN
	1    8200 4400
	-1   0    0    1   
$EndComp
Text Notes 8200 4700 0    50   ~ 0
Ref plane changing for LCLK
Text Label 8200 4250 2    50   ~ 0
3V3
Text Label 8200 4550 2    50   ~ 0
1V8
Text Notes 8200 5300 0    50   ~ 0
Ref plane changing for data
$Comp
L device:C C29
U 1 1 5EF00FAC
P 8200 5000
F 0 "C29" H 8085 4954 50  0000 R CNN
F 1 "0.47 uF" H 8085 5045 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8238 4850 50  0001 C CNN
F 3 "" H 8200 5000 50  0001 C CNN
	1    8200 5000
	-1   0    0    1   
$EndComp
Text Label 8200 5150 2    50   ~ 0
1V8
Text Label 8200 4850 2    50   ~ 0
2V5
$Comp
L device:C C30
U 1 1 5EF01FC2
P 8750 5000
F 0 "C30" H 8635 4954 50  0000 R CNN
F 1 "0.47 uF" H 8635 5045 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8788 4850 50  0001 C CNN
F 3 "" H 8750 5000 50  0001 C CNN
	1    8750 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 4850 8200 4850
Wire Wire Line
	8200 5150 8750 5150
$Comp
L device:C C31
U 1 1 5EF20BC2
P 9250 5000
F 0 "C31" H 9135 4954 50  0000 R CNN
F 1 "0.47 uF" H 9135 5045 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9288 4850 50  0001 C CNN
F 3 "" H 9250 5000 50  0001 C CNN
	1    9250 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 4850 8750 4850
Connection ~ 8750 4850
Wire Wire Line
	8750 5150 9250 5150
Connection ~ 8750 5150
$Comp
L device:C C?
U 1 1 5EF3F53B
P 9800 5000
F 0 "C?" H 9685 4954 50  0000 R CNN
F 1 "0.47 uF" H 9685 5045 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9838 4850 50  0001 C CNN
F 3 "" H 9800 5000 50  0001 C CNN
	1    9800 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 4850 9250 4850
Connection ~ 9250 4850
Wire Wire Line
	9250 5150 9800 5150
Connection ~ 9250 5150
$EndSCHEMATC
