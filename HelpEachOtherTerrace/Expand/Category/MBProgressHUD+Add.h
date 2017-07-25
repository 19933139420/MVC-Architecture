//
//  MBProgressHUD+Add.h
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/15.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (Add)

+ (void)showError:(NSString *)error toView:(UIView *)view;
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view;
+(void)ShowMBPressageMessage:(NSString *)string withView:(UIView *)view;

@end
