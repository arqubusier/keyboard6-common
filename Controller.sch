EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J2
U 1 1 6067D3AF
P 2860 4540
F 0 "J2" H 2917 5007 50  0000 C CNN
F 1 "USB_B_Micro" H 2917 4916 50  0000 C CNN
F 2 "keyboard6:USB_mini_b_TE_ 1734035-2" H 3010 4490 50  0001 C CNN
F 3 "~" H 3010 4490 50  0001 C CNN
	1    2860 4540
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 606865AF
P 2190 3760
F 0 "C3" H 2305 3806 50  0000 L CNN
F 1 "0.1u" H 2305 3715 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2228 3610 50  0001 C CNN
F 3 "~" H 2190 3760 50  0001 C CNN
	1    2190 3760
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 606867B0
P 4680 3630
F 0 "C6" V 4600 3700 50  0000 L CNN
F 1 "0.1u" V 4730 3700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4718 3480 50  0001 C CNN
F 3 "~" H 4680 3630 50  0001 C CNN
	1    4680 3630
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 60686B4F
P 1460 3770
F 0 "C4" H 1575 3816 50  0000 L CNN
F 1 "10u" H 1575 3725 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1498 3620 50  0001 C CNN
F 3 "~" H 1460 3770 50  0001 C CNN
	1    1460 3770
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60687B97
P 4870 2680
F 0 "R1" H 4940 2726 50  0000 L CNN
F 1 "4.7k" H 4940 2635 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4800 2680 50  0001 C CNN
F 3 "~" H 4870 2680 50  0001 C CNN
	1    4870 2680
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60688329
P 3880 4640
F 0 "R3" V 3970 4640 50  0000 C CNN
F 1 "22" V 4070 4640 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3810 4640 50  0001 C CNN
F 3 "~" H 3880 4640 50  0001 C CNN
	1    3880 4640
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60688965
P 3880 4540
F 0 "R2" V 3673 4540 50  0000 C CNN
F 1 "22" V 3764 4540 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3810 4540 50  0001 C CNN
F 3 "~" H 3880 4540 50  0001 C CNN
	1    3880 4540
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3730 7300 3380
$Comp
L power:GND #PWR0101
U 1 1 607155A7
P 2190 5230
F 0 "#PWR0101" H 2190 4980 50  0001 C CNN
F 1 "GND" H 2195 5057 50  0000 C CNN
F 2 "" H 2190 5230 50  0001 C CNN
F 3 "" H 2190 5230 50  0001 C CNN
	1    2190 5230
	1    0    0    -1  
$EndComp
Wire Wire Line
	2860 5230 2860 5020
Wire Wire Line
	2190 5230 2860 5230
Text GLabel 2380 5230 3    50   Input ~ 0
GND1
Text GLabel 7100 3420 3    50   Input ~ 0
GND1
Text GLabel 3700 3350 0    50   Input ~ 0
GND1
Text GLabel 2800 3530 1    50   Input ~ 0
UVCC
Text GLabel 4150 3830 0    50   Input ~ 0
UVCC
Text GLabel 4870 2420 1    50   Input ~ 0
UVCC
Text GLabel 7400 3420 3    50   Input ~ 0
UVCC
$Comp
L Device:Fuse F1
U 1 1 60840793
P 3160 3850
F 0 "F1" H 3220 3896 50  0000 L CNN
F 1 "500m" H 3220 3805 50  0000 L CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 3090 3850 50  0001 C CNN
F 3 "~" H 3160 3850 50  0001 C CNN
	1    3160 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2190 5230 2190 4040
Wire Wire Line
	1790 3910 1790 4040
Wire Wire Line
	1790 4040 2190 4040
Connection ~ 2190 4040
Wire Wire Line
	2190 4040 2190 3910
Wire Wire Line
	2190 3530 2190 3610
Wire Wire Line
	2190 3530 1790 3530
Wire Wire Line
	1790 3530 1790 3610
Connection ~ 2190 3530
$Comp
L Device:C C2
U 1 1 60686208
P 1790 3760
F 0 "C2" H 1905 3806 50  0000 L CNN
F 1 "1u" H 1905 3715 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1828 3610 50  0001 C CNN
F 3 "~" H 1790 3760 50  0001 C CNN
	1    1790 3760
	1    0    0    -1  
