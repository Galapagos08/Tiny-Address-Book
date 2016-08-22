//
//  Userinput.h
//  Tiny Address Book
//
//  Created by Dan Esrey on 2016/22/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getStringFromUser(int stringLength, NSString *prompt);

NSNumber *getNumberFromUser(int maxValidChoice);

void userEntry();

BOOL getEntry(void);
