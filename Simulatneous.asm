//send data simultaneously 

#include<p18F520.h>

MOVLW 0X5;
MOVWF TRISA;
MOVFF TRISA TRISB;
ADDWF 0X10 TRISA;
MOVF TRISA ;
MOVWF TRISB;
MOVFF PORTB PORTC;
End
