Assuming Ram location 30-34H have the Strings we want to
send one byte at a time to PORTB

--------------------------------------------->>>>>'H' 'E' 'L' 'L' 'O'<<<<-------------------------
------------------------------------------------a)Direct Addressing-------------------------------------------

org 0x000

loop_counter EQU 0X40

RAM_LOCATION EQU 0X30

MOVLW 0X05
MOVWF loop_counter

LOOP:
MOVFF RAM_LOCATION,PORTB
DECFSZ loop_counter
GOTO LOOP

END

------------------------------B)INDIRECT ADRESSING--------------------------------------------

ORG 0X000

COUNTER EQU 0X50
LOCATION EQU 0X30

MOVLW 0X05

MOVWF COUNTER

HERE:

MOVLW LOCATION

MOVWF FSR

MOVFF INDF,PORTB

INCF LOCATION,F

DECFSZ COUNTER

GOTO HERE

END


------------------------>>>>>>>>>>>>2)  SEND THE DATA FFH TO 15 RAM LOCATIONS STARTING AT FE<<<<<<<<<<<<<------------

ORG 0X000

COUNTER EQU 0X40

MOVLW 0X15

MOVWF COUNTER

MOVLW 0XFE;
MOVWF FSR

HERE:
MOVLW 0XFF
MOVWF INDF

INCF FSR,F
DECFSZ COUNTER,F
GOTO HERE

END
