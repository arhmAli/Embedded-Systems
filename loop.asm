#include<P18F452.inc>

BCF TRISB,7
SETF TRISD
MOVLW 0X255
MOVWF TRISD
HERE DECFSZ TRISD //decrement the specific file register skip the next line if the register has zero value
BRA HERE
MOVFF TRISD TRISB,7
END
