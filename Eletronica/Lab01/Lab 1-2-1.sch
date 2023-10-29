*version 9.1 2269003727
u 170
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
pageloc 1 0 1789 
@status
n 0 123:02:27:14:24:25;1679937865 e 
s 2832 123:02:27:14:26:01;1679937961 e 
c 122:03:03:10:00:56;1648990856
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 170 210 h
@parts
part 10 VSIN 100 150 h
a 1 u 0 0 0 0 hcn 100 DC=0
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 FREQ=60
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vac
a 1 xp 9 0 -10 25 hcn 100 REFDES=Vac
a 1 u 0 0 0 0 hcn 100 AC=12
a 1 u 0 0 0 0 hcn 100 VAMPL=12
part 3 D1N4002 160 130 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 xp 9 0 12 -1 hln 100 REFDES=D1
a 0 sp 11 0 2 29 hln 100 PART=D1N4002
part 9 r 250 190 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=RL
a 0 xp 9 0 25 35 hln 100 REFDES=RL
a 0 u 13 0 15 35 hln 100 VALUE=100
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 126 nodeMarker 250 150 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 100 130 100 150 59
s 100 130 160 130 154
a 0 up 33 0 130 129 hct 100 V=
w 165
s 190 130 250 130 164
s 250 130 250 150 166
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 100 190 100 210 84
s 100 210 170 210 86
a 0 up 33 0 175 209 hct 100 V=
s 170 210 250 210 158
s 250 210 250 190 168
@junction
j 100 150
+ p 10 +
+ w 67
j 100 190
+ p 10 -
+ w 35
j 170 210
+ s 7
+ w 35
j 160 130
+ p 3 1
+ w 67
j 250 150
+ p 126 pin1
+ p 9 2
j 190 130
+ p 3 2
+ w 165
j 250 150
+ p 9 2
+ w 165
j 250 150
+ p 126 pin1
+ w 165
j 250 190
+ p 9 1
+ w 35
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
