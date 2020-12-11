# Loose notes
1. stk500 protocol programmer + atmega16@MBP10,1:
  ```
  $ brew install avrdude
  $ brew install avra
  $ avra ledtest.asm
  $ ls -l /dev/cu.*
  $ avrdude -p m16 -c stk500 -P /dev/cu.usbserial-???????? -U flash:w:./ledtest.hex
  ```
2. Fuses: avrdude shows the fuses each time a µC access is performed:
  ```
  avrdude: safemode: Fuses OK (E:FF, H:C9, L:FF)
  ```
3. Nice to know
  + Usual file format is Intel Hex
  + Checksum is [Intel Hex](https://en.wikipedia.org/wiki/Intel_HEX#Checksum_calculation)
4. __Extremely__ important to know, especially when attempting to analyze assembled .hex files!
  + When working with .ORG
    > Note that the SRAM and EEPROM location counters count bytes whereas the Program memory location counter counts words.
    >
    > &mdash; <cite>AVR Assembler User Guide pdf</cite>
  + When using online disassembler on .hex files you must disassemble line by line if the first line(s) are shorter than the following ones, and pad missing bytes by zeros, so the following lines are at the proper addresses again.
  + The address offsets (== absolute flash addresses in the atmega16 case) in the .hex file are __byte__ addresses whereas mentioned above, the arguments to the .ORG directive is a __word__ address!
