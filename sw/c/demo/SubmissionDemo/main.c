int main(void) {
    // Hardcoded GPIO address
    volatile int* leds = (int*)0x80000000; 
    
    // The sum: 0x1234 + 0x1111 = 0x2345
    int sum = 0x1234 + 0x1111;      
    
    // Write directly to the hardware pins
    *leds = sum; 
    
    while(1) {
        asm volatile("nop");
    }
    return 0;
}
