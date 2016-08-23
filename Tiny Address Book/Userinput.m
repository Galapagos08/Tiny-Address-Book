//
//  Userinput.m
//  Tiny Address Book
//
//  Created by Dan Esrey on 2016/22/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Userinput.h"
#import "Person.h"

NSString *getStringFromUser(int stringLength, NSString *prompt) {
    
    char *buffer = malloc(sizeof(char) * stringLength);
    
    char *result = NULL;
    while (result != buffer) {
        fpurge(stdin);
        NSLog(@"%@", prompt);
        result = fgets(buffer, stringLength, stdin);
    }
    NSString *returnValue = @(buffer);
    
    free(buffer);
    return returnValue;
}
NSNumber *getNumberFromUser(int maxValidChoice) {
    int choice = -1;
    int numberOfItemsScanned = 0;
    
    int firstValidChoice = 0;
    
    while ((numberOfItemsScanned !=1) && ((choice < firstValidChoice) || (choice > maxValidChoice))) {
        printf("Please enter a number from 0 to %d:\n\n", maxValidChoice);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", &choice);
        
    }
    return @(choice);
}
Person* userEntry() {
    NSString *name = getStringFromUser(50, @"\n\nPlease enter the name of the person you wish to add to the address book:\n\n");
    NSString *email = getStringFromUser(100, @"\n\nNow please enter the person's email address\n\n");
    NSString *buddy = getStringFromUser(50, @"\n\nNow please enter the name of the person's friend:\n\n");
    Person *identity = [[Person alloc] initWithName:name
                                              email:email
                                              buddy:buddy];
    return identity;
}
int addresses() {
    Person *Person = userEntry();
    NSMutableArray *entries = [NSMutableArray array];
    [entries addObject: Person];
    NSLog(@"\n\n|Name:    %@|Email:   %@|Buddy:   %@\n", Person, [Person email], [Person buddy]);
    NSLog(@"\nWould you like to make another entry?\n(0 = NO; 1 = YES)\n");
    NSNumber *anotherEntry = getNumberFromUser(1);
    return [anotherEntry intValue];
}












