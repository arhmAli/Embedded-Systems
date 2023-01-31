// The following program controls the direction of the DC motor first the motor goes clockwise & after some delay it stops 
// Then it rotates in the counter clock wise direction
//This program is made in MATLAB IDE but given C extension so that it can run in arduino IDE easily

a=arduino()
for i=1:1;
    writeDigitalPin(a,'D6',0);
    writeDigitalPin(a,'D9',1);
    pause(5)
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D9',0);
end
