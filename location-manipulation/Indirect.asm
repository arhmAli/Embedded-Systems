;In the following Program The Ram location 30H to 34H have the following String

30=> H
31=> E
32=>L
33->L
34=>O

We want to write a program to send these strings to PORTB by indirect adressing method:

Code:
------------------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>INDIRECT ADRESSING<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--------------------------------------------

ORG 0X000

COUNTER EQU 0X50
LOCATION EQU 0X30

MOVLW 0X05

MOVWF COUNTER

CLRF TRISB

HERE:

MOVLW LOCATION

MOVWF FSR

MOVFF INDF,PORTB

INCF LOCATION,F

DECFSZ COUNTER

GOTO HERE

END

