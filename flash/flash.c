#include <pic18f4550.h>
#include "flash.h"


void loadTBLPTR(unsigned int Addr) {
    TBLPTRU = 0;
    TBLPTRH = (unsigned char)(Addr >> 8);
    TBLPTRL = (unsigned char)Addr;
}

void flash64Erase(unsigned int flashAddr) {
    /* Erase a 64 bytes row in flash memory */
    unsigned int Addr = flashAddr & 0xFFC0;
    /* Loading flash address */
    /*loadTBLPTR(flashAddr & 0xFFC0);*/
    TBLPTRU = 0;
    TBLPTRH = (unsigned char)(Addr >> 8);
    TBLPTRL = (unsigned char)Addr;

    EECON1bits.EEPGD=1;     /* Point to flash memory */
    EECON1bits.CFGS=0;      /* Access flash memory */
    EECON1bits.WREN=1;      /* Enable write */
    EECON1bits.FREE=1;      /* Enable row erase operation */
    INTCONbits.GIE = 0;     /* Disable interrupts */
    EECON2 = 0x55;          /* Erasing ... */
    EECON2 = 0xAA;          /* ... sequence */
    EECON1bits.WR=1;        /* Start erase */
    INTCONbits.GIE = 1;     /* Disable interrupts */
    EECON1bits.WR=0;        /* Disable memory write*/
}

void flash64Read(unsigned int flashAddr, unsigned char* buffer) {
    /* Read 64 bytes in flash memory */
    char counter;
    unsigned int Addr = flashAddr & 0xFFC0;
    /* Loading flash address */
    /*loadTBLPTR(flashAddr & 0xFFC0);*/
    TBLPTRU = 0;
    TBLPTRH = (unsigned char)(Addr >> 8);
    TBLPTRL = (unsigned char)Addr;
    /* Reading data */
    for(counter=0;counter<64;counter ++) {
        __asm
            TBLRD*+
        __endasm;
        if (buffer) *(buffer++)=TABLAT;
    }
  }

void flash64Write(unsigned int flashAddr, unsigned char* buffer) {
 /* Writeing 64 bytes in flash memory */
    char counter;
    char blockCount;

    /* Read Data to trash */
    flash64Read(flashAddr, 0);
    /* Erase flash memory row */
    flash64Erase(flashAddr);

    __asm
        TBLRD*- /* Dummy read decrement*/
    __endasm;


    for(blockCount=0;blockCount<2; blockCount++) {
        for(counter=0;counter<32;counter++) {
            TABLAT = *(buffer++);
            __asm
                TBLWT+*
            __endasm;

        }
        /* Writing to flash */
        EECON1bits.EEPGD=1;     /* Point to flash memory */
        EECON1bits.CFGS=0;      /* Access flash memory */
        EECON1bits.WREN=1;      /* Enable write */
        EECON1bits.FREE=0;      /* Write-only mode */
        INTCONbits.GIE = 0;     /* Disable interrupts */
        EECON2 = 0x55;          /* Writing ... */
        EECON2 = 0xAA;          /* ... sequence */
        EECON1bits.WR=1;        /* Start Writing */
    }
    INTCONbits.GIE = 1;     /* Disable interrupts */
    EECON1bits.WR=0;        /* Disable memory write*/
}

