//
//  main.m
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//



#import <Foundation/Foundation.h>
#import "InputController.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL programOn = YES;
        ContactList *newContactList = [[ContactList alloc] initContactList];
        
        while (programOn) {
            InputController *inputcontroller = [[InputController alloc] init];
            Contact *newContact = [[Contact alloc] init];
            NSString *userChoiceInput = [inputcontroller inputForPrompt:@"\n\nWhat would you like to do next?\n\nnew - Create a new contact\n\nlist - List all contacts\n\nquit - Exit Application\n\nshow - Show target contact by id\n\nfind - Find contact with keyword\n"];
            if ([userChoiceInput  isEqual: @"quit"]) {
                programOn = NO;
            } else if ([userChoiceInput  isEqual: @"new"]) {
                newContact.email = [inputcontroller inputForPrompt:@"Input the email: "];
                // Bonus 3: Prevent duplicate entries
                if ([newContactList checkDuplicateEmail:newContact.email]) {
                    NSLog(@"\nThe email already exists.");
                    continue;
                }
                newContact.name = [inputcontroller inputForPrompt:@"Input the name: "];
                [newContactList addContact:newContact];
                NSLog(@"\nThe contact is successfully added.");
            } else if ([userChoiceInput  isEqual: @"list"]) {
                NSLog(@"\n%@", newContactList.returnContactList);
                
            // Bonus 1: Contact details
            } else if ([userChoiceInput  isEqual: @"show"]) {
                NSString *indexChoiceInput = [inputcontroller inputForPrompt:@"\nInput the id of the contact to display: "];
                if ([indexChoiceInput  isEqual: @"0"] || indexChoiceInput.intValue != 0) {
                    NSLog(@"\n%@", [newContactList returnTargetContactDetail:indexChoiceInput.intValue]);
                } else {
                    NSLog(@"\nInvalid input. Please input a number.");
                }
            // Bonus 2: Implement Contact search
            } else if ([userChoiceInput  isEqual: @"find"]) {
                NSString *searchKeywordInput = [inputcontroller inputForPrompt:@"\nInput the keyword to search: "];
                NSLog(@"\n%@", [newContactList returnMatchedContacts:searchKeywordInput]);
            }
        }
    }
    return 0;
}
