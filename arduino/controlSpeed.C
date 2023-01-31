// direction control
//This program is made in MATLAB IDE but given C extension so that it can run in arduino IDE easily

a=arduino()
for i=1:1;
    writeDigitalPin(a,'D6',0);
    writeDigitalPin(a,'D9',1);
    pause(5)
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D9',0);
end