$EndComp
Wire Wire Line
	1790 3530 1460 3530
Wire Wire Line
	1460 3530 1460 3620
Connection ~ 1790 3530
Wire Wire Line
	1460 3920 1460 4040
Wire Wire Line
	1460 4040 1790 4040
Connection ~ 1790 4040
Wire Wire Line
	4870 2530 4870 2420
Text GLabel 4500 3630 0    50   Input ~ 0
GND1
$Comp
L Device:C C7
U 1 1 609349BE
P 4920 4480
F 0 "C7" H 5035 4526 50  0000 L CNN
F 1 "1u" H 5035 4435 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4958 4330 50  0001 C CNN
F 3 "~" H 4920 4480 50  0001 C CNN
	1    4920 4480
	1    0    0    -1  
$EndComp
Text GLabel 4920 4630 3    50   Input ~ 0
GND1
Wire Wire Line
	4500 3630 4530 3630
Text GLabel 5470 6430 0    50   Input ~ 0
GND1
Wire Wire Line
	5700 6430 5600 6430
Connection ~ 5600 6430
Wire Wire Line
	5600 6430 5470 6430
$Comp
L Device:C C1
U 1 1 60983234
P 3990 3230
F 0 "C1" V 3830 3160 50  0000 C CNN
F 1 "32p" V 3830 3310 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4028 3080 50  0001 C CNN
F 3 "~" H 3990 3230 50  0001 C CNN
	1    3990 3230
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 60984579
P 3990 3430
F 0 "C5" V 4140 3360 50  0000 C CNN
F 1 "32p" V 4140 3530 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4028 3280 50  0001 C CNN
F 3 "~" H 3990 3430 50  0001 C CNN
	1    3990 3430
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 609AA1F0
P 4470 3330
F 0 "Y1" V 4424 3418 50  0000 L CNN
F 1 "16MHz" V 4515 3418 50  0000 L CNN
F 2 "keyboard6:Crystal_CSM-7X_SMD" H 4470 3330 50  0001 C CNN
F 3 "~" H 4470 3330 50  0001 C CNN
	1    4470 3330
	0    1    1    0   
$EndComp
Wire Wire Line
	4470 3230 4140 3230
Connection ~ 4470 3230
Connection ~ 4470 3430
Wire Wire Line
	3840 3230 3820 3230
Wire Wire Line
	3820 3230 3820 3350
Wire Wire Line
	3820 3350 3700 3350
NoConn ~ 3160 4740
NoConn ~ 7200 3380
Text HLabel 6470 5430 2    50   Output ~ 0
col5
Text HLabel 6470 5530 2    50   Output ~ 0
col4
Text HLabel 6470 5630 2    50   Output ~ 0
col3
Text HLabel 6470 5730 2    50   Output ~ 0
col2
Text HLabel 6470 5830 2    50   Output ~ 0
col1
Text HLabel 6470 5930 2    50   Output ~ 0
col0
Wire Wire Line
	2760 4940 2760 5020
Wire Wire Line
	2760 5020 2860 5020
Connection ~ 2860 5020
Wire Wire Line
	2860 5020 2860 4940
Text GLabel 6740 5130 2    50   Input ~ 0
GND1
Text Notes 6770 5050 0    50   ~ 0
HWB tied to ground means that the\nbootloader will be executed \n(assuming correct WHBE fuse value)
$Comp
L Switch:SW_Push_Dual SW30
U 1 1 6068AC98
P 4530 2830
F 0 "SW30" H 4530 3115 50  0000 C CNN
F 1 "SW_Push_Dual" H 4530 3024 50  0000 C CNN
F 2 "keyboard6:SW_E_SW_TL_3303" H 4530 3030 50  0001 C CNN
F 3 "~" H 4530 3030 50  0001 C CNN
	1    4530 2830
	1    0    0    -1  
$EndComp
Wire Wire Line
	4330 2830 4330 3030
