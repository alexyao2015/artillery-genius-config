M117 Probe bed
G28           ; Home XYZ.
G29 P4 R255   ; Do manual probing of the bed.
G29 S0        ; Save UBL mesh points to slot 0 (EEPROM).
G29 F 10.0    ; Set Fade Height for correction at 10.0 mm.
G29 A         ; Activate the UBL System.

M117 Purge extruder
  G90 ; Absolute positioning
  G1 X2 Y20 Z10.0 F3000 ; move z up little to prevent scratching of surface
  M104 S{material_print_temperature_layer_0} ;Start heating extruder
  M140 S{material_bed_temperature_layer_0} ;Start heating bed
  G92 E0 ; reset extruder
  M109 S{material_print_temperature_layer_0} ;Wait for extruder to reach temp before proceeding
  M190 S{material_bed_temperature_layer_0} ;Wait for bed to reach temp before proceeding
  G1 X2 Y20 Z0.3 F5000.0 ; move to start-line position
  G1 X2 Y200.0 Z0.3 F1500.0 E15 ; draw 1st line
  G1 X2 Y200.0 Z0.4 F5000.0 ; move to side a little
  G1 X2 Y20 Z0.4 F1500.0 E30 ; draw 2nd line
  G92 E0 ; reset extruder
  G1 Z1.0 F3000 ; move z up little to prevent scratching of surface