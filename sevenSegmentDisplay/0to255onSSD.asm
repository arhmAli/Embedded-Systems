#include<P18F452.inc>
    List p=18F452, F=INHX32, MM=OFF
    CONFIG OSC=XT
    CONFIG WDT=OFF
    ORG 0H
    ;DECLARIGN OUTPUT
    CLRF  TRISD
    MOVLW 0X01
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X02
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X03
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X04
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X05
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X06
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X07
    MOVWF PORTD
    CALL DELAY
   CALL DELAY
    MOVLW 0X08
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    MOVLW 0X09
    MOVWF PORTD
    CALL DELAY
    CALL DELAY
    DELAY: MOVLW D'255'
    MOVWF 00H
    HERE: MOVLW D'255'
    MOVWF 01H
    BACK: DECF 01H
    BNZ BACK
    DECF 00H
    BNZ HERE
    RETURN
    END


