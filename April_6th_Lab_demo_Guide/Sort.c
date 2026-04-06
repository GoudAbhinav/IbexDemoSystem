int arr[] = {6,4,8,3,5,7,9};

int main(void) {
    //code to sort the array
    for (int i = 0; i < sizeof(arr)/sizeof(arr[0]); i++) {
        for (int j = 0; j < sizeof(arr)/sizeof(arr[0]) - i - 1; j++) {
            if (arr[j] > arr[j  + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return 0;
}
