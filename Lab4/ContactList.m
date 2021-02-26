//
//  ContactList.m
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype) initContactList {
    _contactList = [NSMutableArray arrayWithObjects:[[Contact alloc] initName:@"Yuki Tsukada" AndEmail:@"yuki@gmail.com"], [[Contact alloc] initName:@"Yuki1 Tsukada" AndEmail:@"yuki1@gmail.com"] , nil];
    return self;
}

- (void) addContact: (Contact *) newContact {
    [self.contactList addObject:newContact];
}

- (NSString *) returnContactList {
    NSString *fullContactList = @"";
    int i = 0;
    for (Contact *contact in self.contactList) {
        NSString *eachContactList = [NSString stringWithFormat: @"%d:<%@>(%@)\n", i, contact.name, contact.email];
        i++;
        fullContactList = [fullContactList stringByAppendingString:eachContactList];
    }
    return fullContactList;
}

@end
