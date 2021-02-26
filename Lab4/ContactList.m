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
        NSString *eachContactDetail = [NSString stringWithFormat: @"%d:<%@>(%@)\n", i, contact.name, contact.email];
        i++;
        fullContactList = [fullContactList stringByAppendingString:eachContactDetail];
    }
    return fullContactList;
}

- (NSString *) returnTargetContactDetail: (int) index {
    if (index < [self.contactList count]) {
        Contact *targetContact = [self.contactList objectAtIndex:index];
        NSString *targetContactInfo = [NSString stringWithFormat: @"id: %d\nname: %@\nemail: %@\n", index, targetContact.name, targetContact.email];
        return targetContactInfo;
    } else {
        return @"Not found.";
    }
}

- (NSString *) returnMatchedContacts: (NSString *) keyword {
    NSMutableArray *matchedContactsIndex = [NSMutableArray new];
    for (int i = 0; i < [self.contactList count]; i++) {
        Contact *eachContact = [self.contactList objectAtIndex:i];
        if ([[eachContact.name lowercaseString] containsString:[keyword lowercaseString]] || [[eachContact.email lowercaseString] containsString:[keyword lowercaseString]]) {
            [matchedContactsIndex addObject:[NSNumber numberWithInt:i]];
        }
    }
    NSString *matchedContactList = @"";
    for (int i = 0; i < [self.contactList count]; i++) {
        if ([matchedContactsIndex containsObject:[NSNumber numberWithInt:i]]) {
            Contact *eachContact = [self.contactList objectAtIndex:i];
            NSString *eachContactDetail = [NSString stringWithFormat: @"%d:<%@>(%@)\n", i, eachContact.name, eachContact.email];
            matchedContactList = [matchedContactList stringByAppendingString:eachContactDetail];
        }
    }
    if ([matchedContactList  isEqual: @""]) {
        return @"Not found.";
    }
    return matchedContactList;
}

- (BOOL) checkDuplicateEmail: (NSString *) newEmail {
    for (int i = 0; i < [self.contactList count]; i++) {
        Contact *eachContact = [self.contactList objectAtIndex:i];
        if ([eachContact.email  isEqual: newEmail]) {
            return YES;
        }
    }
    return NO;
}

@end
