//
//  CustomMadeOBJ.m
//  Woxin2.0
//
//  Created by Elty on 10/5/14.
//  Copyright (c) 2014 le ting. All rights reserved.
//



//测试服务器
#define NetWorkProtocol_BaseURL  @"NetWorkProtocol_BaseURL"//我的团队



#import "NetworkProtocolOBJ.h"

@interface NetworkProtocolOBJ()
{
    NSDictionary *_customMadeDic;
    XBApp_Type _type;
}
@end


@implementation NetworkProtocolOBJ

+ (NetworkProtocolOBJ *)sharedNetworkProtocolOBJ{
    static dispatch_once_t onceToken;
    static NetworkProtocolOBJ *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[NetworkProtocolOBJ alloc] init];
    });
    return sharedInstance;
}


- (void)setAppType:(XBApp_Type)type{
    NSString *path = nil;
    
    switch (type) {
        case XBApp_Type_Local:
            path =  [[NSBundle mainBundle] pathForResource:@"LocalNetworkProtocol" ofType:@"plist"];
            break;
        case XBApp_Type_Debug:
            path =  [[NSBundle mainBundle] pathForResource:@"DebugNetworkProtocol" ofType:@"plist"];
            break;
        case XBApp_Type_Release:
            path =  [[NSBundle mainBundle] pathForResource:@"ReleaseNetworkProtocol" ofType:@"plist"];
            break;
        default:  NSLog(@"-------- 警告!未选择打包模式 --------------");
            break;
    }
    
    _customMadeDic = [NSDictionary dictionaryWithContentsOfFile:path] ;
}


//选择接口
- (NSString*)XBMyteamBaseURL{
    NSString *merchantName = [_customMadeDic objectForKey:NetWorkProtocol_BaseURL];
    return merchantName;
}

- (XBApp_Type)appType{
    return _type;
}

@end
