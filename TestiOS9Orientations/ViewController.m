//
//  ViewController.m
//  TestiOS9Orientations
//
//
//
//  http://koreyhinton.com/blog/lock-screen-rotation-in-ios8.html
//
//
//  Created by xy on 15/11/11.
//  Copyright © 2015年 wcsn. All rights reserved.
//

#import "ViewController.h"
#import "OrientationViewController.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    OrientationViewController *vc = [[OrientationViewController alloc] init];
    
    [self.view addSubview:vc.view];
    [self addChildViewController:vc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - 横竖屏切换方法调用



//- shouldAutorotate
//- supportedInterfaceOrientations
//- preferredInterfaceOrientationForPresentation
//+ attemptRotationToDeviceOrientation
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//	return UIInterfaceOrientationIsPortrait(interfaceOrientation);
//    return YES;
//
//}



//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation NS_AVAILABLE_IOS(6_0); {
//    return UIDeviceOrientationPortrait
//        | UIDeviceOrientationPortraitUpsideDown
//        ;
////        | UIDeviceOrientationLandscapeLeft
////        | UIDeviceOrientationLandscapeRight;
//}

// 1. 设置为Yes  允许旋转
- (BOOL)shouldAutorotate
{
    return YES;
}
// 2. 设置 支持的方向，  这里会在方向旋转时 回调
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    
    return UIInterfaceOrientationMaskPortrait;
}



@end
