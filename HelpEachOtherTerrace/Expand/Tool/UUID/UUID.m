//
//  UUID.m
//  kidneyUser
//
//  Created by 徐学超 on 14/11/11.
//  Copyright © 2014年 xxc. All rights reserved.
//

#import "UUID.h"
#import "KeyChainStore.h"

@implementation UUID

static NSString * const DEVICE_DEFAULT_UUID = @"com.jjzh.HelpEachOtherTerrace.userName";
+(NSString *)getUUID {
    NSString * strUUID = (NSString *)[KeyChainStore load:DEVICE_DEFAULT_UUID];
    
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID) {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        //将该uuid保存到keychain
        [KeyChainStore save:DEVICE_DEFAULT_UUID data:strUUID];
        
    }
    return strUUID;
}

@end


