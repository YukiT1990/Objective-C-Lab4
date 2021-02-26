//
//  InputController.m
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import "InputController.h"

@implementation InputController


- (NSString *) inputForPrompt: (NSString *) promptString {
    int maxLength = 225;
    NSLog(@"%@ ", promptString);
    char inputCStr[maxLength];
    char *input = fgets(inputCStr, maxLength, stdin);
    if (input != NULL) {
        NSString *resultObjCStr = [NSString stringWithCString:inputCStr encoding:NSUTF8StringEncoding];
        NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *trimmedInput = [resultObjCStr stringByTrimmingCharactersInSet:whitespaces];
        return trimmedInput;
    }
    return NULL;
}


@end
