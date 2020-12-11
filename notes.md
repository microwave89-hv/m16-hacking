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
  + Checksum is Intel Hex
