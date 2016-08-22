//
//  Userinput.m
//  Tiny Address Book
//
//  Created by Dan Esrey on 2016/22/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Userinput.h"

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


