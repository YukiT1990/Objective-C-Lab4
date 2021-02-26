//
//  ContactList.h
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray *contactList;

- (instancetype) initContactList;

- (void) addContact: (Contact *) newContact;
- (NSString *) returnContactList;
- (NSString *) returnTargetContactDetail: (int) index;
- (NSString *) returnMatchedContacts: (NSString *) keyword;

@end

NS_ASSUME_NONNULL_END
