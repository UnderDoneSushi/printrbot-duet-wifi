G91                ; relative mode
G1 Z1 F200         ; raise head 1mm to ensure it is above the Z probe trigger height
G90                ; back to absolute mode
G1 X100 Y100 F2000 ; put head over the centre of the bed, or wherever you want to probe
G30                ; lower head, stop when probe triggered and set Z to trigger height
