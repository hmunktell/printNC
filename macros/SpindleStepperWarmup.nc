
(Spindle and Stepper Warm-up)
(This program should be run prior to) 
(machine use if machine has been idle) 
(for more than 4 days.) 
(Cycle time: 20-minutes.) 

( Axis travel ranges in mm. Be sure they’re right for your machine and setups! )
( Make sure you change to Inches if using imperial dimensions! )
#100=50 (Min X Travel)
#101=300 (Max X Travel)
#102=50 (Min Y Travel)
#103=300 (Max Y Travel)
#104=-50 (Min Z Travel)
#105=0 (Max Z Travel)

( Amount of dwell after axis travel is completed. )
#106=120

(move to starting location)
G28 G90 F300
G53 G1 Z#105
G53 G1 X#100 Y#102

(S4500 M03 optional for lower set starting rpm)
S6000 M03 
G53 F300 G1 Z#104 (Do Z first)
G53 G1 Z#105
G53 G1 X#101
G53 G1 Y#103
G53 G1 X#100
G53 G1 Y#102
S8000 M03 
G04 P10.
G53 F600 G1 Z#104 (Do Z first)
G53 G1 Z#105
G53 G1 X#101
G53 G1 Y#103
G53 G1 X#100
G53 G1 Y#102
G04 P10.
G53 F900 G1 Z#104 (Do Z first)
G53 G1 Z#105
G53 G1 X#101
G53 G1 Y#103
G53 G1 X#100
G53 G1 Y#102
S10000 M03 
G04 P10.
G53 F1200 G1 Z#104 (Do Z first)
G53 G1 Z#105
G53 G1 X#101
G53 G1 Y#103
G53 G1 X#100
G53 G1 Y#102
G04 P10.
G53 F1600 G1 Z#104 (Do Z first)
G53 G1 Z#105
G53 G1 X#101
G53 G1 Y#103
G53 G1 X#100
G53 G1 Y#102
G04 P10.
G53 F2000 G1 Z#104 (Do Z first)
G53 G1 Z#105
G53 G1 X#101
G53 G1 Y#103
G53 G1 X#100
G53 G1 Y#102
G04 P10.
S12000 M03 
G04 P#106
S14000 M03 
G04 P#106
S16000 M03 
G04 P#106
S18000 M03 
G04 P#106
S20000 M03 
G04 P#106
S22000 M03 
G04 P#106
S24000 M03 
G04 P#106

M5 G28

