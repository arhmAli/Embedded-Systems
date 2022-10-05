#include "P18F4620.h"
void main(void)
unsigned int i;
{
    unsigned char mainCount=0;
    TRISB=0;
    TRISA=0;
    TRISC=0;
    for(i=0,i<=255,i++)
    {
    PORTB=[i];
    PORTA=[i];
    PORTC=[i];
    }
    
            
}

