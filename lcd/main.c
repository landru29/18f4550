#include <pic18f4550.h>
#include "lcd.h"
#include <stdio.h>

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
    lcd_init(48, 1);
    //lcd_print("Hello world");
    printf("Coucou!");
    while (1);
}
