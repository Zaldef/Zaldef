*version 9.1 183250351
u 194
D? 7
R? 4
V? 2
C? 4
? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 0s
+1 1s
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
pageloc 1 0 2307 
@status
n 0 123:02:27:14:39:08;1679938748 e 
s 2832 123:02:27:14:39:08;1679938748 e 
c 123:02:27:14:39:05;1679938745
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 170 210 h
@parts
part 9 r 260 190 v
a 0 u 13 0 15 35 hln 100 VALUE=100
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=RL
a 0 xp 9 0 25 35 hln 100 REFDES=RL
part 3 D1N4002 150 130 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 xp 9 0 12 -1 hln 100 REFDES=D1
a 0 sp 11 0 2 29 hln 100 PART=D1N4002
part 10 VSIN 100 150 h
a 1 u 0 0 0 0 hcn 100 DC=0
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vac
a 1 xp 9 0 -10 25 hcn 100 REFDES=Vac
a 1 u 0 0 0 0 hcn 100 AC=12
a 1 u 0 0 0 0 hcn 100 VAMPL=12
a 1 u 0 0 0 0 hcn 100 FREQ=60
part 170 c 220 180 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=C1
a 0 xp 9 0 15 5 hln 100 REFDES=C1
a 0 u 13 0 5 5 hln 100 VALUE=40000u
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 126 nodeMarker 260 150 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 171
a 0 up 0:33 0 0 0 hln 100 V=
s 100 210 170 210 86
a 0 up 33 0 175 209 hct 100 V=
s 100 190 100 210 84
s 170 210 220 210 158
s 260 210 260 190 168
s 220 210 260 210 191
s 220 180 220 210 181
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 100 130 100 150 59
s 100 130 150 130 154
a 0 up 33 0 125 129 hct 100 V=
w 165
a 0 up 0:33 0 0 0 hln 100 V=
s 260 130 260 150 166
s 220 130 260 130 189
s 220 130 220 150 178
s 180 130 220 130 164
a 0 up 33 0 200 129 hct 100 V=
@junction
j 170 210
+ s 7
+ w 171
j 260 190
+ p 9 1
+ w 171
j 260 150
+ p 9 2
+ w 165
j 260 150
+ p 126 pin1
+ p 9 2
j 260 150
+ p 126 pin1
+ w 165
j 220 150
+ p 170 2
+ w 165
j 220 180
+ p 170 1
+ w 171
j 220 210
+ w 171
+ w 171
j 150 130
+ p 3 1
+ w 67
j 180 130
+ p 3 2
+ w 165
j 220 130
+ w 165
+ w 165
j 100 150
+ p 10 +
+ w 67
j 100 190
+ p 10 -
+ w 171
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
