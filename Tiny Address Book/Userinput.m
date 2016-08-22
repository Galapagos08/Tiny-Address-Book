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
void userEntry() {
    NSString *name = getStringFromUser(50, @"\n\nPlease enter the name of your entry, in the form of LastnameFirstname:\n\n");
    NSString *email = getStringFromUser(100, @"\n\nNow please enter the person's email address\n\n");
    
    Person *identity = [[Person alloc] initWithName:name
                                              email:email];
    
    NSLog(@"\n\nName: %@Email: %@\n\n", [identity name], [identity email]);
}


