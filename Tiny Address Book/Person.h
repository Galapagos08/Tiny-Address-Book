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

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *friend;
    
    
- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                      friend:(NSString *)friend NS_DESIGNATED_INITIALIZER;


@end
