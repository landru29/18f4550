#include <pic18f4550.h>
#include <delay.h>

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
    TRISB=0;
    LATB=1;
    LATD=1;
    delay1mtcy(5);     // wait for 0.5 sec (1 cycle = 4 clock tops; oscillator conf is on 48MHz)
    while(1) {
        // leds are going on the right
        while (chenille!= 0x80){
            chenille *=2;      // shift the bit
            //LATB = chenille;   // light the leds
            LATD = chenille;   // light the leds
            delay1mtcy(5);     // wait for 0.5 sec (1 cycle = 4 clock tops; oscillator conf is on 48MHz)
        }
        // led are going on the left
       while (chenille!= 0x01){
            chenille /=2;      // shift the bit
            //LATB = chenille;   // light the leds
            LATD = chenille;   // light the leds
            delay1mtcy(5);     // wait for 0.5 sec (1 cycle = 4 clock tops; oscillator conf is on 48MHz)
        }

    }
}
