//
//  Input.h
//  Lab4
//
//  Created by Yuki Tsukada on 2021/02/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Input : NSObject

@property NSMutableArray* userInputLog;

- (instancetype) initInputLog;

- (void) addNewLog: (NSString *) newLog;
- (NSString *) returnLatestThreeLogs;

@end

NS_ASSUME_NONNULL_END
