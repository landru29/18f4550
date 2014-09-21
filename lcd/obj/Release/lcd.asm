;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.1 #9075 (Sep 21 2014) (Linux)
; This file was generated Sun Sep 21 19:43:33 2014
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_lcd_init
	global	_lcd_print
	global	_putchar
	global	_lcd_pushLetter
	global	_lcd_setLine
	global	_lcd_clear
	global	_lcd_home
	global	_lcd_ddram
	global	_lcd_emode
	global	_lcd_dmode
	global	_lcd_cmode
	global	_lcd_fmode
	global	_lcd_send_cmd
	global	_lcd_send_data
	global	_lcd_busy
	global	__cristalMhz
	global	__autoRedirect

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
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
	extern	_stdin
	extern	_stdout
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
	extern	_delay10tcy
	extern	_delay100tcy
	extern	_delay1ktcy

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


	idata
__autoRedirect	db	0x00


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1

udata_lcd_0	udata
__cristalMhz	res	2

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_lcd__lcd_busy	code
_lcd_busy:
;	.line	252; lcd.c	unsigned char lcd_busy()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
;	.line	257; lcd.c	LCD_DATA_CNF = 0xFF;
	MOVLW	0xff
	MOVWF	_TRISD
;	.line	258; lcd.c	LCD_RW = 1;
	BSF	_LATCbits, 1
;	.line	259; lcd.c	LCD_RS = 0;
	BCF	_LATCbits, 2
;	.line	260; lcd.c	LCD_E = 1;
	BSF	_LATCbits, 0
	BANKSEL	__cristalMhz
;	.line	262; lcd.c	delay100tcy(_cristalMhz*8);
	MOVF	__cristalMhz, W, B
	MOVWF	r0x00
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
	MOVF	r0x00, W
	MULLW	0x08
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	CALL	_delay100tcy
;	.line	264; lcd.c	dataval = LCD_DATA;
	MOVFF	_LATD, r0x00
;	.line	265; lcd.c	LCD_E = 0;
	BCF	_LATCbits, 0
;	.line	267; lcd.c	LCD_DATA_CNF = 0x00;
	CLRF	_TRISD
;	.line	269; lcd.c	if (dataval & 0x80)	return 1;
	BTFSS	r0x00, 7
	BRA	_00217_DS_
	MOVLW	0x01
	BRA	_00218_DS_
_00217_DS_:
;	.line	270; lcd.c	return 0;
	CLRF	WREG
_00218_DS_:
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_send_data	code
_lcd_send_data:
;	.line	233; lcd.c	void lcd_send_data(unsigned char dataval)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_00208_DS_:
;	.line	236; lcd.c	while (lcd_busy());
	CALL	_lcd_busy
	MOVWF	r0x01
	MOVF	r0x01, W
	BNZ	_00208_DS_
;	.line	238; lcd.c	LCD_RW = 0;
	BCF	_LATCbits, 1
;	.line	239; lcd.c	LCD_RS = 1;
	BSF	_LATCbits, 2
;	.line	240; lcd.c	LCD_DATA = dataval;
	MOVFF	r0x00, _LATD
;	.line	241; lcd.c	LCD_E = 1;
	BSF	_LATCbits, 0
	BANKSEL	__cristalMhz
;	.line	242; lcd.c	delay100tcy(_cristalMhz*8);
	MOVF	__cristalMhz, W, B
	MOVWF	r0x00
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
	MOVF	r0x00, W
	MULLW	0x08
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	CALL	_delay100tcy
;	.line	243; lcd.c	LCD_E = 0;
	BCF	_LATCbits, 0
;	.line	244; lcd.c	LCD_DATA=0;
	CLRF	_LATD
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_send_cmd	code
_lcd_send_cmd:
;	.line	212; lcd.c	void lcd_send_cmd(unsigned char cmd)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_00200_DS_:
;	.line	214; lcd.c	while (lcd_busy());
	CALL	_lcd_busy
	MOVWF	r0x01
	MOVF	r0x01, W
	BNZ	_00200_DS_
;	.line	216; lcd.c	LCD_RS = 0;
	BCF	_LATCbits, 2
;	.line	217; lcd.c	LCD_RW = 0;
	BCF	_LATCbits, 1
;	.line	218; lcd.c	LCD_DATA_CNF = 0;
	CLRF	_TRISD
;	.line	220; lcd.c	LCD_DATA=cmd;
	MOVFF	r0x00, _LATD
;	.line	222; lcd.c	LCD_E=1;
	BSF	_LATCbits, 0
	BANKSEL	__cristalMhz
;	.line	223; lcd.c	delay100tcy(_cristalMhz*8);
	MOVF	__cristalMhz, W, B
	MOVWF	r0x00
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
	MOVF	r0x00, W
	MULLW	0x08
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	CALL	_delay100tcy
;	.line	224; lcd.c	LCD_E=0;
	BCF	_LATCbits, 0
