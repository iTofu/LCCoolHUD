//
//  LCCoolHUD.m
//  LCCoolHUDDemo
//
//  Created by Leo on 15/11/17.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import "LCCoolHUD.h"
#import "JGProgressHUD.h"
#import "LCLoadingHUD.h"

@implementation LCCoolHUD

+ (void)showSuccess:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showSuccess:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showSuccess:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDSuccessIndicatorView alloc] init];
    
    HUD.square = YES;
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}

+ (void)showFailure:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showFailure:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showFailure:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDErrorIndicatorView alloc] init];
    
    HUD.square = YES;
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}

+ (void)showSuccessOblong:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showSuccessOblong:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showSuccessOblong:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDSuccessIndicatorView alloc] init];
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}

+ (void)showFailureOblong:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showFailureOblong:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showFailureOblong:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDErrorIndicatorView alloc] init];
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}

+ (void)showLoading:(NSString *)text {
    
    [LCLoadingHUD showLoading:text];
}

+ (void)showLoading:(NSString *)text inView:(id)view {
    
    [LCLoadingHUD showLoading:text inView:view];
}

+ (void)hideInKeyWindow {
    
    [LCLoadingHUD hideInKeyWindow];
}

+ (void)hideInView:(id)view {
    
    [LCLoadingHUD hideInView:view];
}

@end
