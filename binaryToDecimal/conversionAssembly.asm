#include <P18F452.h>
void Delay (unsigned int);
void cnvrsion2dec(void);
void cnvrsion2svn(unsigned int);
void Display(void);

#define mybit PORTAbits, RA4
unsigned int T1_ovrflo, total_time, upr_three_dig, x, d1, d2, d3, temp=0;
unsigned char time_L, time_H;

void main(void)
{
  TRISAbits.TRISA4 = 1;
  TRISB = 0;
  TRISD = 0;
  T0CON = 0x68;
  T1CON = 0x00;

  while(1)
  {
    TMR1H = 0x00;
    TMR1L = 0x00;
    PIR1bits.TMR1IF = 0;
    INTCONbits.TMR0IF = 0;
    TMR0L = 0xFE;
    while (TMR0L == 0xFE);


    T1CONbits.TMR1ON = 1;
    while (INTCONbits.TMR0IF == 0)
    {
      if (PIR1bits.TMR1IF == 1)
      {
        T1_ovrflo++;
        PIR1bits.TMR1IF = 0;
      }    }}
T1CONbits.TMR1ON = 0;
  time_L = TMR1L;
  time_H = TMR1H;
  INTCONbits.TMR0IF = 0;
  cnvrsion2dec();
  Display();

}

void cnvrsion2dec(){
  total_time = 256*time_H;
  total_time = total_time + time_L;
  upr_three_dig = total_time/100;
  x = upr_three_dig/10;
  d1 = upr_three_dig%10;
  cnvrsion2svn(d1);
  d1 = temp;
  d2 = x%10;
  cnvrsion2svn(d2);
  d2 = temp;
  d3 = x/10;
  cnvrsion2svn(d3);
  d3=temp;

}

void cnvrsion2svn(unsigned int T){
  if(T == 0){temp = 0x3F;}
  else if(T == 0){temp = 0x3F;}
  else if(T == 1){temp = 0x06;}
  else if(T == 2){temp = 0x5B;}
  else if(T == 3){temp = 0x4F;}
  else if(T == 4){temp = 0x66;}
  else if(T == 5){temp = 0x6D;}
  else if(T == 6){temp = 0x7D;}
  else if(T == 7){temp = 0x07;}
  else if(T == 8){temp = 0x7F;}
  else if(T == 9){temp = 0x6F;}
}

void Display(){
  PORTB = 0;
  PORTD = 0;
  PORTB = d1;
  PORTDbits.RD2 = 1;
  Delay(200);
  PORTDbits.RD2 = 0;
  PORTB = d2;
  PORTDbits.RD1 = 1;
  Delay(200);
  PORTDbits.RD1=0;
  PORTB = d3;
  PORTDbits.RD0 = 1;
  Delay(200);
}

void Delay(unsigned int itime)
{
  unsigned int i;
  unsigned char j;
  for ( i = 0; i < itime; i++)
  {
    for ( j = 0; j < 165; j++)
    {
      ;
    }
     }
}



