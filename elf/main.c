
// main.c
//#include <stdio.h>

// int main() {
  
//   int rs1,rs2,result;
//   rs1 = 5;
//   rs2 = 3;
  
//   asm volatile(                                   
//     "ccu %[result], %[a], %[b]\n"    
//     : [result] "=r" (result)                    
//     : [a] "r" (rs1), [b] "r" (rs2)              
//   );   
//   return 0;
// }

#include <stdint.h>
// Definition of NULL, a null pointer constant
#define NULL 0
#define DEV_WRITE(addr, val) (*((volatile uint32_t *)(addr)) = val)
#include "math_utils.h"

// Definition of the Node structure for the linked list
typedef struct Node {
    int data;
    struct Node* next;
} Node;

// Function prototypes
Node* create_node(int data);
void append(Node** head_ref, int new_data);
void print_list(Node* node);
void free_list(Node* node);
Node* merge_sort(Node* head);
Node* sorted_merge(Node* a, Node* b);
void split_list(Node* source, Node** front_ref, Node** back_ref);

// Helper functions to replace standard library functions
int get_input();
void print_char(char c);
void print_number(int num);
void newline();

// Memory allocation function (replacement for malloc)
void* my_malloc(int size);

// Memory deallocation function (replacement for free)
void my_free(void* ptr);

// Custom getchar function
char my_getchar();

// Custom putchar function
void my_putchar(char c);
#include <string.h>
// Main function
int main() {
    // Node* head = NULL;
    // int n, i, value;

    // // User input for the linked list
    // print_char('E'); print_char('n'); print_char('t'); print_char('e'); print_char('r'); print_char(' ');
    // print_char('t'); print_char('h'); print_char('e'); print_char(' ');
    // print_char('n'); print_char('u'); print_char('m'); print_char('b'); print_char('e'); print_char('r');
    // print_char(' '); print_char('o'); print_char('f'); print_char(' ');
    // print_char('e'); print_char('l'); print_char('e'); print_char('m'); print_char('e'); print_char('n');
    // print_char('t'); print_char('s'); print_char(':'); newline();

    // n = get_input();

    // print_char('E'); print_char('n'); print_char('t'); print_char('e'); print_char('r'); print_char(' ');
    // print_char('t'); print_char('h'); print_char('e'); print_char(' ');
    // print_char('e'); print_char('l'); print_char('e'); print_char('m'); print_char('e'); print_char('n');
    // print_char('t'); print_char('s'); print_char(':'); newline();

    // for (i = 0; i < n; i++) {
    //     value = get_input();
    //     append(&head, value);
    // }

    // // Sort the linked list
    // head = merge_sort(head);

    // // Print sorted list
    // print_char('S'); print_char('o'); print_char('r'); print_char('t'); print_char('e'); print_char('d');
    // print_char(' '); print_char('l'); print_char('i'); print_char('s'); print_char('t'); print_char(':');
    // newline();
    // print_list(head);

    // // Free allocated memory
    // free_list(head);

      
    // int rs1,rs2,result;
    // rs1 = 5;
    // rs2 = 3;
    // asm volatile(                                   
    //   "ccu %[result], %[a], %[b]\n"    
    //   : [result] "=r" (result)                    
    //   : [a] "r" (rs1), [b] "r" (rs2)              
    // );   

    // calculate_area(rs1, rs2);
    // return 0;

    // Define an array of 10 integers
    int array[10];

    // Use memset to set all bytes in the array to zero
    memset(array, 0, sizeof(array));

    // The array is now initialized, and you can use it further in your code.
    // For example, you could perform operations on the array or set breakpoints
    // here to inspect the array in a debugger.

    return 0;

}

// Create a new node
Node* create_node(int data) {
    Node* new_node = (Node*)my_malloc(sizeof(Node));
    new_node->data = data;
    new_node->next = NULL;
    return new_node;
}

// Append a new node to the end of the list
void append(Node** head_ref, int new_data) {
    Node* new_node = create_node(new_data);
    Node* last = *head_ref;

    if (*head_ref == NULL) {
        *head_ref = new_node;
        return;
    }

    while (last->next != NULL) {
        last = last->next;
    }

    last->next = new_node;
}

// Print the linked list
void print_list(Node* node) {
    while (node != NULL) {
        print_number(node->data);
        print_char(' ');
        node = node->next;
    }
    newline();
}

// Free the memory allocated for the list
void free_list(Node* node) {
    Node* temp;
    while (node != NULL) {
        temp = node;
        node = node->next;
        my_free(temp);
    }
}

// Merge sort the linked list
Node* merge_sort(Node* head) {
    if (head == NULL || head->next == NULL) {
        return head;
    }

    Node* a;
    Node* b;

    // Split the list into two halves
    split_list(head, &a, &b);

    // Recursively sort the halves
    a = merge_sort(a);
    b = merge_sort(b);

    // Merge the sorted halves
    return sorted_merge(a, b);
}

// Merge two sorted lists
Node* sorted_merge(Node* a, Node* b) {
    Node* result = NULL;

    if (a == NULL)
        return b;
    else if (b == NULL)
        return a;

    if (a->data <= b->data) {
        result = a;
        result->next = sorted_merge(a->next, b);
    } else {
        result = b;
        result->next = sorted_merge(a, b->next);
    }

    return result;
}

// Split a list into two halves
void split_list(Node* source, Node** front_ref, Node** back_ref) {
    Node* fast;
    Node* slow;
    slow = source;
    fast = source->next;

    while (fast != NULL) {
        fast = fast->next;
        if (fast != NULL) {
            slow = slow->next;
            fast = fast->next;
        }
    }

    *front_ref = source;
    *back_ref = slow->next;
    slow->next = NULL;
}

// Get an integer input from the user
int get_input() {
    int result = 0;
    char c;

    while (1) {
        c = my_getchar();

        if (c >= '0' && c <= '9') {
            result = result * 10 + (c - '0');
        } else {
            break;
        }
    }

    return result;
}

// Print a character
void print_char(char c) {
    my_putchar(c);
}

// Print an integer
void print_number(int num) {
    if (num == 0) {
        print_char('0');
        return;
    }

    if (num < 0) {
        print_char('-');
        num = -num;
    }

    int digits[10];
    int i = 0;

    while (num > 0) {
        digits[i++] = num % 10;
        num /= 10;
    }

    for (i--; i >= 0; i--) {
        print_char('0' + digits[i]);
    }
}

// Print a newline
void newline() {
    print_char('\n');
}

// Memory allocation function (replacement for malloc)
void* my_malloc(int size) {
    void* ptr = NULL;
    // Replace this with actual memory allocation logic
    // For example, you can implement a basic memory allocator here
    return ptr;
}

// Memory deallocation function (replacement for free)
void my_free(void* ptr) {
    // Replace this with actual memory deallocation logic
    // For example, you can implement a basic memory allocator here
}

// Custom getchar function
char my_getchar() {
    char c = 0;
    // Replace this with actual character input logic
    return c;
}

// Custom putchar function
void my_putchar(char c) {
  DEV_WRITE(0x20000 + 0x0, (unsigned char)c);

  return;
}
