G91                ; relative mode
G1 Z1 F200         ; raise head 1mm to ensure it is above the Z probe trigger height
G90                ; back to absolute mode
;G1 X75 Y75 F3000   ; put head over the centre of the bed
G30                ; lower head, stop when probe triggered and set Z to trigger height
G1 Z1 F200         ; raise head 2mm after probe trigger 
