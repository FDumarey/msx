10 SCREEN 1: KEY OFF
20 LOCATE 0,10: PRINT "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
21 VPOKE 6144+0+1*32,224: REM name table for screen 1, + column + row*32
22 VPOKE 6144+31+1*32,225
23 VPOKE 6144+31+23*32,226
30 ST=ASC("A")*8
40 FOR I=0 TO 207
50 READ R$
60 VPOKE ST+I, VAL("&H"+R$): REM pattern table for screen 1
70 NEXT I
71 VPOKE 8192+8, &H6B: REM color table for screen 1, &Hforeback ground color for 8 patterns
72 VPOKE 8192+9, &H7C
73 VPOKE 8192+10, &H8E
74 VPOKE 8192+11, &H9F
80 GOTO 80

1000 DATA 02,06,0E,1E,3E,76,E6,76,FE,CC,D8,FE,CC,D8,F0,E0
1010 DATA 7E,FC,C0,C0,C0,C0,FC,7E,FE,FE,CC,D8,F0,E0,C0,80
1020 DATA FE,FE,00,FE,FE,00,FE,FE,FF,FE,C0,FC,F8,C0,C0,80
1030 DATA 7E,FC,C0,C0,C2,C6,FE,7F,C6,C6,C6,FE,FE,C6,C6,84
1040 DATA 38,38,38,38,38,38,30,20,02,06,06,06,06,06,7E,FE
1050 DATA CE,DC,F8,F0,F8,DC,CE,86,40,C0,C0,C0,C0,C0,FE,FC
1060 DATA 82,C6,EE,FE,FE,D6,C6,C6,C6,E6,F6,FE,DE,CE,C6,42
1070 DATA 7C,FE,C6,C6,C6,C6,FE,7C,FC,FE,06,FE,FC,C0,C0,80
1080 DATA 7C,FE,C6,C6,D6,FE,7C,10,C8,DC,CE,DC,F8,DC,CE,86
1090 DATA FE,FE,80,FE,FE,02,FE,FE,FE,FC,30,30,30,30,30,20
1100 DATA 82,C6,C6,C6,C6,C6,FE,7C,03,06,CC,D8,F0,E0,C0,80
1110 DATA C6,C6,D6,FE,FE,EE,C6,82,86,CE,FC,78,3C,7E,E6,C2
1120 DATA 87,CE,FC,78,30,30,30,20,7E,FE,1C,38,70,E0,FE,FC