;	.line	225; lcd.c	LCD_DATA=0;
	CLRF	_LATD
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_fmode	code
_lcd_fmode:
;	.line	202; lcd.c	void lcd_fmode(unsigned char options)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	204; lcd.c	lcd_send_cmd((options & 0x1F) | 0x20);
	MOVLW	0x1f
	ANDWF	r0x00, F
	BSF	r0x00, 5
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_cmode	code
_lcd_cmode:
;	.line	186; lcd.c	void lcd_cmode(unsigned char options)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	188; lcd.c	lcd_send_cmd((options & 0x03) | 0x04);
	MOVLW	0x03
	ANDWF	r0x00, F
	BSF	r0x00, 2
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_dmode	code
_lcd_dmode:
;	.line	172; lcd.c	void lcd_dmode(unsigned char options)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	174; lcd.c	lcd_send_cmd((options & 0x07) | 0x08);
	MOVLW	0x07
	ANDWF	r0x00, F
	BSF	r0x00, 3
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_emode	code
_lcd_emode:
;	.line	157; lcd.c	void lcd_emode(unsigned char options)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	159; lcd.c	lcd_send_cmd((options & 0x03) | 0x04);
	MOVLW	0x03
	ANDWF	r0x00, F
	BSF	r0x00, 2
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_ddram	code
_lcd_ddram:
;	.line	143; lcd.c	void lcd_ddram(unsigned char address)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	145; lcd.c	lcd_send_cmd((address & 0x7F) | 0x80);
	BCF	r0x00, 7
	BSF	r0x00, 7
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_home	code
_lcd_home:
;	.line	133; lcd.c	void lcd_home()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	135; lcd.c	lcd_send_cmd(0x02);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_clear	code
_lcd_clear:
;	.line	124; lcd.c	void lcd_clear()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	126; lcd.c	lcd_send_cmd(0x01);
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_setLine	code
_lcd_setLine:
;	.line	111; lcd.c	void lcd_setLine(unsigned char nb)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;multiply lit val:0x40 by variable r0x00 and store in r0x00
;	.line	114; lcd.c	lcd_ddram(SECOND_LINE*nb);
	MOVF	r0x00, W
	MULLW	0x40
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_ddram
	MOVF	POSTINC1, F
