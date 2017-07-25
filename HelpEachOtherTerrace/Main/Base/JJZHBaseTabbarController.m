//
//  JJZKBaseTabbarController.m
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/12.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "JJZHBaseTabbarController.h"

#import "JJZHBaseNavigationController.h"

#import "JJZHHomeViewController.h"
#import "JJZHPublicityViewController.h"
#import "JJZHSocialIntercorseViewController.h"
#import "JJZHMineViewController.h"

@interface JJZHBaseTabbarController ()

@end

@implementation JJZHBaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.translucent = NO;
    [self layoutViewControllers];
}

#pragma mark - private method
- (void)layoutViewControllers {
    //FIXME: 这里做tabbar的设置
    
    //首页
    JJZHHomeViewController *homeVC = [JJZHHomeViewController new];
    homeVC.tabBarItem.image = GetImage(@"fanhui");
    homeVC.tabBarItem.selectedImage = GetImage(@"fanhui");
    homeVC.tabBarItem.title = @"首页";
    JJZHBaseNavigationController *homeNC = [[JJZHBaseNavigationController alloc] initWithRootViewController:homeVC];
    
    //公示
    JJZHPublicityViewController *publicityVC = [JJZHPublicityViewController new];
    publicityVC.tabBarItem.image = GetImage(@"fanhui");
    publicityVC.tabBarItem.selectedImage = GetImage(@"fanhui");
    publicityVC.tabBarItem.title = @"公示";
    JJZHBaseNavigationController *publicityNC = [[JJZHBaseNavigationController alloc] initWithRootViewController:publicityVC];
    
    //社交
    JJZHSocialIntercorseViewController *socialIntercorseVC = [JJZHSocialIntercorseViewController new];
    socialIntercorseVC.tabBarItem.image = GetImage(@"fanhui");
    socialIntercorseVC.tabBarItem.selectedImage = GetImage(@"fanhui");
    socialIntercorseVC.tabBarItem.title = @"社交";
    JJZHBaseNavigationController *socialIntercorseNC = [[JJZHBaseNavigationController alloc] initWithRootViewController:socialIntercorseVC];
    
    //我的
    JJZHMineViewController *mineVC = [JJZHMineViewController new];
    mineVC.tabBarItem.image = GetImage(@"fanhui");
    mineVC.tabBarItem.selectedImage = GetImage(@"fanhui");
    mineVC.tabBarItem.title = @"我的";
    JJZHBaseNavigationController *mineNC = [[JJZHBaseNavigationController alloc] initWithRootViewController:mineVC];
    
    self.viewControllers = @[homeNC,publicityNC,socialIntercorseNC,mineNC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
