//
//  Contact.m
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import "Contact.h"

@implementation Contact

- (instancetype) initName: (NSString *) name AndEmail: (NSString *) email{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

@end
