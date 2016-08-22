//
//  main.m
//  Tiny Address Book
//
//  Created by Dan Esrey on 2016/22/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Userinput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *name = getStringFromUser(40, @"\n\nPlease enter the name of your entry, in the form of LastnameFirstname:\n\n");
        NSString *email = getStringFromUser(100, @"\n\nPlease enter the email address\n\n");
        
        Person *identity = [[Person alloc] initWithName:name
                                                  email:email];
        
        NSLog(@"\n\nName: %@\nEmail: %@\n\n", [identity name], [identity email]);

        
        
    }
    return 0;
}
