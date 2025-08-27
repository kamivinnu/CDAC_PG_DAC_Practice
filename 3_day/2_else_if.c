#include <stdio.h>

// conditional statements

// 0 - 3 --> No Ticket
// 3 - 10 --> Half Ticket
// 10 - 55 --> Full Ticket
// >55 --> Senior Citizen Ticket

int main() {
    int age;
    printf("Enter your age: ");
    scanf("%d", &age);
    
    if (0 < age <= 3){
        printf("No Ticket");
    }
    else if (3 < age <= 10) {
        printf("Half Ticket");
    }
    else if (10 < age <= 55) {
        printf("Full Ticket");
    }
    else if (age > 55) {
        printf("Senior Citizen Ticket");
    }
    else{
        printf("Please enter valid age");
    }
    return 0;
}