;	.line	115; lcd.c	for(i=0;i<16;i++) {
	CLRF	r0x01
_00149_DS_:
;	.line	116; lcd.c	lcd_send_data(' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	CALL	_lcd_send_data
	MOVF	POSTINC1, F
;	.line	115; lcd.c	for(i=0;i<16;i++) {
	INCF	r0x01, F
	MOVLW	0x10
	SUBWF	r0x01, W
	BNC	_00149_DS_
;	.line	118; lcd.c	lcd_ddram(SECOND_LINE*nb);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_ddram
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_pushLetter	code
_lcd_pushLetter:
;	.line	101; lcd.c	void lcd_pushLetter(unsigned char l)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	103; lcd.c	lcd_send_data(l);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_data
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__putchar	code
_putchar:
;	.line	91; lcd.c	void putchar(char c) __wparam
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVWF	r0x00
	BANKSEL	__autoRedirect
;	.line	93; lcd.c	if (_autoRedirect) lcd_send_data(c);
	MOVF	__autoRedirect, W, B
	BZ	_00138_DS_
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_data
	MOVF	POSTINC1, F
_00138_DS_:
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lcd__lcd_print	code
_lcd_print:
;	.line	78; lcd.c	void lcd_print(char* st)
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
;	.line	81; lcd.c	for(i=0;(st[i]!=0) && (i<16);i++) {
	CLRF	r0x03
_00115_DS_:
	MOVF	r0x03, W
	ADDWF	r0x00, W
	MOVWF	r0x04
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x06
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
	MOVWF	r0x04
	MOVF	r0x04, W
	BZ	_00117_DS_
	MOVLW	0x10
	SUBWF	r0x03, W
	BC	_00117_DS_
;	.line	82; lcd.c	lcd_send_data((unsigned char)st[i]);
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_lcd_send_data
	MOVF	POSTINC1, F
;	.line	81; lcd.c	for(i=0;(st[i]!=0) && (i<16);i++) {
	INCF	r0x03, F
	BRA	_00115_DS_
_00117_DS_:
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
S_lcd__lcd_init	code
_lcd_init:
;	.line	15; lcd.c	void lcd_init(unsigned int cristalMhz, unsigned char autoRedirect)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	17; lcd.c	_cristalMhz = cristalMhz;
	MOVFF	r0x00, __cristalMhz
	MOVFF	r0x01, (__cristalMhz + 1)
;	.line	18; lcd.c	_autoRedirect = autoRedirect;
	MOVFF	r0x02, __autoRedirect
;	.line	20; lcd.c	if (autoRedirect) {
	MOVF	r0x02, W
	BZ	_00106_DS_
	BANKSEL	_stdout
;	.line	21; lcd.c	stdout = STREAM_USER;
	CLRF	_stdout, B
	BANKSEL	(_stdout + 1)
	CLRF	(_stdout + 1), B
	MOVLW	0x2f
	BANKSEL	(_stdout + 2)
	MOVWF	(_stdout + 2), B
_00106_DS_:
;	.line	24; lcd.c	LCD_DATA_CNF = 0;
	CLRF	_TRISD
;	.line	25; lcd.c	LCD_RS_CNF = 0;
	BCF	_TRISCbits, 2
;	.line	26; lcd.c	LCD_RW_CNF = 0;
	BCF	_TRISCbits, 1
;	.line	27; lcd.c	LCD_E_CNF = 0;
	BCF	_TRISCbits, 0
;	.line	28; lcd.c	LCD_E=0;
	BCF	_LATCbits, 0
; ;multiply lit val:0x04 by variable r0x00 and store in r0x01
;	.line	31; lcd.c	delay1ktcy(cristalMhz*4); /* Wait for 16ms after poweron (here 16ms) */
	MOVF	r0x00, W
	MULLW	0x04
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	CALL	_delay1ktcy
;	.line	33; lcd.c	LCD_DATA = 0x30;
	MOVLW	0x30
	MOVWF	_LATD
;	.line	34; lcd.c	LCD_RS = 0;
	BCF	_LATCbits, 2
;	.line	35; lcd.c	LCD_RW = 0;
	BCF	_LATCbits, 1
;	.line	38; lcd.c	LCD_E=1;
	BSF	_LATCbits, 0
;	.line	39; lcd.c	delay1ktcy(cristalMhz); /* Wait for 4.1ms */
	MOVF	r0x00, W
	CALL	_delay1ktcy
; ;multiply lit val:0x03 by variable r0x00 and store in r0x01
;	.line	40; lcd.c	delay10tcy(3*cristalMhz);
	MOVF	r0x00, W
	MULLW	0x03
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	CALL	_delay10tcy
;	.line	43; lcd.c	LCD_E=0;
	BCF	_LATCbits, 0
; ;multiply lit val:0x08 by variable r0x00 and store in r0x01
;	.line	44; lcd.c	delay100tcy(cristalMhz*8);
	MOVF	r0x00, W
	MULLW	0x08
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	CALL	_delay100tcy
;	.line	45; lcd.c	LCD_E=1;
	BSF	_LATCbits, 0
;	.line	46; lcd.c	delay10tcy(3+cristalMhz); /* Wait for 100µs */
	MOVLW	0x03
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVF	r0x02, W
	CALL	_delay10tcy
;	.line	47; lcd.c	LCD_E=0;
	BCF	_LATCbits, 0
;	.line	48; lcd.c	delay100tcy(cristalMhz*8);
	MOVF	r0x01, W
	CALL	_delay100tcy
;	.line	49; lcd.c	LCD_E=1;
	BSF	_LATCbits, 0
; ;multiply lit val:0x02 by variable r0x00 and store in r0x00
;	.line	50; lcd.c	delay10tcy(2*cristalMhz); /* Wait for 42µs */
	MOVF	r0x00, W
	MULLW	0x02
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	CALL	_delay10tcy
;	.line	51; lcd.c	LCD_E=0;
	BCF	_LATCbits, 0
;	.line	52; lcd.c	delay100tcy(cristalMhz*8);
	MOVF	r0x01, W
	CALL	_delay100tcy
;	.line	57; lcd.c	lcd_send_cmd(0x08);
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_lcd_send_cmd
	MOVF	POSTINC1, F
;	.line	60; lcd.c	lcd_clear();
	CALL	_lcd_clear
;	.line	63; lcd.c	lcd_emode(INC_CURSOR);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_lcd_emode
	MOVF	POSTINC1, F
;	.line	66; lcd.c	lcd_fmode(IFACE_8BIT | DUAL_LINE);
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_lcd_fmode
	MOVF	POSTINC1, F
;	.line	69; lcd.c	lcd_dmode(DISPLAY_ON | CURSOR_ON | BLINK_ON);
	MOVLW	0x07
	MOVWF	POSTDEC1
	CALL	_lcd_dmode
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	 1054 (0x041e) bytes ( 0.80%)
;           	  527 (0x020f) words
; udata size:	    2 (0x0002) bytes ( 0.11%)
; access size:	    7 (0x0007) bytes


	end
