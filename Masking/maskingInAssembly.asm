 ORG 0H ; Reset Vector
 Goto MAIN
 ORG 0x200?Main? of the Coding
;Assigning constant values to the declared variables in ?Main?
 MAIN
 movlb 0x01 ; bank 1 is selected
 movlw 0x00;
 movwf TRISB
 movwf TRISD
 clrf BCD_COUNT,1 ;
 movlw 0x3F
 movwf BCD1,1
 movlw 0x06
 movwf BCD2,1
 movlw 0x5B
 movwf BCD3,1
 movlw 0x4F
 movwf BCD4,1
 clrf TEMP_0,1;
 clrf LEDs ;Infinite Loop
 ENDLESS_LOOP
 call Display
 call DELAY
 BRA ENDLESS_LOOP
 Display
 Movf BCD_COUNT,w,1
 ANDLW 0x03 ; Masking of upper 6 bits to avoid number greater than 3
 Mullw 0x02
 Movff PRODL,WREG
 Addwf PCL,f
 BRA Digit_1
 BRA Digit_2
 BRA Digit_3
 BRA Digit_4
 RETURNDIGIT 1 & DIGIT 2 Subroutines
 Digit_1
 Clrf PORTB
 Clrf PORTD
 Movf BCD1,w,1
 Movwf PORTB
 BSF PORTD,0
 INCF BCD_COUNT,f,1
 RETURN
 Digit_2
 Clrf PORTB
 Clrf PORTD
 Movf BCD2,w,1
 Movwf PORTB
 BSF PORTD,1
 INCF BCD_COUNT,f,1
 RETURNDIGIT 3 & DIGIT 4 Subroutines
 Digit_3
 Clrf PORTB
 Clrf PORTD
 Movf BCD3,w,1
 Movwf PORTB
 BSF PORTD,2
 INCF BCD_COUNT,f,1
 RETURN
Digit_4
 Clrf PORTB
 Clrf PORTD
 Movf BCD4,w,1
 Movwf PORTB
 BSF PORTD,3
 INCF BCD_COUNT,f,1
 RETURNDELAY subroutine and END
 DELAY movlw 0x05
 movwf TEMP_1
 L1 Decfsz TEMP_1,f
 BRA L1
 RETURN
 END
