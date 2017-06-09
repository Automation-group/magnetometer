EESchema Schematic File Version 2
LIBS:LFcapitors
LIBS:LFcomponents
LIBS:LFconnectors
LIBS:LFdiod
LIBS:LFpower
LIBS:LFresistor
LIBS:LFtransformator
LIBS:LFtransistor
LIBS:magnetometer-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L RESISTOR_0_125W R8
U 1 1 5818919A
P 8000 5700
F 0 "R8" H 8100 5850 71  0000 C CNN
F 1 "100" H 8100 5550 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 8000 5700 60  0001 C CNN
F 3 "" H 8000 5700 60  0000 C CNN
	1    8000 5700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_0_125W R7
U 1 1 581892A8
P 8000 5050
F 0 "R7" H 8100 5200 71  0000 C CNN
F 1 "100" H 8100 4900 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 8000 5050 60  0001 C CNN
F 3 "" H 8000 5050 60  0000 C CNN
	1    8000 5050
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_0_125W R6
U 1 1 58189310
P 8000 4400
F 0 "R6" H 8100 4550 71  0000 C CNN
F 1 "100" H 8100 4250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 8000 4400 60  0001 C CNN
F 3 "" H 8000 4400 60  0000 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_10W R12
U 1 1 5818982B
P 9300 6050
F 0 "R12" V 9350 6250 71  0000 C CNN
F 1 "0.33" V 9450 6250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 9300 6050 60  0001 C CNN
F 3 "" H 9300 6050 60  0000 C CNN
	1    9300 6050
	0    1    1    0   
$EndComp
$Comp
L RESISTOR_10W R14
U 1 1 58189A30
P 9800 6050
F 0 "R14" V 9850 6250 71  0000 C CNN
F 1 "0.33" V 9950 6250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 9800 6050 60  0001 C CNN
F 3 "" H 9800 6050 60  0000 C CNN
	1    9800 6050
	0    1    1    0   
$EndComp
$Comp
L RESISTOR_10W R16
U 1 1 58189ABA
P 10300 6050
F 0 "R16" V 10350 6250 71  0000 C CNN
F 1 "0.33" V 10450 6250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 10300 6050 60  0001 C CNN
F 3 "" H 10300 6050 60  0000 C CNN
	1    10300 6050
	0    1    1    0   
$EndComp
Text Label 9800 7100 1    60   ~ 0
GND
$Comp
L RESISTOR_10W R17
U 1 1 58189F54
P 10300 6500
F 0 "R17" V 10350 6700 71  0000 C CNN
F 1 "0.33" V 10450 6700 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 10300 6500 60  0001 C CNN
F 3 "" H 10300 6500 60  0000 C CNN
	1    10300 6500
	0    1    1    0   
$EndComp
$Comp
L PIN_F_2 XS3
U 1 1 5818A0F4
P 13600 2550
F 0 "XS3" H 13750 2750 50  0000 L BNN
F 1 "DG126-5.0-02P-14" H 13450 2650 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-02P-14" H 14050 2700 50  0001 C CNN
F 3 "" H 13600 2550 60  0000 C CNN
	1    13600 2550
	1    0    0    -1  
$EndComp
Text Notes 14150 2700 0    60   ~ 0
К нагрузке и\nпитанию +90-130 В
$Comp
L RESISTOR_10W R15
U 1 1 5818A5B8
P 9800 6500
F 0 "R15" V 9850 6700 71  0000 C CNN
F 1 "0.33" V 9950 6700 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 9800 6500 60  0001 C CNN
F 3 "" H 9800 6500 60  0000 C CNN
	1    9800 6500
	0    1    1    0   
$EndComp
$Comp
L RESISTOR_10W R13
U 1 1 5818A6EC
P 9300 6500
F 0 "R13" V 9350 6700 71  0000 C CNN
F 1 "0.33" V 9450 6700 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 9300 6500 60  0001 C CNN
F 3 "" H 9300 6500 60  0000 C CNN
	1    9300 6500
	0    1    1    0   