Text GLabel 4330 2880 0    50   Input ~ 0
GND1
$Comp
L Connector:AudioJack4 J1
U 1 1 6068FFB3
P 7200 3180
F 0 "J1" V 7111 2850 50  0000 R CNN
F 1 "AudioJack4" V 7202 2850 50  0000 R CNN
F 2 "keyboard6:TRRS_smd_SparkFun_PRT-12639" H 7200 3180 50  0001 C CNN
F 3 "~" H 7200 3180 50  0001 C CNN
	1    7200 3180
	0    -1   1    0   
$EndComp
Wire Wire Line
	7100 3380 7100 3420
Wire Wire Line
	7400 3420 7400 3380
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60C7D5DB
P 3060 3530
F 0 "#FLG0101" H 3060 3605 50  0001 C CNN
F 1 "PWR_FLAG" H 3060 3703 50  0000 C CNN
F 2 "" H 3060 3530 50  0001 C CNN
F 3 "~" H 3060 3530 50  0001 C CNN
	1    3060 3530
	1    0    0    -1  
$EndComp
Text HLabel 6470 3630 2    50   Input ~ 0
row3
Text HLabel 6470 3930 2    50   Input ~ 0
row4
Text HLabel 6470 3530 2    50   Input ~ 0
row2
Text HLabel 6470 3430 2    50   Input ~ 0
row1
Text HLabel 6470 4930 2    50   Input ~ 0
row0
NoConn ~ 6470 4030
Text Label 4090 4540 0    50   ~ 0
USB_FULL_P
Text Label 4090 4640 0    50   ~ 0
USB_FULL_N
Text Label 3210 4540 0    50   ~ 0
USB_FULL1_P
Text Label 3200 4640 0    50   ~ 0
USB_FULL1_N
Wire Wire Line
	4140 3430 4470 3430
Wire Wire Line
	3820 3350 3820 3430
Wire Wire Line
	3820 3430 3840 3430
Connection ~ 3820 3350
Text Label 3160 4080 0    50   ~ 0
VBUS
Wire Wire Line
	2190 3530 3060 3530
Wire Wire Line
	3160 3530 3160 3700
Wire Wire Line
	3160 4000 3160 4340
$Comp
L Device:C C13
U 1 1 608DA9BC
P 4360 3980
F 0 "C13" H 4470 4030 50  0000 L CNN
F 1 "0.1u" H 4470 3940 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4398 3830 50  0001 C CNN
F 3 "~" H 4360 3980 50  0001 C CNN
	1    4360 3980
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 608F07F8
P 5960 2110
F 0 "C8" H 6075 2156 50  0000 L CNN
F 1 "0.1u" H 6075 2065 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5998 1960 50  0001 C CNN
F 3 "~" H 5960 2110 50  0001 C CNN
	1    5960 2110
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 608FD6B9
P 6390 2110
F 0 "C9" H 6505 2156 50  0000 L CNN
F 1 "0.1u" H 6505 2065 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6428 1960 50  0001 C CNN
F 3 "~" H 6390 2110 50  0001 C CNN
	1    6390 2110
	1    0    0    -1  
$EndComp
Connection ~ 3060 3530
Wire Wire Line
	3060 3530 3160 3530
Wire Wire Line
	6390 1960 5960 1960
Text GLabel 6170 1960 1    50   Input ~ 0
UVCC
Text Notes 6750 1990 0    50   ~ 0
The double bypass capacitors are for the hidden power pins.\nThese should be routed to the respective pins separately.
Text GLabel 6620 2550 1    50   Input ~ 0
UVCC
Wire Wire Line
	6360 2550 6790 2550
Wire Wire Line
	6360 2850 6790 2850
$Comp
L Device:C C12
U 1 1 608F1A83
P 6790 2700
F 0 "C12" H 6905 2746 50  0000 L CNN
F 1 "0.1u" H 6905 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6828 2550 50  0001 C CNN
F 3 "~" H 6790 2700 50  0001 C CNN
	1    6790 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 608F0DE8
P 6360 2700
F 0 "C11" H 6475 2746 50  0000 L CNN
F 1 "0.1u" H 6475 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6398 2550 50  0001 C CNN
F 3 "~" H 6360 2700 50  0001 C CNN
	1    6360 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1960 5960 1960
Connection ~ 5960 1960
Wire Wire Line
	5960 2260 6390 2260
