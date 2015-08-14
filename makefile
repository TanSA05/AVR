CC = gcc
BlinkO = blink.o
BlinkC = blinkled.c
BlinkH = blink.hex
Processor = m328p
Baud = 57600
Port = /dev/ttyUSB0
Upload = flash:w:blink.hex


compile:
	avr-$(CC) -mmcu=atmega328p -Os -o $(BlinkO) (BlinkLed)
	avr-objcopy -O ihex $(BlinkC) $(BlinkH)

program:
	avrdude -p ($Processor) -c arduino -b $(Baud) -P ($port) -U ($Upload)

clean:
	rm *.hex *.o