$EndComp
$Comp
L OP07 DA1
U 1 1 5818AAF8
P 5700 4950
F 0 "DA1" H 6100 5100 60  0000 C CNN
F 1 "OP07" H 6100 5000 60  0000 C CNN
F 2 "IWsmd_case:SOIC8" H 5700 4950 60  0001 C CNN
F 3 "" H 5700 4950 60  0000 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
$Comp
L CAPITORS C3
U 1 1 5818AEA1
P 7050 5550
F 0 "C3" V 7100 5300 71  0000 C CNN
F 1 "0.1 мк" V 7250 5300 71  0000 C CNN
F 2 "IWsmd_case:SMD0805" H 7050 5550 60  0001 C CNN
F 3 "" H 7050 5550 60  0000 C CNN
	1    7050 5550
	0    1    1    0   
$EndComp
$Comp
L CAPITORS C4
U 1 1 5818B20B
P 7350 5550
F 0 "C4" V 7400 5300 71  0000 C CNN
F 1 "0.1 мк" V 7550 5300 71  0000 C CNN
F 2 "IWsmd_case:SMD0805" H 7350 5550 60  0001 C CNN
F 3 "" H 7350 5550 60  0000 C CNN
	1    7350 5550
	0    -1   1    0   
$EndComp
Text Label 7050 6150 1    60   ~ 0
GND
Text Label 7300 5450 2    60   ~ 0
+15V
Text Label 7600 5250 2    60   ~ 0
-15V
$Comp
L RESISTOR_0_125W R9
U 1 1 5818B7B7
P 8400 5900
F 0 "R9" V 8500 6150 71  0000 C CNN
F 1 "100 к" V 8600 6150 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 8400 5900 60  0001 C CNN
F 3 "" H 8400 5900 60  0000 C CNN
	1    8400 5900
	0    -1   1    0   
$EndComp
$Comp
L RESISTOR_0_125W R10
U 1 1 5818BB4C
P 8550 5200
F 0 "R10" V 8650 5450 71  0000 C CNN
F 1 "100 к" V 8750 5450 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 8550 5200 60  0001 C CNN
F 3 "" H 8550 5200 60  0000 C CNN
	1    8550 5200
	0    -1   1    0   
$EndComp
$Comp
L RESISTOR_0_125W R11
U 1 1 5818C02C
P 8700 4600
F 0 "R11" V 8800 4800 71  0000 C CNN
F 1 "100 к" V 8900 4850 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 8700 4600 60  0001 C CNN
F 3 "" H 8700 4600 60  0000 C CNN
	1    8700 4600
	0    -1   1    0   
$EndComp
$Comp
L CAPITORS C1
U 1 1 5818CF9C
P 4150 5150
F 0 "C1" V 4200 5050 71  0000 C CNN
F 1 "1 мк" V 4350 5000 71  0000 C CNN
F 2 "IWsmd_case:SMD0805" H 4150 5150 60  0001 C CNN
F 3 "" H 4150 5150 60  0000 C CNN
	1    4150 5150
	0    -1   1    0   
$EndComp
$Comp
L RESISTOR_0_125W R4
U 1 1 5818D2D1
P 4250 5050
F 0 "R4" H 4400 5250 71  0000 C CNN
F 1 "10 к" H 4400 5150 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 4250 5050 60  0001 C CNN
F 3 "" H 4250 5050 60  0000 C CNN
	1    4250 5050
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_0_125W R3
U 1 1 5818D4E1
P 3800 5050
F 0 "R3" H 3950 5250 71  0000 C CNN
F 1 "10 к" H 3950 5150 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 3800 5050 60  0001 C CNN
F 3 "" H 3800 5050 60  0000 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
$Comp
L CAPITORS C2
U 1 1 5818D569
P 4600 5150
F 0 "C2" V 4650 5050 71  0000 C CNN
F 1 "1 мк" V 4800 5000 71  0000 C CNN
F 2 "IWsmd_case:SMD0805" H 4600 5150 60  0001 C CNN
F 3 "" H 4600 5150 60  0000 C CNN
	1    4600 5150
	0    -1   1    0   
