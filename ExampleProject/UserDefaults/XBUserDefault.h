//
//  XBUserDefault.h
//  RKXB
//
//  Created by SHB on 15/3/13.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XBUserdefaultDefine.h"
#import <UIKit/UIKit.h>

@interface XBUserDefault : NSObject

+ (id)sharedWXUserDefault;

- (NSInteger)integerValueForKey:(NSString*)key;
- (BOOL)boolValueForKey:(NSString*)key;
- (NSString*)textValueForKey:(NSString*)key;
- (NSDictionary*)dicValueForKey:(NSString*)key;
- (CGFloat)floatValueForKey:(NSString*)key;

- (void)setInteger:(NSInteger)value forKey:(NSString*)key;
- (void)setBool:(BOOL)value forKey:(NSString*)key;
- (void)setFloat:(float)value forkey:(NSString*)key;
- (void)setObject:(id)object forKey:(NSString*)key;

- (void)removeObjectForKey:(NSString*)key;
- (NSArray*)allKeys;
- (BOOL)hasKey:(NSString*)key;

@end
