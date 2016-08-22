//
//  Person.m
//  Tiny Address Book
//
//  Created by Dan Esrey on 2016/22/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
    return [self initWithName:@"Unnamed"
                        email:@"Not set"
                       friend:@"tbd"];
}

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                      friend:(NSString *)friend {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _friend = friend;
    }
    return self;
}

- (NSString *)name {
    return _name;
}

- (NSString *)description {
    return _name;
}

- (NSString *)email {
    return _email;
}

- (NSString *)friend {
    return _friend;
}
    
@end
