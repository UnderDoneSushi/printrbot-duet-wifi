G91                ; relative mode
;G1 Z1             ; raise head to avoid dragging nozzle over the bed
G1 Y-200 S1         ; move up to 200mm in the Y direction, stopping if the homing switch is triggered
G1 Y100
;G1 Z-1             ; lower the head again
G90                ; back to absolute mode
