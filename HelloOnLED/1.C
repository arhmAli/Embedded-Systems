#include < p18F458.>
#define rs PORTBbits. RB0
#define rs PORTBbits. RB1
#define rs PORTBbits. RB2
#pragma romdata mydata = 0X320
Far rom const char mydata [] = ?HELLO?
Void main()
{ 
Unsigned char z=0;
TRISD = 0;
TRISB = 0;
en= 0;
MSDelay(250);
Lcdcmd(0x38);
MSDelay(250);
For ( i=0; z<4; z++)
{ lcdmd (mycom[s];
MSDelay(15);
//put the value on the pins
Void loddata (unsigned char value)
ldata = value ;
Rs =1;
Rv = 0;
MSDelay (1);
Em=0;
}
Void MSDelay ( unsigned int itime)
{
Unsigned int I, j ;
for(i=0, i<itime, i++)
for ( j=0; j< 135; j++;
}