$EndComp
Text Label 4150 5600 1    60   ~ 0
GND
Text Label 4600 5600 1    60   ~ 0
GND
$Comp
L RESISTOR_0_125W R5
U 1 1 5818DCD2
P 4950 5150
F 0 "R5" V 4650 5150 71  0000 C CNN
F 1 "100 к" V 4750 5150 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 4950 5150 60  0001 C CNN
F 3 "" H 4950 5150 60  0000 C CNN
	1    4950 5150
	0    1    1    0   
$EndComp
Text Label 4950 5600 1    60   ~ 0
GND
Text Notes 3750 4750 0    60   ~ 0
Фильтр НЧ на 15 Гц
$Comp
L RESISTOR_0_125W R1
U 1 1 5818EB47
P 3650 4600
F 0 "R1" V 3700 4350 71  0000 C CNN
F 1 "5.6 к" V 3850 4350 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 3650 4600 60  0001 C CNN
F 3 "" H 3650 4600 60  0000 C CNN
	1    3650 4600
	0    1    1    0   
$EndComp
Text Label 3650 5850 1    60   ~ 0
-15V
Text Label 3650 4300 3    60   ~ 0
+15V
$Comp
L PIN_F_5 XS2
U 1 1 5818FA9E
P 3350 6300
F 0 "XS2" H 3500 6500 50  0000 L BNN
F 1 "WF-5" H 3450 6400 50  0000 L BNN
F 2 "IWconnectors:WF-5" H 3800 6450 50  0001 C CNN
F 3 "" H 3350 6300 60  0000 C CNN
	1    3350 6300
	-1   0    0    -1  
$EndComp
Text Label 3700 6500 2    60   ~ 0
+15V
Text Label 3700 6700 2    60   ~ 0
-15V
Text Label 13300 2550 0    60   ~ 0
GND
$Comp
L PIN_F_3 XS1
U 1 1 581908E1
P 3300 4950
F 0 "XS1" H 3600 5150 50  0000 L BNN
F 1 "WF-3" H 3550 5050 50  0000 L BNN
F 2 "IWconnectors:WF-3" H 3750 5100 50  0001 C CNN
F 3 "" H 3300 4950 60  0000 C CNN
	1    3300 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 4400 9900 4400
Wire Wire Line
	8250 5050 9400 5050
Wire Wire Line
	8250 5700 8950 5700
Wire Wire Line
	9300 3750 9300 5500
Wire Wire Line
	9300 3750 13150 3750
Wire Wire Line
	10300 3750 10300 4200
Wire Wire Line
	9800 3750 9800 4800
Connection ~ 9800 3750
Connection ~ 10300 3750
Wire Wire Line
	9300 6050 9300 5950
Wire Wire Line
	9800 5250 9800 6050
Wire Wire Line
	10300 4600 10300 6050
Wire Wire Line
	9300 6300 9300 6500
Wire Wire Line
	5300 6400 13150 6400
Wire Wire Line
	9800 6300 9800 6500
Wire Wire Line
	10300 6300 10300 6500
Connection ~ 9800 6400
Wire Wire Line
	7900 5700 8000 5700
Wire Wire Line
	7900 3650 7900 5700
Wire Wire Line
	6800 5050 8000 5050
Wire Wire Line
	8000 4400 7900 4400
Connection ~ 7900 5050
Connection ~ 10300 6400
Wire Wire Line
	13300 2550 13600 2550
Connection ~ 9300 6400
Wire Wire Line
	9300 6750 9300 6850
Wire Wire Line
	9300 6850 10300 6850
Wire Wire Line
	10300 6850 10300 6750
Wire Wire Line
	9800 6750 9800 7100
Connection ~ 9800 6850
Wire Wire Line
	5400 5250 5300 5250
Wire Wire Line
	5300 5250 5300 6400
