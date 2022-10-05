#include<P18F452.inc>;

list P=18F452, F=INHX32, MM=OFF;
CONFIG OSC=XT, WDT=OFF;

        ORG 0H;
        ; DECLARING O/P
        CLRF TRISC
        BCF TRISD,0
        BCF TRISD,1
        ;COMMANDS FOR LCD ACTIVATION
AGAIN
        MOVLW 01H
        CALL CMD
        CALL DELAY
        MOVLW 38H
        CALL CMD
        CALL DELAY
        MOVLW 01H
        CALL CMD
        CALL DELAY
        MOVLW 06H
        CALL CMD
        CALL DELAY
        MOVLW 0EH
        CALL CMD
        CALL DELAY
        MOVLW 84H
        CALL CMD
        CALL DELAY

        ; DATA WRITING ON LCD
        MOVLW 'M'
        CALL DAT
        CALL DELAY

