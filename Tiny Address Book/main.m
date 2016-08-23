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
        
        BOOL shouldContinue = YES;
        
        while (shouldContinue) {
            Person *identity = userEntry();
            NSMutableArray *bookEntry = [NSMutableArray array];
            [bookEntry addObject:identity];
            NSMutableString *string = [NSMutableString string];
            NSInteger lastIndex = bookEntry.count - 1;
            NSInteger index = 0;
            for (Person *identity in bookEntry) {
                [string appendFormat:@"Name:  %@Email:  %@Buddy:  %@", identity.name, identity.email, identity.buddy];
                
                if (index++ < lastIndex) {
                    [string appendString:@"\n"];
                }
                NSLog(@"\n%@", string);
            }
            NSLog(@"\nWould you like to make another entry?\n(0 = NO; 1 = YES)\n");
            NSNumber *anotherEntry = getNumberFromUser(1);
            shouldContinue = [anotherEntry intValue];
        }
    }
    return 0;
}
        




    