Wire Wire Line
	6800 5450 7300 5450
Wire Wire Line
	7050 5450 7050 5550
Wire Wire Line
	6800 5250 7600 5250
Wire Wire Line
	7350 5250 7350 5550
Wire Wire Line
	7050 5800 7050 6150
Wire Wire Line
	7350 5800 7350 5900
Wire Wire Line
	7350 5900 7050 5900
Connection ~ 7050 5900
Connection ~ 7050 5450
Connection ~ 7350 5250
Wire Wire Line
	8400 5900 8400 5700
Connection ~ 8400 5700
Wire Wire Line
	8550 5200 8550 5050
Connection ~ 8550 5050
Wire Wire Line
	8400 6150 8400 6400
Connection ~ 8400 6400
Wire Wire Line
	4500 5050 5400 5050
Wire Wire Line
	4150 5150 4150 5050
Wire Wire Line
	4050 5050 4250 5050
Connection ~ 4150 5050
Wire Wire Line
	4600 5150 4600 5050
Connection ~ 4600 5050
Wire Wire Line
	4150 5400 4150 5600
Wire Wire Line
	4600 5400 4600 5600
Wire Wire Line
	4950 5150 4950 5050
Connection ~ 4950 5050
Wire Wire Line
	4950 5400 4950 5600
Wire Wire Line
	3650 4600 3650 4300
Wire Wire Line
	3650 5500 3650 5850
Wire Wire Line
	3350 6500 3700 6500
Wire Wire Line
	3700 6700 3350 6700
Wire Wire Line
	3800 5050 3300 5050
Wire Wire Line
	3300 5150 3650 5150
Wire Wire Line
	3650 5150 3650 5250
Wire Wire Line
	3300 4950 3650 4950
Wire Wire Line
	3650 4950 3650 4850
Wire Wire Line
	8550 5450 8550 6400
Connection ~ 8550 6400
Wire Wire Line
	8700 4600 8700 4400
Connection ~ 8700 4400
Wire Wire Line
	8700 4850 8700 6400
Connection ~ 8700 6400
$Comp
L RESISTOR_TRIMMING R2
U 1 1 5821F935
P 3650 5250
F 0 "R2" V 3800 5000 71  0000 C CNN
F 1 "10 к" V 3900 5000 71  0000 C CNN
F 2 "IWcomponents:Electron_3296W" H 3650 5250 60  0001 C CNN
F 3 "" H 3650 5250 60  0000 C CNN
	1    3650 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 5500 3750 5600
Wire Wire Line
	3750 5600 3650 5600
Connection ~ 3650 5600
$Comp
L RESISTOR_10W R24
U 1 1 582490CC
P 12150 6050
F 0 "R24" V 12200 6250 71  0000 C CNN
F 1 "0.33" V 12300 6250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 12150 6050 60  0001 C CNN
F 3 "" H 12150 6050 60  0000 C CNN
	1    12150 6050
	0    1    1    0   
$EndComp
$Comp
L RESISTOR_10W R25
U 1 1 582490D2
P 12650 6050
F 0 "R25" V 12700 6250 71  0000 C CNN
F 1 "0.33" V 12800 6250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 12650 6050 60  0001 C CNN
F 3 "" H 12650 6050 60  0000 C CNN
	1    12650 6050
	0    1    1    0   
$EndComp
$Comp
L RESISTOR_10W R26
U 1 1 582490D8
P 13150 6050
F 0 "R26" V 13200 6250 71  0000 C CNN
F 1 "0.33" V 13300 6250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_10W" H 13150 6050 60  0001 C CNN
F 3 "" H 13150 6050 60  0000 C CNN
	1    13150 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	13150 3000 13150 4150
Wire Wire Line
	12650 3750 12650 4800
Connection ~ 12650 3750
Connection ~ 13150 3750
Wire Wire Line
	12150 5900 12150 6050
Wire Wire Line
	12650 5250 12650 6050
Wire Wire Line
	13150 4600 13150 6050
