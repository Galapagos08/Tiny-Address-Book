//
//  Person.h
//  Tiny Address Book
//
//  Created by Dan Esrey on 2016/22/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
    
    
- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email NS_DESIGNATED_INITIALIZER;


@end
