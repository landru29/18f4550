#include <pic18f4550.h>
#include <string.h>
#include "flash.h"

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


void main() {
    char buffer[64];
    strcpy(buffer, "Bonjour tout le monde");
    flash64Write(0x1000, buffer);
}