Connection ~ 12650 6400
Connection ~ 12150 6400
Wire Wire Line
	12150 3750 12150 5450
Connection ~ 12150 3750
$Comp
L RESISTOR_0_125W R20
U 1 1 58249CAD
P 10850 5700
F 0 "R20" H 10950 5850 71  0000 C CNN
F 1 "100" H 10950 5550 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 10850 5700 60  0001 C CNN
F 3 "" H 10850 5700 60  0000 C CNN
	1    10850 5700
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_0_125W R19
U 1 1 58249CB3
P 10850 5050
F 0 "R19" H 10950 5200 71  0000 C CNN
F 1 "100" H 10950 4900 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 10850 5050 60  0001 C CNN
F 3 "" H 10850 5050 60  0000 C CNN
	1    10850 5050
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_0_125W R18
U 1 1 58249CB9
P 10850 4400
F 0 "R18" H 10950 4550 71  0000 C CNN
F 1 "100" H 10950 4250 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 10850 4400 60  0001 C CNN
F 3 "" H 10850 4400 60  0000 C CNN
	1    10850 4400
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR_0_125W R21
U 1 1 58249CBF
P 11250 5900
F 0 "R21" V 11350 6150 71  0000 C CNN
F 1 "100 к" V 11450 6150 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 11250 5900 60  0001 C CNN
F 3 "" H 11250 5900 60  0000 C CNN
	1    11250 5900
	0    -1   1    0   
$EndComp
$Comp
L RESISTOR_0_125W R22
U 1 1 58249CC5
P 11400 5200
F 0 "R22" V 11500 5450 71  0000 C CNN
F 1 "100 к" V 11600 5450 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 11400 5200 60  0001 C CNN
F 3 "" H 11400 5200 60  0000 C CNN
	1    11400 5200
	0    -1   1    0   
$EndComp
$Comp
L RESISTOR_0_125W R23
U 1 1 58249CCB
P 11550 4600
F 0 "R23" V 11650 4800 71  0000 C CNN
F 1 "100 к" V 11750 4850 71  0000 C CNN
F 2 "IWcomponents:RESISTOR_0.25W" H 11550 4600 60  0001 C CNN
F 3 "" H 11550 4600 60  0000 C CNN
	1    11550 4600
	0    -1   1    0   
$EndComp
Wire Wire Line
	11100 4400 12750 4400
Wire Wire Line
	11100 5050 12200 5050
Wire Wire Line
	11100 5700 11750 5700
Wire Wire Line
	10750 5700 10850 5700
Wire Wire Line
	10750 3650 10750 5700
Wire Wire Line
	10850 4400 10750 4400
Connection ~ 10750 5050
Wire Wire Line
	11250 5900 11250 5700
Connection ~ 11250 5700
Wire Wire Line
	11400 5200 11400 5050
Connection ~ 11400 5050
Wire Wire Line
	11250 6150 11250 6400
Connection ~ 11250 6400
Wire Wire Line
	11400 5450 11400 6400
Connection ~ 11400 6400
Wire Wire Line
	11550 4600 11550 4400
Connection ~ 11550 4400
Wire Wire Line
	11550 4850 11550 6400
Connection ~ 11550 6400
Wire Wire Line
	7900 3650 10750 3650
Connection ~ 10750 4400
Connection ~ 7900 4400
Wire Wire Line
	10850 5050 10750 5050
Text Notes 1900 5200 0    60   ~ 0
К многооборотному\n     резистору \n       500 Ом
Wire Wire Line
	12150 6400 12150 6300
Wire Wire Line
	12650 6400 12650 6300
Wire Wire Line
	13150 6400 13150 6300
$Comp
L ACS712 DA2
U 1 1 58C6C980
P 10650 2450
F 0 "DA2" H 11200 2600 60  0000 C CNN
F 1 "ACS712ELCTR-20A-T" H 11200 2500 60  0000 C CNN
F 2 "IWsmd_case:SOIC8" H 10650 2450 60  0001 C CNN
F 3 "" H 10650 2450 60  0000 C CNN
	1    10650 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10950 2650 13600 2650
