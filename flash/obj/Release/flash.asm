;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.1 #9075 (Sep 21 2014) (Linux)
; This file was generated Sun Sep 21 19:39:40 2014
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_flash64Erase
	global	_flash64Read
	global	_flash64Write
	global	_loadTBLPTR

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrput1
	extern	__gptrget1
	extern	_SPPCFGbits
	extern	_SPPEPSbits
	extern	_SPPCONbits
	extern	_UFRMLbits
	extern	_UFRMHbits
	extern	_UIRbits
	extern	_UIEbits
	extern	_UEIRbits
	extern	_UEIEbits
	extern	_USTATbits
	extern	_UCONbits
	extern	_UADDRbits
	extern	_UCFGbits
	extern	_UEP0bits
	extern	_UEP1bits
	extern	_UEP2bits
	extern	_UEP3bits
	extern	_UEP4bits
	extern	_UEP5bits
	extern	_UEP6bits
	extern	_UEP7bits
	extern	_UEP8bits
	extern	_UEP9bits
	extern	_UEP10bits
	extern	_UEP11bits
	extern	_UEP12bits
	extern	_UEP13bits
	extern	_UEP14bits
	extern	_UEP15bits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_LATDbits
	extern	_LATEbits
	extern	_DDRAbits
	extern	_TRISAbits
	extern	_DDRBbits
	extern	_TRISBbits
	extern	_DDRCbits
	extern	_TRISCbits
	extern	_DDRDbits
	extern	_TRISDbits
	extern	_DDREbits
	extern	_TRISEbits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_EECON1bits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_T3CONbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_CCP1ASbits
	extern	_ECCP1ASbits
	extern	_CCP1DELbits
	extern	_ECCP1DELbits
	extern	_BAUDCONbits
	extern	_BAUDCTLbits
	extern	_CCP2CONbits
	extern	_CCP1CONbits
	extern	_ECCP1CONbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_SSPCON2bits
	extern	_SSPCON1bits
	extern	_SSPSTATbits
	extern	_T2CONbits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_HLVDCONbits
	extern	_LVDCONbits
	extern	_OSCCONbits
	extern	_T0CONbits
	extern	_STATUSbits
	extern	_INTCON3bits
	extern	_INTCON2bits
	extern	_INTCONbits
	extern	_STKPTRbits
	extern	_SPPDATA
	extern	_SPPCFG
	extern	_SPPEPS
	extern	_SPPCON
	extern	_UFRM
	extern	_UFRML
	extern	_UFRMH
	extern	_UIR
	extern	_UIE
	extern	_UEIR
	extern	_UEIE
	extern	_USTAT
	extern	_UCON
	extern	_UADDR
	extern	_UCFG
	extern	_UEP0
	extern	_UEP1
	extern	_UEP2
	extern	_UEP3
	extern	_UEP4
	extern	_UEP5
	extern	_UEP6
	extern	_UEP7
	extern	_UEP8
	extern	_UEP9
	extern	_UEP10
	extern	_UEP11
	extern	_UEP12
	extern	_UEP13
	extern	_UEP14
	extern	_UEP15
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_LATD
	extern	_LATE
	extern	_DDRA
	extern	_TRISA
	extern	_DDRB
	extern	_TRISB
	extern	_DDRC
	extern	_TRISC
	extern	_DDRD
	extern	_TRISD
	extern	_DDRE
	extern	_TRISE
	extern	_OSCTUNE
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_SPBRGH
	extern	_T3CON
	extern	_TMR3
	extern	_TMR3L
	extern	_TMR3H
	extern	_CMCON
	extern	_CVRCON
	extern	_CCP1AS
	extern	_ECCP1AS
	extern	_CCP1DEL
	extern	_ECCP1DEL
	extern	_BAUDCON
	extern	_BAUDCTL
	extern	_CCP2CON
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP1CON
	extern	_ECCP1CON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRES
	extern	_ADRESL
	extern	_ADRESH
	extern	_SSPCON2
	extern	_SSPCON1
	extern	_SSPSTAT
	extern	_SSPADD
	extern	_SSPBUF
	extern	_T2CON
	extern	_PR2
	extern	_TMR2
	extern	_T1CON
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_HLVDCON
	extern	_LVDCON
	extern	_OSCCON
	extern	_T0CON
	extern	_TMR0
	extern	_TMR0L
	extern	_TMR0H
	extern	_STATUS
	extern	_FSR2L
	extern	_FSR2H
	extern	_PLUSW2
	extern	_PREINC2
	extern	_POSTDEC2
	extern	_POSTINC2
	extern	_INDF2
	extern	_BSR
	extern	_FSR1L
	extern	_FSR1H
	extern	_PLUSW1
	extern	_PREINC1
	extern	_POSTDEC1
	extern	_POSTINC1
	extern	_INDF1
	extern	_WREG
	extern	_FSR0L
	extern	_FSR0H
	extern	_PLUSW0
	extern	_PREINC0
	extern	_POSTDEC0
	extern	_POSTINC0
	extern	_INDF0
	extern	_INTCON3
	extern	_INTCON2
	extern	_INTCON
	extern	_PROD
	extern	_PRODL
	extern	_PRODH
	extern	_TABLAT
	extern	_TBLPTR
	extern	_TBLPTRL
	extern	_TBLPTRH
	extern	_TBLPTRU
	extern	_PC
	extern	_PCL
	extern	_PCLATH
	extern	_PCLATU
	extern	_STKPTR
	extern	_TOS
	extern	_TOSL
	extern	_TOSH
	extern	_TOSU

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_flash__flash64Write	code
_flash64Write:
;	.line	50; flash.c	void flash64Write(unsigned int flashAddr, unsigned char* buffer) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
;	.line	56; flash.c	flash64Read(flashAddr, 0);
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_flash64Read
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	58; flash.c	flash64Erase(flashAddr);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_flash64Erase
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	TBLRD*-
	
