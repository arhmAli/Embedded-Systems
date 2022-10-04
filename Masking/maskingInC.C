binary_pattern[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
unsigned int a,b,c,;
unsigned int counter = 0;;
void main(void) 
{
    TRISD = 0x00; //define PORTD as a output pin
    PORTD=0X00;   // initialize PORTD pins to active low
    TRISB=0X00;
    digit1 = 1;
    digit2 = 1; 
    digit3 = 1;
    while(1)
    {
        
           a = counter / 1000;   // holds 100's digit
           b = ((counter/100)%10); // holds 10's digit
           c = ((counter/10)%10);  
        
PORTD=binary_pattern[a]; // send 1000's place data to fourth digit
digit1=0;   //  turn on forth display unit
__delay_ms(10);
digit1=1;   //  turn off forth display unit
PORTD=binary_pattern[b];  // send 100's place data to 3rd digit
digit2=0;    //  turn on 3rd display unit
__delay_ms(10);
digit2=1;  //  turn off 3rd display unit
PORTD=binary_pattern[c];  // send 10th place data to 2nd digit
digit3 = 0;  //  turn on 2nd display unit
__delay_ms(10);
 digit3 = 1;   //  turn off 2nd display unit
if(counter>=1000) //wait till flag reaches 100
{
    counter=0; //only if flag is hundred "i" will be incremented 
}
counter++; //increment flag for each flas
    }
    return ;
}
