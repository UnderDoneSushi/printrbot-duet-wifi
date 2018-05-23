; Think3DPrint3D configuration file for Mini Kossel for testing Duet WiFi

; Communication and general
M111 S0                             	; Debug off
M550 OldYeller				; Machine name and Netbios name (can be anything you like)
M551 Preprap                        	; Machine password (used for FTP)
;*** If you have more than one Duet on your network, they must all have different MAC addresses, so change the last digits
M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0xED 	; MAC Address
;*** Wifi Networking
M552 S1					; Enable WiFi. Disabled for setup and testing. Enable once set up on your network.

M555 P2                           	; Set output to look like Marlin
M575 P1 B57600 S1			; Comms parameters for PanelDue

G21                                 	; Work in millimetres
G90                                	; Send absolute coordinates...
M83                                 	; ...but relative extruder moves

; Axis and motor configuration
M569 P0 S0                          ; Drive 0 (x motor) goes reverse
M569 P1 S0                          ; Drive 1 (y motor) goes reverse
M569 P2 S0                          ; Drive 2 (z motor) goes reverse
M569 P3 S0                         ; Drive 3 (ext motor) goes reverse
;M569 P4 S1                          ; Drive 4 goes forwards

M350 X16 Y16 Z16 E16 I1             ; set 16x microstepping with interpolation
M574 X1 Y1 Z0 S1		    ; set homing switch configuration (x and y switches, at low end, active high)
M906 X800 Y800 Z800 E800            ; Set motor currents (mA)
M201 X1000 Y1000 Z1000 E100         ; Accelerations (mm/s^2)
M203 X3000 Y3000 Z3000 E600         ; Maximum speeds (mm/min)
M566 X1000 Y1000 Z1000 E50          ; Maximum jerk speeds mm/minute
M208 X203 Y203 Z240                 ; set axis max and high homing switch positions (adjust to suit your machine)
M208 X-0 Y0 Z0 S1                   ; set axis min and low homing switch positions (adjust to make X=0 and Y=0 the edges of the bed)
M92 X80 Y80 Z400 E95                ; set axis steps/mm
G21                                 ; Work in millimetres
G90                                 ; Send absolute coordinates...
M83                                 ; ...but relative extruder moves

; Thermistors
M305 P0 T100000 B3950 R4700 H30 L0	; Put your own H and/or L values here to set the bed thermistor ADC correction
M305 P1 T100000 B3974 R4700 H30 L0	; Put your own H and/or L values here to set the first nozzle thermistor ADC correction
M305 P2 T100000 B3974 R4700 H30 L0	; Put your own H and/or L values here to set the second nozzle thermistor ADC correction
M570 S180				; Hot end may be a little slow to heat up so allow it 180 seconds

; Fans
;M106 P1 H-1 				; disable thermostatic mode for fan 1

; Tool definitions
M563 P0 D0 H1 F0:1                      ; Define tool 0 - Heater 1, Fan 0 (extruder) and Fan 1 (bed fan)
G10 P0 S0 R0                        	; Set tool 0 operating and standby temperatures
M92 E663:663                       	; Set extruder steps per mm

; Z probe and compensation definition
;*** If you have a switch instead of an IR probe, change P1 to P4 in the following M558 command
M558 P5 X0 Y0 Z1			; Z probe is an inductive probe and is used for homing 
G31 X25 Y0 Z0 P500			; Set the zprobe height and threshold (put your own values here)

;*** If you are using axis compensation, put the figures in the following command
M556 S78 X0 Y0 Z0                   	; Axis compensation here

M208 S1 Z-0			; set minimum Z
;
T0					; select first hot end
