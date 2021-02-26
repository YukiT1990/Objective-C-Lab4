//
//  Contact.m
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import "Contact.h"

@implementation Contact

- (instancetype) initName: (NSString *) name AndEmail: (NSString *) email AndPhoneNumbers: (NSMutableDictionary *) phoneNumbers {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumbers = phoneNumbers;
    }
    return self;
}

@end
