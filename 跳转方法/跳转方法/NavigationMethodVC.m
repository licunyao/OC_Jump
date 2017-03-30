//
//  NavigationMethodVC.m
//  跳转方法
//
//  Created by lcy on 17/3/30.
//  Copyright © 2017年 NanJing. All rights reserved.
//

#import "NavigationMethodVC.h"
#import "NavigationSecondVC.h"

@interface NavigationMethodVC ()

@end

@implementation NavigationMethodVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)ToSecondNaviVC:(id)sender {
    UIStoryboard * story  = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationSecondVC *secondVC = [story instantiateViewControllerWithIdentifier:@"secondvc"];
    if (self.navigationController) {
        [self.navigationController pushViewController:secondVC animated:YES];

    } else {
        [self presentViewController:secondVC animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