;	.line	65; flash.c	for(blockCount=0;blockCount<2; blockCount++) {
	CLRF	r0x00
_00145_DS_:
;	.line	66; flash.c	for(counter=0;counter<32;counter++) {
	MOVFF	r0x02, r0x01
	MOVFF	r0x03, r0x05
	MOVFF	r0x04, r0x06
	CLRF	r0x07
_00139_DS_:
;	.line	67; flash.c	TABLAT = *(buffer++);
	MOVFF	r0x01, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
	MOVWF	_TABLAT
	INCF	r0x01, F
	BNC	_00159_DS_
	INFSNZ	r0x05, F
	INCF	r0x06, F
_00159_DS_:
	TBLWT+*
	
;	.line	66; flash.c	for(counter=0;counter<32;counter++) {
	INCF	r0x07, F
	MOVF	r0x07, W
	ADDLW	0x80
	ADDLW	0x60
	BNC	_00139_DS_
;	.line	74; flash.c	EECON1bits.EEPGD=1;     /* Point to flash memory */
	MOVFF	r0x01, r0x02
	MOVFF	r0x05, r0x03
	MOVFF	r0x06, r0x04
	BSF	_EECON1bits, 7
;	.line	75; flash.c	EECON1bits.CFGS=0;      /* Access flash memory */
	BCF	_EECON1bits, 6
;	.line	76; flash.c	EECON1bits.WREN=1;      /* Enable write */
	BSF	_EECON1bits, 2
;	.line	77; flash.c	EECON1bits.FREE=0;      /* Write-only mode */
	BCF	_EECON1bits, 4
;	.line	78; flash.c	INTCONbits.GIE = 0;     /* Disable interrupts */
	BCF	_INTCONbits, 7
;	.line	79; flash.c	EECON2 = 0x55;          /* Writing ... */
	MOVLW	0x55
	MOVWF	_EECON2
;	.line	80; flash.c	EECON2 = 0xAA;          /* ... sequence */
	MOVLW	0xaa
	MOVWF	_EECON2
;	.line	81; flash.c	EECON1bits.WR=1;        /* Start Writing */
	BSF	_EECON1bits, 1
;	.line	65; flash.c	for(blockCount=0;blockCount<2; blockCount++) {
	INCF	r0x00, F
	MOVF	r0x00, W
	ADDLW	0x80
	ADDLW	0x7e
	BNC	_00145_DS_
;	.line	83; flash.c	INTCONbits.GIE = 1;     /* Disable interrupts */
	BSF	_INTCONbits, 7
;	.line	84; flash.c	EECON1bits.WR=0;        /* Disable memory write*/
	BCF	_EECON1bits, 1
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_flash__flash64Read	code
_flash64Read:
;	.line	32; flash.c	void flash64Read(unsigned int flashAddr, unsigned char* buffer) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
;	.line	35; flash.c	unsigned int Addr = flashAddr & 0xFFC0;
	MOVLW	0xc0
	ANDWF	r0x00, F
;	.line	38; flash.c	TBLPTRU = 0;
	CLRF	_TBLPTRU
;	.line	39; flash.c	TBLPTRH = (unsigned char)(Addr >> 8);
	MOVF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVF	r0x05, W
	MOVWF	_TBLPTRH
;	.line	40; flash.c	TBLPTRL = (unsigned char)Addr;
	MOVF	r0x00, W
	MOVWF	_TBLPTRL
;	.line	42; flash.c	for(counter=0;counter<64;counter ++) {
	MOVFF	r0x02, r0x00
	MOVFF	r0x03, r0x01
	MOVFF	r0x04, r0x02
	MOVLW	0x40
	MOVWF	r0x03
_00120_DS_:
	TBLRD*+
	
;	.line	46; flash.c	if (buffer) *(buffer++)=TABLAT;
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00116_DS_
	MOVFF	_TABLAT, POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
	INCF	r0x00, F
	BNC	_00116_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00132_DS_:
_00116_DS_:
	DECFSZ	r0x03, F
	BRA	_00120_DS_
;	.line	42; flash.c	for(counter=0;counter<64;counter ++) {
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_flash__flash64Erase	code
_flash64Erase:
;	.line	11; flash.c	void flash64Erase(unsigned int flashAddr) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	13; flash.c	unsigned int Addr = flashAddr & 0xFFC0;
	MOVLW	0xc0
	ANDWF	r0x00, F
;	.line	16; flash.c	TBLPTRU = 0;
	CLRF	_TBLPTRU
;	.line	17; flash.c	TBLPTRH = (unsigned char)(Addr >> 8);
	MOVF	r0x01, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVF	r0x02, W
	MOVWF	_TBLPTRH
;	.line	18; flash.c	TBLPTRL = (unsigned char)Addr;
	MOVF	r0x00, W
	MOVWF	_TBLPTRL
;	.line	20; flash.c	EECON1bits.EEPGD=1;     /* Point to flash memory */
	BSF	_EECON1bits, 7
;	.line	21; flash.c	EECON1bits.CFGS=0;      /* Access flash memory */
	BCF	_EECON1bits, 6
;	.line	22; flash.c	EECON1bits.WREN=1;      /* Enable write */
	BSF	_EECON1bits, 2
;	.line	23; flash.c	EECON1bits.FREE=1;      /* Enable row erase operation */
	BSF	_EECON1bits, 4
;	.line	24; flash.c	INTCONbits.GIE = 0;     /* Disable interrupts */
	BCF	_INTCONbits, 7
;	.line	25; flash.c	EECON2 = 0x55;          /* Erasing ... */
	MOVLW	0x55
	MOVWF	_EECON2
;	.line	26; flash.c	EECON2 = 0xAA;          /* ... sequence */
	MOVLW	0xaa
	MOVWF	_EECON2
;	.line	27; flash.c	EECON1bits.WR=1;        /* Start erase */
	BSF	_EECON1bits, 1
;	.line	28; flash.c	INTCONbits.GIE = 1;     /* Disable interrupts */
	BSF	_INTCONbits, 7
;	.line	29; flash.c	EECON1bits.WR=0;        /* Disable memory write*/
	BCF	_EECON1bits, 1
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_flash__loadTBLPTR	code
_loadTBLPTR:
;	.line	5; flash.c	void loadTBLPTR(unsigned int Addr) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	6; flash.c	TBLPTRU = 0;
	CLRF	_TBLPTRU
;	.line	7; flash.c	TBLPTRH = (unsigned char)(Addr >> 8);
	MOVF	r0x01, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVF	r0x02, W
	MOVWF	_TBLPTRH
;	.line	8; flash.c	TBLPTRL = (unsigned char)Addr;
	MOVF	r0x00, W
	MOVWF	_TBLPTRL
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  610 (0x0262) bytes ( 0.47%)
;           	  305 (0x0131) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