Wire Wire Line
	11050 2650 11050 2550
Wire Wire Line
	11050 2550 10950 2550
Connection ~ 11050 2650
Wire Wire Line
	10950 3000 13150 3000
Wire Wire Line
	10950 2900 11050 2900
Wire Wire Line
	11050 2900 11050 3000
Connection ~ 11050 3000
Text Label 8200 3050 0    60   ~ 0
GND
Wire Wire Line
	8200 3050 9200 3050
$Comp
L CAPITORS C5
U 1 1 58C6F3CA
P 8850 2750
F 0 "C5" H 9150 2850 71  0000 C CNN
F 1 "1000 п" H 8700 2850 71  0000 C CNN
F 2 "IWsmd_case:SMD0805" H 8850 2750 60  0001 C CNN
F 3 "" H 8850 2750 60  0000 C CNN
	1    8850 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 2750 9200 2750
Wire Wire Line
	8600 2750 8500 2750
Wire Wire Line
	8500 2750 8500 3050
Connection ~ 8500 3050
$Comp
L CAPITORS C6
U 1 1 58C70387
P 9100 3150
F 0 "C6" V 9150 2900 71  0000 C CNN
F 1 "0.1 мк" V 9300 2900 71  0000 C CNN
F 2 "IWsmd_case:SMD0805" H 9100 3150 60  0001 C CNN
F 3 "" H 9100 3150 60  0000 C CNN
	1    9100 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 3150 9100 2950
Wire Wire Line
	8850 2950 9200 2950
Text Label 8850 2950 0    60   ~ 0
+5V
Wire Wire Line
	9100 3600 9100 3400
$Comp
L PIN_F_2 XS4
U 1 1 58C7151C
P 8100 2450
F 0 "XS4" H 8400 2650 50  0000 L BNN
F 1 "WF-2" H 8350 2550 50  0000 L BNN
F 2 "IWconnectors:WF-2" H 8550 2600 50  0001 C CNN
F 3 "" H 8100 2450 60  0000 C CNN
	1    8100 2450
	-1   0    0    -1  
$EndComp
Text Notes 7250 2550 0    60   ~ 0
К АЦП
Wire Wire Line
	9200 2550 8100 2550
Text Label 8350 2450 2    60   ~ 0
GND
Wire Wire Line
	8350 2450 8100 2450
Wire Wire Line
	3350 6600 3700 6600
Text Label 3700 6300 2    60   ~ 0
+5V
Text Label 3700 6600 2    60   ~ 0
GND
Wire Wire Line
	3700 6300 3350 6300
Connection ~ 3450 6600
Wire Wire Line
	3350 6400 3450 6400
Wire Wire Line
	3450 6400 3450 6600
$Comp
L PIN_F_3 XS5
U 1 1 58C75EB8
P 9150 5600
F 0 "XS5" V 9550 5750 50  0000 L BNN
F 1 "DG126-5.0-03P-14" V 9700 5150 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-03P-14" H 9600 5750 50  0001 C CNN
F 3 "" H 9150 5600 60  0000 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
Text Notes 12050 6600 0    60   ~ 0
XS5-XS10 - IRFP240
Wire Wire Line
	9150 5600 8950 5600
Wire Wire Line
	8950 5600 8950 5700
Wire Wire Line
	9150 5800 9100 5800
Wire Wire Line
	9100 5800 9100 5950
Wire Wire Line
	9100 5950 9300 5950
Wire Wire Line
	9150 5700 9100 5700
Wire Wire Line
	9100 5700 9100 5500
Wire Wire Line
	9100 5500 9300 5500
$Comp
L PIN_F_3 XS6
U 1 1 58C77906
P 9550 4950
F 0 "XS6" V 9950 5100 50  0000 L BNN
F 1 "DG126-5.0-03P-14" V 10100 4500 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-03P-14" H 10000 5100 50  0001 C CNN
F 3 "" H 9550 4950 60  0000 C CNN
	1    9550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5050 9400 4950
