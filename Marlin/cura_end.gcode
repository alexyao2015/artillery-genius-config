M83 ; relative extruder
G1 F1800 E-2 ; Retract filament 5 mm to prevent oozing
G91; relative positioning
 G1 Z1.0 F3000 ; move z up little to prevent scratching of print
 G90; absolute positioning
 M104 S0; turn off extruder
 M140 S0 ; turn off bed
 G1 X0 Y220 F1000 ; prepare for part removal
 M84 ; disable motors
 M106 S0 ; turn off fan