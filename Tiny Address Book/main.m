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
        
        BOOL anotherEntry = YES;
        
        while (anotherEntry) {
            anotherEntry = getEntry();
        }
        
    }
    return 0;
}
