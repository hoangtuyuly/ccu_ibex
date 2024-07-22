unsigned int sum(unsigned int arr[], int n) 
{ 
    unsigned int sum = 0; // initialize sum 
  
    // Iterate through all elements  
    // and add them to sum 
    for (int i = 0; i < n; i++) 
    sum += arr[i]; 
  
    return sum; 
} 
  
void main() 
{ 
    unsigned int arr[] = {1, 2, 3, 4}; 
    int n = 4;
    unsigned int *var = (int*)0x300;
    *var = sum(arr,4);
    *var = 0xDEADBEEF;
} 
