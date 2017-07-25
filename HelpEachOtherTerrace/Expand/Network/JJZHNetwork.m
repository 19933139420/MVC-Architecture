//
//  JJZHNetwork.m
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/15.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "JJZHNetwork.h"

@implementation JJZHNetwork

//GET
+ (void)GET:(NSString *)url parameters:(id)params success:(void (^)(id))success {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [hud hide:YES];
        if (success) {
            if ([responseObject[@"status"] isEqualToString:@"0"]) {
                success(responseObject);
            } else {
                [MBProgressHUD showError:responseObject[@"message"] toView:nil];
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [hud hide:YES];
        DTLog(@"%@",error);
        [MBProgressHUD showError:@"网络异常" toView:nil];
    }];
}

//POST
+ (void)POST:(NSString *)url parameters:(id)params success:(void (^)(id))success {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            [hud hide:YES];
            if (success) {
                if ([responseObject[@"status"] isEqualToString:@"0"]) {
                    success(responseObject);
                } else {
                    [MBProgressHUD showError:responseObject[@"message"] toView:nil];
                }
            }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [hud hide:YES];
        DTLog(@"%@",error);
        [MBProgressHUD showError:@"网络异常" toView:nil];
    }];
    
}

//PUT
+ (void)PUT:(NSString *)url parameters:(id)params success:(void (^)(id))success {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager PUT:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [hud hide:YES];
        if (success) {
            if ([responseObject[@"status"] isEqualToString:@"0"]) {
                success(responseObject);
            } else {
                [MBProgressHUD showError:responseObject[@"message"] toView:nil];
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [hud hide:YES];
        DTLog(@"%@",error);
        [MBProgressHUD showError:@"网络异常" toView:nil];
    }];
}

//DELETE
+ (void)DELETE:(NSString *)url parameters:(id)params success:(void (^)(id))success {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager DELETE:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [hud hide:YES];
        if (success) {
            if ([responseObject[@"status"] isEqualToString:@"0"]) {
                success(responseObject);
            } else {
                [MBProgressHUD showError:responseObject[@"message"] toView:nil];
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [hud hide:YES];
        DTLog(@"%@",error);
        [MBProgressHUD showError:@"网络异常" toView:nil];
    }];
    
}


@end
