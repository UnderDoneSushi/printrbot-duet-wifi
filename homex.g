G91                ; relative mode
;G1 Z1              ; raise head to avoid dragging nozzle over the bed
G1 X-200 S1         ; move up to 200mm in the -X direction, stopping if the homing switch is triggered
G1 X100           ; move back to center
;G1 Z-1             ; lower the head again
G90                ; back to absolute mode
