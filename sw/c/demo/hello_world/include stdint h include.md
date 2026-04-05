#include <stdint.h>
#include "demo_system.h"
#include "gpio.h"

int main(void) {
    // Use unique values so we can find them in the Register File
    volatile uint32_t a = 0x1234; 
    volatile uint32_t b = 0x1111;
    volatile uint32_t c;

    c = a + b; // Result: 0x2345

    // Write to GPIO so the top-level pins also change
    set_outputs(GPIO_OUT, c);

    while (1) {
        asm volatile("nop");
    }
    return 0;
}
