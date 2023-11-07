#include<8051.h>

void delay(unsigned int time) {
    while(time--);
}

void main() {
    int i;
    for(i = 0; i < 10; i++) {
        P1 = 0x55;
        delay(50000);
        P1 = 0xAA;
        delay(50000);
    }
}