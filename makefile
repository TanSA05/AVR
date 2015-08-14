all:
	avr-gcc -mmcu=atmega328p -Os -o blink.o blinkled.c
	avr-objcopy -O ihex blink.o blink.hex
download:
	avrdude -p m328p -c arduino -b 57600 -P /dev/ttyUSB0 -U flash:w:blink.hex
clean:
	rm *.hex *.o