Wire Wire Line
	5800 2550 6360 2550
Connection ~ 6360 2550
Wire Wire Line
	4730 2830 4870 2830
Wire Wire Line
	4730 3030 4870 3030
Wire Wire Line
	4870 2830 4870 3030
Connection ~ 4870 2830
Connection ~ 4870 3030
Text GLabel 6170 2260 3    50   Input ~ 0
GND1
Text GLabel 6580 2850 3    50   Input ~ 0
GND1
NoConn ~ 6300 3130
NoConn ~ 6300 3030
Wire Wire Line
	5100 4330 4920 4330
Wire Wire Line
	5600 6330 5600 6430
Wire Wire Line
	4830 3630 5100 3630
Wire Wire Line
	6470 5430 6300 5430
Wire Wire Line
	6470 5530 6300 5530
Wire Wire Line
	6470 5630 6300 5630
Wire Wire Line
	6300 5730 6470 5730
Wire Wire Line
	6470 5830 6300 5830
Wire Wire Line
	6300 5930 6470 5930
Wire Wire Line
	6740 5130 6300 5130
Wire Wire Line
	6470 4030 6300 4030
Wire Wire Line
	6300 3930 6470 3930
Wire Wire Line
	6300 3630 6470 3630
Wire Wire Line
	6470 3530 6300 3530
Wire Wire Line
	6300 3430 6470 3430
Wire Wire Line
	6470 4930 6300 4930
NoConn ~ 6300 4830
NoConn ~ 6300 4630
Wire Wire Line
	5800 2730 5800 2550
NoConn ~ 6300 4730
NoConn ~ 6300 4530
NoConn ~ 6300 4430
NoConn ~ 6300 4330
NoConn ~ 6300 4230
Wire Wire Line
	5100 3230 4470 3230
Wire Wire Line
	5100 3430 4470 3430
Wire Wire Line
	5700 6330 5700 6430
Wire Wire Line
	5700 2730 5700 1960
Wire Wire Line
	4870 3030 5100 3030
Wire Wire Line
	7300 3730 6300 3730
NoConn ~ 6300 3330
NoConn ~ 6300 3230
NoConn ~ 6300 5230
Text GLabel 5210 2260 3    50   Input ~ 0
GND1
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU mcu1
U 1 1 6067BB5F
P 5700 4530
F 0 "mcu1" H 5870 2750 50  0000 C CNN
F 1 "ATmega32U4-AU" H 6090 2640 50  0000 C CNN
F 2 "keyboard6:QFP-44_10x10_Pitch0.8mm_Hand_solder" H 5700 4530 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 5700 4530 50  0001 C CNN
	1    5700 4530
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 608A4BF1
P 5210 2110
F 0 "C10" H 5325 2156 50  0000 L CNN
F 1 "0.1u" H 5325 2065 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5248 1960 50  0001 C CNN
F 3 "~" H 5210 2110 50  0001 C CNN
	1    5210 2110
	1    0    0    -1  
$EndComp
Wire Wire Line
	5210 1960 5600 1960
Wire Wire Line
	5600 1960 5600 2730
Text GLabel 5210 1960 1    50   Input ~ 0
UVCC
Wire Wire Line
	3160 4540 3730 4540
Wire Wire Line
	3730 4640 3160 4640
Wire Wire Line
	4030 4640 4780 4640
Wire Wire Line
	4780 4640 4780 4130
Wire Wire Line
	4780 4130 5100 4130
Wire Wire Line
	5100 4030 4700 4030
Wire Wire Line
	4700 4030 4700 4540
Wire Wire Line
	4700 4540 4030 4540
Text GLabel 4360 4130 3    50   Input ~ 0
GND1
Wire Wire Line
	4150 3830 4360 3830
Connection ~ 4360 3830
Wire Wire Line
	4360 3830 5100 3830
Connection ~ 2190 5230
Text Notes 2790 2820 0    50   ~ 0
Each crystal capacitor value was \ndetermined by the formula\nC = 2*CL – 2*Cstray\nCL is the crystal's load capacitance\nCstray is the parasitic capacitance\nthus,\nC = 2*20 - 2*4 = 32 [pF]
$EndSCHEMATC
