//
//  JJZHNetwork.h
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/15.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import <MBProgressHUD.h>

@interface JJZHNetwork : NSObject

//GET
+ (void)GET:(NSString *)url parameters:(id)params success:(void (^)(id))success;

//POST
+ (void)POST:(NSString *)url parameters:(id)params success:(void (^)(id))success;

//PUT
+ (void)PUT:(NSString *)url parameters:(id)params success:(void (^)(id))success;

//DELETE
+ (void)DELETE:(NSString *)url parameters:(id)params success:(void (^)(id))success;

@end
