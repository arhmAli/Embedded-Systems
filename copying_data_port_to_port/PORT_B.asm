#include "P18F452.INC"
LIST P=18F452, F=INHX32, MM=OFF;
    CONFIG OSC=XT
    CONFIG WDT=OFF
      ORG 0
    GOTO MAIN
MAIN:
 MOVLW 0
 MOVWF TRISB
 LOOP_1 EQU 0X00
 MOVLW 1100100
 MOVWF LOOP_1
 TOTAL EQU 0X20
 MOVLW 0
 MOVWF TOTAL
 HERE INCF TOTAL,1
 MOVFF TOTAL,PORTB
 DECFSZ LOOP_1
 BRA HERE
 CLRF PORTB
END
 ;;delay 
 delay_1 EQU 0x14
 delay_2 EQU 0x15
 MOVLW 50                        
   MOVWF delay_1                    
LOOP1
   MOVLW 255                   
   MOVWF delay_1                    
LOOP2
   decfsz delay_1,F                    
       GOTO LOOP1               
   decfsz delay_2,F                    
       GOTO LOOP2                
   BRA back
