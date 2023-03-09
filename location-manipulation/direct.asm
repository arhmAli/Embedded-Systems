;In the following Program The Ram location 30H to 34H have the following String

30=> H
31=> E
32=>L
33->L
340

We want to write a program to send these strings to PORTB by direct adressing method:

Code:

------------------------------------------------>>>>>>>>>>>>>>>>Direct Addressing<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-----------------------------------------------

org 0x000

loop_counter EQU 0X40

RAM_LOCATION EQU 0X30

MOVLW 0X05
MOVWF loop_counter

CLRF TRISB

LOOP:
MOVFF RAM_LOCATION,PORTB
DECFSZ loop_counter
GOTO LOOP

END
