// Global variables
int numbers[5] = {15, 87, 42, 99, 23}; // Example values
int maximum = -1;

// Function to find the maximum of two numbers
int max(int a, int b) {
    if (a > b) {
        return a;
    }
    return b;
}

int main(void) {
    // Calling max() multiple times sequentially to find the overall maximum
    maximum = max(numbers[0], numbers[1]);
    maximum = max(maximum, numbers[2]);
    maximum = max(maximum, numbers[3]);
    maximum = max(maximum, numbers[4]);

    /* Alternatively, this could be written in a single line using nested calls:
    maximum = max(max(max(max(numbers[0], numbers[1]), numbers[2]), numbers[3]), numbers[4]);
    */

    return 0;
}
