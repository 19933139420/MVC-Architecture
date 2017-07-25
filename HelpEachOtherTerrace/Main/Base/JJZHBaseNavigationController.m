//
//  JJZHNavigationController.m
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/13.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "JJZHBaseNavigationController.h"

@interface JJZHBaseNavigationController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@end

@implementation JJZHBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self navigationConfig];
    
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = self;
        self.delegate = self;
    }
}

- (void)navigationConfig {
    self.navigationBar.translucent = NO;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont JJZHFont:32.f withFontName:nil],NSForegroundColorAttributeName:RGB(123, 123, 123)}];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        //第二级隐藏Tab
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (self.viewControllers.count <= 1 ) {
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