Wire Wire Line
	9400 4950 9550 4950
Wire Wire Line
	9550 5050 9450 5050
Wire Wire Line
	9450 5050 9450 4800
Wire Wire Line
	9450 4800 9800 4800
Wire Wire Line
	9550 5150 9450 5150
Wire Wire Line
	9450 5150 9450 5250
Wire Wire Line
	9450 5250 9800 5250
$Comp
L PIN_F_3 XS7
U 1 1 58C78055
P 10100 4300
F 0 "XS7" V 10500 4450 50  0000 L BNN
F 1 "DG126-5.0-03P-14" V 10650 3850 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-03P-14" H 10550 4450 50  0001 C CNN
F 3 "" H 10100 4300 60  0000 C CNN
	1    10100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4400 9900 4300
Wire Wire Line
	9900 4300 10100 4300
Wire Wire Line
	10100 4400 10000 4400
Wire Wire Line
	10000 4400 10000 4200
Wire Wire Line
	10000 4200 10300 4200
Wire Wire Line
	10100 4500 10000 4500
Wire Wire Line
	10000 4500 10000 4600
Wire Wire Line
	10000 4600 10300 4600
$Comp
L PIN_F_3 XS8
U 1 1 58C78781
P 12000 5600
F 0 "XS8" V 12400 5750 50  0000 L BNN
F 1 "DG126-5.0-03P-14" V 12550 5150 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-03P-14" H 12450 5750 50  0001 C CNN
F 3 "" H 12000 5600 60  0000 C CNN
	1    12000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 5700 11750 5600
Wire Wire Line
	11750 5600 12000 5600
Wire Wire Line
	12000 5700 11900 5700
Wire Wire Line
	11900 5700 11900 5450
Wire Wire Line
	11900 5450 12150 5450
Wire Wire Line
	12000 5800 11900 5800
Wire Wire Line
	11900 5800 11900 5900
Wire Wire Line
	11900 5900 12150 5900
$Comp
L PIN_F_3 XS9
U 1 1 58C78CFC
P 12400 4950
F 0 "XS9" V 12800 5100 50  0000 L BNN
F 1 "DG126-5.0-03P-14" V 12950 4500 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-03P-14" H 12850 5100 50  0001 C CNN
F 3 "" H 12400 4950 60  0000 C CNN
	1    12400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 5250 12300 5250
Wire Wire Line
	12300 5250 12300 5150
Wire Wire Line
	12300 5150 12400 5150
Wire Wire Line
	12400 4950 12200 4950
Wire Wire Line
	12200 4950 12200 5050
Wire Wire Line
	12400 5050 12300 5050
Wire Wire Line
	12300 5050 12300 4800
Wire Wire Line
	12300 4800 12650 4800
$Comp
L PIN_F_3 XS10
U 1 1 58C79233
P 12950 4300
F 0 "XS10" V 13350 4450 50  0000 L BNN
F 1 "DG126-5.0-03P-14" V 13500 3850 50  0000 L BNN
F 2 "IWconnectors:DG126-5.0-03P-14" H 13400 4450 50  0001 C CNN
F 3 "" H 12950 4300 60  0000 C CNN
	1    12950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 4400 12750 4300
Wire Wire Line
	12750 4300 12950 4300
Wire Wire Line
	12950 4400 12850 4400
Wire Wire Line
	12850 4400 12850 4150
Wire Wire Line
	12850 4150 13150 4150
Wire Wire Line
	12950 4500 12850 4500
Wire Wire Line
	12850 4500 12850 4600
Wire Wire Line
	12850 4600 13150 4600
Text Label 9100 3600 1    60   ~ 0
GND
Connection ~ 9100 2950
Text Notes 2600 5800 0    60   ~ 0
Диапазон\nнапряжений\nделителя\nустанавливается\nот -5 до 900 мВ
$EndSCHEMATC
