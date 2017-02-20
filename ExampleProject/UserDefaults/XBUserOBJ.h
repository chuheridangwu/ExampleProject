//
//  XBUserOBJ.h
//  RKXB
//
//  Created by SHB on 15/3/13.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KeychainItemWrapper;
@interface XBUserOBJ : NSObject
@property (nonatomic, strong) KeychainItemWrapper * passwdKeyChainItem;
@property (nonatomic, strong) KeychainItemWrapper * userKeyChainItem;
+(XBUserOBJ*)sharedUserOBJ;

-(void)setUser:(NSString*)user;    //设置帐号
-(void)setPwd:(NSString*)pwd;      //设置密码
- (void)setUserID:(NSString*)userID;  //用户ID
- (void)setUserToken:(NSString *)userToken; //设置toekn


- (NSString*)user;
- (NSString*)pwd;
- (NSString*)userID;
- (NSString*)token;

-(void)removeAllUserInfo;
@end
