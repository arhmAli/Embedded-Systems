
#include "P18F452.INC"
LIST P=18F452, F=INHX32, MM=OFF;
    CONFIG OSC=XT
    CONFIG WDT=OFF
    #DEFINE LEDS PORTB
    CBLOCK 0X00;
    TEMP_0, TEMP_1
    ENDC
    ORG 0
    GOTO MAIN
    ORG 0X200
    MAIN:
    MOVLW 0X00
    MOVWF TRISB
    CLRF TEMP_0,1
    CLRF LEDS
    ENDLESS_LOOP  CALL DELAY
                  COMF LEDS,f
		  BRA ENDLESS_LOOP
ORG 0X2000
		  DELAY MOVLW 0X04
		  MOVWF TEMP_0,1
		  DECFSZ TEMP_0,F,1
		  BZ ($-2)
RETURN
END

