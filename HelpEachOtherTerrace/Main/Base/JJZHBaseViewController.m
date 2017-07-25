//
//  JJZHBaseViewController.m
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/12.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "JJZHBaseViewController.h"

@interface JJZHBaseViewController ()

@end

@implementation JJZHBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = RGB(224,224,224);
    [self navigationConfig];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    DTLog(@"当前类:%@",NSStringFromClass([self class]));
}

#pragma mark - private method
- (void)navigationConfig {
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    if (self.navigationController.viewControllers.count > 1) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:  [UIImage imageNamed:@"fanhui"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnAction:)];
    }
}

//左边返回按钮
-(void)leftBtnAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
