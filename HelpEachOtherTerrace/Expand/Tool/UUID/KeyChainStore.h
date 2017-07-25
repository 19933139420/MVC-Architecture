//
//  KeyChainStore.h
//  kidneyUser
//
//  Created by 徐学超 on 14/11/11.
//  Copyright © 2014年 xxc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeyChainStore : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyData:(NSString *)service;

@end
