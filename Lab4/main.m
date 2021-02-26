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
            NSString *userChoiceInput = [inputcontroller inputForPrompt:@"\nWhat would you like to do next?\n\nnew - Create a new contact\n\nlist - List all contacts\n\nquit - Exit Application\n"];
            if ([userChoiceInput  isEqual: @"quit"]) {
                programOn = NO;
            } else if ([userChoiceInput  isEqual: @"new"]) {
                newContact.name = [inputcontroller inputForPrompt:@"Input the name: "];
                newContact.email = [inputcontroller inputForPrompt:@"Input the email: "];
                [newContactList addContact:newContact];
            } else if ([userChoiceInput  isEqual: @"list"]) {
                NSLog(@"\n%@", newContactList.returnContactList);
            }
        }
    }
    return 0;
}
