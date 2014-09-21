#include <pic18f4550.h>

#pragma config PLLDIV=5
#pragma config CPUDIV = OSC1_PLL2
#pragma config USBDIV=2
#pragma config FOSC=HSPLL_HS
#pragma config VREGEN=ON
#pragma config WDT=OFF
#pragma config PBADEN=OFF
#pragma config XINST=OFF
#pragma config LVP=OFF
#pragma config CP0=OFF


/*

Designed for a 20MHz cristal

*/

void main() {
    unsigned char chenille=1;

    // set port D as output
    TRISD=0;
    // set port B as input
    TRISB=1;
    // Main loop
    while(1) {
        // copy B in D
        LATD = PORTB;
    }
}
