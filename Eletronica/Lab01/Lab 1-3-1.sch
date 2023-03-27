*version 9.1 545684364
u 154
D? 7
R? 4
V? 2
C? 3
? 4
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
pageloc 1 0 2942 
@status
n 0 122:03:03:10:02:45;1648990965 e 
s 2832 122:03:03:10:02:45;1648990965 e 
c 122:03:03:10:02:42;1648990962
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 350 270 h
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
part 10 VSIN 100 140 h
a 1 u 0 0 0 0 hcn 100 DC=0
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 FREQ=60
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vac
a 1 xp 9 0 -10 25 hcn 100 REFDES=Vac
a 1 u 0 0 0 0 hcn 100 AC=12
a 1 u 0 0 0 0 hcn 100 VAMPL=12
part 9 r 440 190 v
a 0 u 13 0 15 35 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=RL
a 0 xp 9 0 25 35 hln 100 REFDES=RL
part 3 D1N4002 190 130 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 xp 9 0 22 -1 hln 100 REFDES=D1
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 7 4 hln 100 PART=D1N4002
part 4 D1N4002 250 130 v
a 0 xp 9 0 22 -1 hln 100 REFDES=D2
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D2
a 0 sp 11 0 7 4 hln 100 PART=D1N4002
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 126 nodeMarker 440 150 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 100 130 190 130 53
a 0 up 33 0 145 129 hct 100 V=
s 100 130 100 140 59
s 190 130 190 210 57
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 250 210 250 200 80
s 100 180 100 200 84
s 250 200 250 130 88
s 100 200 250 200 86
a 0 up 33 0 175 199 hct 100 V=
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 440 80 440 150 131
s 190 80 250 80 14
s 250 80 250 100 16
s 190 100 190 80 12
s 250 80 440 80 90
a 0 up 33 0 465 79 hct 100 V=
w 129
a 0 up 0:33 0 0 0 hln 100 V=
s 190 270 250 270 42
s 250 240 250 270 40
s 190 270 190 240 69
s 440 270 440 190 45
s 250 270 350 270 141
a 0 up 33 0 395 269 hct 100 V=
s 350 270 440 270 148
@junction
j 190 130
+ p 3 1
+ w 67
j 190 210
+ p 5 2
+ w 67
j 190 240
+ p 5 1
+ w 129
j 250 240
+ p 6 1
+ w 129
j 250 270
+ w 129
+ w 129
j 250 210
+ p 6 2
+ w 35
j 250 130
+ p 4 1
+ w 35
j 250 200
+ w 35
+ w 35
j 100 140
+ p 10 +
+ w 67
j 100 180
+ p 10 -
+ w 35
j 440 190
+ p 9 1
+ w 129
j 440 150
+ p 9 2
+ w 21
j 440 150
+ p 126 pin1
+ p 9 2
j 440 150
+ p 126 pin1
+ w 21
j 250 80
+ w 21
+ w 21
j 350 270
+ s 7
+ w 129
j 190 100
+ p 3 2
+ w 21
j 250 100
+ p 4 2
+ w 21
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
