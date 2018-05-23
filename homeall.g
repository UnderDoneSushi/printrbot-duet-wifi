G91

G1 X-200 S1         ; move up to 200mm in the -X direction, stopping if the homing switch is triggered
G1 Y-200 S1         ; move up to 200mm in the -Y direction, stopping if the homing switch is triggered
G1 X100 Y100 F3500

;Existing homeall
;G1 Z2 F1000         ; raise head 4mm to ensure it is above the Z probe trigger height
;G1 X-200 F3000 S1  ; move up to 200mm in the -X direction, stopping if the homing switch is triggered
;G1 Y-150 F3000 S1  ; move up to 150mm in the -Y direction, stopping if the homing switch is triggered
;G1 X100 Y100 Z5 F3000   ; put head over the centre of the bed


; Bed probing disabled temporarily till I fix the sensor wiring
G30                  ; lower head, stop when probe triggered and set Z to trigger height
G1 Z50 F1000         ; raise head 
