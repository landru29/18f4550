#ifndef __FLASH_H__
#define __FLASH_H__

/* Erase 64 bytes in flash; flashAddr is a multiple of 64 */
void flash64Erase(unsigned int flashAddr);

/* Read 64 bytes in flash; flashAddr is a multiple of 64; buffer is 64 bytes wide */
void flash64Read(unsigned int flashAddr, unsigned char* buffer);

/* Write 64 bytes in flash; flashAddr is a multiple of 64; buffer is 64 bytes wide */
void flash64Write(unsigned int flashAddr, unsigned char* buffer);

#endif
