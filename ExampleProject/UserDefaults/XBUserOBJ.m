//
//  XBUserOBJ.m
//  RKXB
//
//  Created by SHB on 15/3/13.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import "XBUserOBJ.h"
#import "XBUserDefault.h"
@implementation XBUserOBJ

+(XBUserOBJ*)sharedUserOBJ{
    static dispatch_once_t onceToken;
    static XBUserOBJ *sharedUserOBJ = nil;
    dispatch_once(&onceToken,^{
        sharedUserOBJ = [[XBUserOBJ alloc] init];
    });
    return sharedUserOBJ;
}

-(void)setUser:(NSString *)user{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    [userDefault setObject:user forKey:XB_Userdefault_User];
}

-(void)setPwd:(NSString *)pwd{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    [userDefault setObject:pwd forKey:XB_Userdefault_Pwd];
}

- (void)setUserID:(NSString *)userID{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    [userDefault setObject:userID forKey:XB_Userdefault_UserID];
}

- (void)setUserToken:(NSString *)userToken{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    [userDefault setObject:userToken forKey:XB_Userdefault_UserToken];
}


//获取
-(NSString*)user{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    return [userDefault textValueForKey:XB_Userdefault_User];
}


-(NSString*)pwd{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    return [userDefault textValueForKey:XB_Userdefault_Pwd];
}

- (NSString*)userID{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    return [userDefault textValueForKey:XB_Userdefault_UserID];
}

- (NSString*)token{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    return [userDefault textValueForKey:XB_Userdefault_UserToken];
}



- (void)removeAllUserInfo{
    XBUserDefault *userDefault = [XBUserDefault sharedWXUserDefault];
    [userDefault removeObjectForKey:XB_Userdefault_UserID];
    [userDefault removeObjectForKey:XB_Userdefault_UserToken];
    [userDefault removeObjectForKey:XB_Userdefault_NewUserID];
    [userDefault removeObjectForKey:XB_Userdefault_NewUserToken];
    [userDefault removeObjectForKey:XB_Userdefault_User];
    [userDefault removeObjectForKey:XB_Userdefault_Pwd];
}

@end
