//
//  OrientationViewController.m
//  TestiOS9Orientations
//
//  Created by xy on 15/11/11.
//  Copyright © 2015年 wcsn. All rights reserved.
//

#import "OrientationViewController.h"

@interface OrientationViewController ()

@end

@implementation OrientationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    UILabel *l = [[UILabel alloc] init];
    l.frame = self.view.bounds;
    
    l.text = @"test";
    [self.view addSubview:l];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


// 1. 设置为Yes  允许旋转
- (BOOL)shouldAutorotate
{
    return YES;
}
#if __IPHONE_OS_VERSION_MAX_ALLOWED < __IPHONE_9_0
- (NSUInteger)supportedInterfaceOrientations
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
#endif
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
