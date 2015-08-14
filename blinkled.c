#include <avr/io.h>
#include <util/delay.h>
#define F_CPU 4000000UL

int main(void) {
  // put your setup code here, to run once:
  DDRD = 0xFF;

  while(1) {
  // put your main code here, to run repeatedly:
  PORTD |= (1<<0);
  _delay_ms(1000);
  PORTD &= ~(1<<0);
  _delay_ms(1000);
  }
  return 0;
}
