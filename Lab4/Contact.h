//
//  Contact.h
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString* name;
@property NSString* email;

- (instancetype) initName: (NSString *) name AndEmail: (NSString *) email;

@end

NS_ASSUME_NONNULL_END
