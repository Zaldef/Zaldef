*version 9.1 3700631857
u 151
D? 7
R? 4
V? 2
C? 3
? 6
@libraries
@analysis
.TRAN 1 0 0 0
+0 0s
+1 100ms
+3 10us
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 4131 
@status
n 0 122:03:06:14:35:35;1649266535 e 
s 0 122:03:17:21:04:16;1650240256 e 
c 122:03:17:21:07:01;1650240421
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 340 270 h
@parts
part 5 D1N4002 190 240 v
a 0 xp 9 0 17 -6 hln 100 REFDES=D3
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D3
a 0 sp 11 0 7 4 hln 100 PART=D1N4002
part 6 D1N4002 250 240 v
a 0 xp 9 0 17 -6 hln 100 REFDES=D4
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D4
a 0 sp 11 0 7 4 hln 100 PART=D1N4002
part 4 D1N4002 250 130 v
a 0 xp 9 0 22 -1 hln 100 REFDES=D2
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D2
a 0 sp 11 0 7 4 hln 100 PART=D1N4002
part 99 D1N750 440 180 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=D5
a 0 xp 9 0 15 0 hln 100 REFDES=D5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-35
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 5 10 hln 100 PART=D1N750
part 9 r 500 180 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=RL
a 0 xp 9 0 25 35 hln 100 REFDES=RL
a 0 u 13 0 15 35 hln 100 VALUE=587
part 92 c 340 180 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=C1
a 0 xp 9 0 15 35 hln 100 REFDES=C1
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 40 hln 100 VALUE=400u
part 10 VSIN 100 150 h
a 1 u 0 0 0 0 hcn 100 DC=0
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 FREQ=60
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vac
a 1 xp 9 0 -10 25 hcn 100 REFDES=Vac
a 1 u 0 0 0 0 hcn 100 AC=12
a 1 u 0 0 0 0 hcn 100 VAMPL=12
part 3 D1N4002 190 130 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 xp 9 0 22 -1 hln 100 REFDES=D1
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 7 4 hln 100 PART=D1N4002
part 101 r 370 80 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=R1
a 0 xp 9 0 15 0 hln 100 REFDES=R1
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=60
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 130 nodeMarker 500 80 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 s 0 0 0 0 hln 100 PROBEVAR=RL:2
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
@conn
w 37
a 0 up 0:33 0 0 0 hln 100 V=
s 190 270 250 270 42
s 190 270 190 240 69
s 250 270 340 270 82
a 0 up 33 0 395 269 hct 100 V=
s 250 240 250 270 40
s 440 270 500 270 117
s 440 180 440 270 109
s 500 270 500 180 45
s 340 270 440 270 135
s 340 180 340 270 96
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 250 210 250 200 80
s 250 200 250 130 88
s 100 200 250 200 86
a 0 up 33 0 175 199 hct 100 V=
s 100 190 100 200 84
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 190 130 190 140 57
s 100 140 100 150 59
s 190 140 190 210 148
s 100 140 190 140 53
a 0 up 33 0 145 139 hct 100 V=
w 100
a 0 up 0:33 0 0 0 hln 100 V=
s 250 80 340 80 90
a 0 up 33 0 470 79 hct 100 V=
s 190 80 250 80 14
s 250 80 250 100 16
s 190 100 190 80 12
s 340 80 340 150 93
s 340 80 370 80 137
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 440 80 500 80 115
s 440 80 440 150 106
a 0 up 33 0 442 115 hlt 100 V=
s 500 80 500 140 131
s 410 80 440 80 104
@junction
j 250 80
+ w 100
+ w 100
j 190 130
+ p 3 1
+ w 67
j 190 210
+ p 5 2
+ w 67
j 190 240
+ p 5 1
+ w 37
j 250 240
+ p 6 1
+ w 37
j 250 270
+ w 37
+ w 37
j 250 210
+ p 6 2
+ w 35
j 250 130
+ p 4 1
+ w 35
j 250 200
+ w 35
+ w 35
j 190 100
+ p 3 2
+ w 100
j 250 100
+ p 4 2
+ w 100
j 440 180
+ p 99 1
+ w 37
j 440 270
+ w 37
+ w 37
j 500 180
+ p 9 1
+ w 37
j 440 150
+ p 99 2
+ w 21
j 500 140
+ p 9 2
+ w 21
j 340 180
+ p 92 1
+ w 37
j 340 270
+ w 37
+ w 37
j 340 150
+ p 92 2
+ w 100
j 500 80
+ p 130 pin1
+ w 21
j 340 270
+ s 7
+ w 37
j 100 190
+ p 10 -
+ w 35
j 100 150
+ p 10 +
+ w 67
j 190 140
+ w 67
+ w 67
j 370 80
+ p 101 1
+ w 100
j 340 80
+ w 100
+ w 100
j 410 80
+ p 101 2
+ w 21
j 440 80
+ w 21
+ w 21
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
