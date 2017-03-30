


//
//  NavigationSecondVC.m
//  跳转方法
//
//  Created by lcy on 17/3/30.
//  Copyright © 2017年 NanJing. All rights reserved.
//

#import "NavigationSecondVC.h"

@interface NavigationSecondVC ()

@end

@implementation NavigationSecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)BackToRootVC:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
