#include <p18F452.h>

BCF TRISD,0X07
BSF TRISB,0X05
MOVLW 0X255
HERE MOVWF PORTB,0X05
DECFSZ PORTB,0X05
BRA HERE
MOVFF PORTB PORTD
END