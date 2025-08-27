#include <stdio.h>

// conditional statements

// if, if else, if else-if else

int main() {
    int age;
    printf("Enter your age: ");
    scanf("%d", &age);
    
    if (age > 18){
        printf("you are elgible to vote.");
    }
    else {
        printf("you are not elgible to vote");
    }
    return 0;
}
