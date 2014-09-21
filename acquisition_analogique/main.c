#include <pic18f4550.h>
#include <adc.h>

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
Prog clock = 48MHz

*/


int getAnalogData(unsigned char channel) {
    int result;
    /* Configure ADC module */
    adc_open(channel,                           /* channel : Reg ADCON0*/
             ADC_ACQT_0  | ADC_FOSC_64,          /* Manually launched,  FOSC/64  for 48MHz (table 21_1) : Reg ADCON2*/
             ADC_CFG_3A,                        /* 3 AN inputs : Reg ADCON1*/
             ADC_VCFG_VDD_VSS | ADC_FRM_RJUST); /* voltage ref = VSS and VDD, Right justified */
    adc_conv ();            /* Launch conversion */
    while (adc_busy ());    /* Wait for the end of the conversion */
    result = adc_read ();    /* Get the result */
    /* stop the module */
    adc_close ();
    return result;
}


void main() {
    unsigned char chenille=1;

    // set port D as output
    TRISD=0;
    // Main loop
    while(1) {
        LATD = getAnalogData(0);
    }
}
