*version 9.1 104964232
u 212
D? 7
R? 5
V? 3
C? 4
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
pageloc 1 0 1529 
@status
n 0 123:02:27:14:09:55;1679936995 e 
s 2832 123:02:27:14:09:56;1679936996 e 
c 123:02:27:14:09:53;1679936993
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 180 210 h
@parts
part 197 r 130 130 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R1
a 0 xp 9 0 15 0 hln 100 REFDES=R1
part 3 D1N4002 190 130 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 xp 9 0 12 -1 hln 100 REFDES=D1
a 0 sp 11 0 2 29 hln 100 PART=D1N4002
part 194 VDC 100 150 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vdc
a 1 xp 9 0 -11 17 hcn 100 REFDES=Vdc
a 1 u 13 0 -11 28 hcn 100 DC=12V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 100 130 100 150 59
s 100 130 130 130 198
a 0 up 33 0 115 129 hct 100 V=
w 201
a 0 up 0:33 0 0 0 hln 100 V=
s 170 130 190 130 200
a 0 up 33 0 180 129 hct 100 V=
w 207
a 0 up 0:33 0 0 0 hln 100 V=
s 100 210 180 210 158
a 0 up 33 0 175 209 hct 100 V=
s 100 190 100 210 84
s 180 210 250 210 205
s 220 130 250 130 189
s 250 130 250 210 202
@junction
j 130 130
+ p 197 1
+ w 67
j 190 130
+ p 3 1
+ w 201
j 220 130
+ p 3 2
+ w 207
j 170 130
+ p 197 2
+ w 201
j 180 210
+ s 7
+ w 207
j 100 150
+ p 194 +
+ w 67
j 100 190
+ p 194 -
+ w 207
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
