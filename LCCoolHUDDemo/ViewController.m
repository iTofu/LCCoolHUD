//
//  ViewController.m
//  LCCoolHUDDemo
//
//  Created by Leo on 15/11/17.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import "ViewController.h"
#import "LCCoolHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"LCCoolHUDDemo";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStyleDone target:self action:@selector(leftBtnClicked)];
}

- (void)leftBtnClicked {
    
    NSLog(@"You click left bar button.");
}

- (IBAction)showSuccess {
    
    [LCCoolHUD showSuccess:@"登录成功" zoom:YES shadow:YES];
}

- (IBAction)showFailure {
    
    [LCCoolHUD showFailure:@"登录失败" zoom:NO shadow:NO];
}

- (IBAction)showSuccessLong {
    
    [LCCoolHUD showSuccessOblong:@"你可以点 LeftBtn！" inView:self.view zoom:YES shadow:NO];
}

- (IBAction)showFailureLong {
    
    [LCCoolHUD showFailureOblong:@"北京这个雾霾啊！" zoom:NO shadow:YES];
}

- (IBAction)showLoading {
    
    [LCCoolHUD showLoading:@"你点不了 LeftBtn"];
//
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(hideKeyWindowHUD) userInfo:nil repeats:NO];
    
//    [LCCoolHUD showLoadingWithJGHUD:@"Loading" zoom:YES shadow:YES];
}

- (IBAction)showLoadingInView {
    
    [LCCoolHUD showLoading:@"你可以点 LeftBtn" inView:self.view];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(hideInViewHUD) userInfo:nil repeats:NO];
    
//    [LCCoolHUD showLoadingWithJGHUD:@"Loading" inView:self.view zoom:NO shadow:NO];
}

- (void)hideKeyWindowHUD {
    
    [LCCoolHUD hideInKeyWindow];
}

- (void)hideInViewHUD {
    
    [LCCoolHUD hideInView:self.view];
}

- (void)hideWithJGHUD {
    
    [LCCoolHUD hideWithJGHUD];
}

@end
