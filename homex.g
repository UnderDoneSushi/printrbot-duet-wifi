G91                ; relative mode
G1 Z1              ; raise head to avoid dragging nozzle over the bed
G1 X-240 S1        ; move up to 240mm in the -X direction, stopping if the homing switch is triggered
G1 X150
G1 X-75
G1 Z-1             ; lower the head again
G90                ; back to absolute mode
